import argparse
import sys
import os
import glob
import subprocess
import multiprocessing as mp

def mask(cmd):

  process = subprocess.Popen(cmd, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
  if process.wait() == 0:
    return process


def mask_dir(root_path, result_root_path, subpath, dic_path):
  path = os.path.join(root_path, subpath)
  result_path = os.path.join(result_root_path, subpath)
  dic_entry = os.path.join(dic_path, subpath)
  os.chdir(path)
  if not os.path.exists(result_path):
    os.makedirs(result_path)
  if not os.path.exists(dic_entry):
    os.makedirs(dic_entry)

  bmark_set = set(glob.glob("*.c")) - set(glob.glob("*_MASK.c"))
  bmark_set.update(set(glob.glob("*.cc")) - set(glob.glob("*_MASK.cc")))
  bmark_set.update(set(glob.glob("*.cpp")) - set(glob.glob("*_MASK.cpp")))

  if (len(bmark_set) == 0):
    return

  maskname = "_MASK"

  for bmark in bmark_set:
    if bmark.endswith(".c"):
      bmark_name = bmark[:-2]
      bmark_mask = bmark_name+maskname+bmark[-2:]
    elif bmark.endswith(".cc"):
      bmark_name = bmark[:-3]
      bmark_mask = bmark_name+maskname+bmark[-3:]
    elif bmark.endswith(".cpp"):
      bmark_name = bmark[:-4]
      bmark_mask = bmark_name+maskname+bmark[-4:]
    else:
      print("Wrong type of file.")
      continue
    
    cmd = "cp "+bmark+" "+bmark_mask+" ; clang-tidy "+bmark_mask+" -checks=readability-func-name-obfuscator,readability-var-name-obfuscator --fix"
    mask(cmd)
    os.system("mv nametomask.csv "+dic_entry+"/"+bmark_name+".csv")

  os.system("mv *_MASK* "+result_path)

def traverse_tree(path, config):
  start_path = os.path.join(config['root_path'], path)
  config['dir_list'].append(path)
  
  for x in os.listdir(start_path):
    d = os.path.join(path, x)
    if os.path.isdir(os.path.join(config['root_path'], d)):
      traverse_tree(d, config)

  return

def set_config():
  parser = argparse.ArgumentParser()

  parser.add_argument("-d", "--directory", type=str, help="Specify directory")
  parser.add_argument("-c", "--core_num", type=int, default=20, help="Number of cores")

  args = parser.parse_args()

  config = {}
  config['core_num'] = args.core_num
  #config['root_path'] = "/scratch/yc0769/xstack-benchmark/AnghaBench"
  #config['result_root_path'] = "/scratch/yc0769/xstack-benchmark/AnghaBench_masked"
  config['dic_path'] = "/scratch/yc0769/xstack-benchmark/dictionary"
  config['root_path'] = os.getcwd() 
  config['result_root_path'] = os.path.join(config['root_path'], "../AnghaBench_pre_masked") 
  config['dir_list'] = []
  if(args.directory):
    config['path'] = args.directory
  else:
    config['path'] = "."

  return config

if __name__ == "__main__":
  config = set_config()
  if not config:
    print("Bad configuration, please start over.")
    sys.exit(1)

  print("\n### Collecting directories... ###")
  
  traverse_tree(config['path'], config)

  print("\n### Start masking... ###")

  pool = mp.Pool(config['core_num'])
  results = [pool.apply(mask_dir, args=(config['root_path'], config['result_root_path'], path, config['dic_path'])) for path in config['dir_list']]
  pool.close()

  print("\n### Done ###")
