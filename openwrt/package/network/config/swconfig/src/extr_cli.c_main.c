
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int port_vlan; } ;
struct switch_dev {int ports; int vlans; } ;
struct switch_attr {int type; } ;





 int CMD_NONE ;



 int SWITCH_TYPE_NOVAL ;
 int SWLIB_ATTR_GROUP_GLOBAL ;
 int SWLIB_ATTR_GROUP_PORT ;
 int SWLIB_ATTR_GROUP_VLAN ;
 int atoi (char*) ;
 int fprintf (int ,char*,...) ;
 int list_attributes (struct switch_dev*) ;
 int nl_perror (int,char*) ;
 int print_attr_val (struct switch_attr*,struct switch_val*) ;
 int print_usage () ;
 int putchar (char) ;
 int show_global (struct switch_dev*) ;
 int show_port (struct switch_dev*,int) ;
 int show_vlan (struct switch_dev*,int,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int swconfig_load_uci (struct switch_dev*,char*) ;
 struct switch_dev* swlib_connect (char*) ;
 int swlib_free_all (struct switch_dev*) ;
 int swlib_get_attr (struct switch_dev*,struct switch_attr*,struct switch_val*) ;
 int swlib_list () ;
 struct switch_attr* swlib_lookup_attr (struct switch_dev*,int ,char*) ;
 int swlib_print_portmap (struct switch_dev*,char*) ;
 int swlib_scan (struct switch_dev*) ;
 int swlib_set_attr_string (struct switch_dev*,struct switch_attr*,int,char*) ;

int main(int argc, char **argv)
{
 int retval = 0;
 struct switch_dev *dev;
 struct switch_attr *a;
 struct switch_val val;
 int i;

 int cmd = CMD_NONE;
 char *cdev = ((void*)0);
 int cport = -1;
 int cvlan = -1;
 char *ckey = ((void*)0);
 char *cvalue = ((void*)0);
 char *csegment = ((void*)0);

 if((argc == 2) && !strcmp(argv[1], "list")) {
  swlib_list();
  return 0;
 }

 if(argc < 4)
  print_usage();

 if(strcmp(argv[1], "dev"))
  print_usage();

 cdev = argv[2];

 for(i = 3; i < argc; i++)
 {
  char *arg = argv[i];
  if (cmd != CMD_NONE) {
   print_usage();
  } else if (!strcmp(arg, "port") && i+1 < argc) {
   cport = atoi(argv[++i]);
  } else if (!strcmp(arg, "vlan") && i+1 < argc) {
   cvlan = atoi(argv[++i]);
  } else if (!strcmp(arg, "help")) {
   cmd = 132;
  } else if (!strcmp(arg, "set") && i+1 < argc) {
   cmd = 129;
   ckey = argv[++i];
   if (i+1 < argc)
    cvalue = argv[++i];
  } else if (!strcmp(arg, "get") && i+1 < argc) {
   cmd = 133;
   ckey = argv[++i];
  } else if (!strcmp(arg, "load") && i+1 < argc) {
   if ((cport >= 0) || (cvlan >= 0))
    print_usage();
   cmd = 131;
   ckey = argv[++i];
  } else if (!strcmp(arg, "portmap")) {
   if (i + 1 < argc)
    csegment = argv[++i];
   cmd = 130;
  } else if (!strcmp(arg, "show")) {
   cmd = 128;
  } else {
   print_usage();
  }
 }

 if (cmd == CMD_NONE)
  print_usage();
 if (cport > -1 && cvlan > -1)
  print_usage();

 dev = swlib_connect(cdev);
 if (!dev) {
  fprintf(stderr, "Failed to connect to the switch. Use the \"list\" command to see which switches are available.\n");
  return 1;
 }

 swlib_scan(dev);

 if (cmd == 133 || cmd == 129) {
  if(cport > -1)
   a = swlib_lookup_attr(dev, SWLIB_ATTR_GROUP_PORT, ckey);
  else if(cvlan > -1)
   a = swlib_lookup_attr(dev, SWLIB_ATTR_GROUP_VLAN, ckey);
  else
   a = swlib_lookup_attr(dev, SWLIB_ATTR_GROUP_GLOBAL, ckey);

  if(!a)
  {
   fprintf(stderr, "Unknown attribute \"%s\"\n", ckey);
   retval = -1;
   goto out;
  }
 }

 switch(cmd)
 {
 case 129:
  if ((a->type != SWITCH_TYPE_NOVAL) &&
    (cvalue == ((void*)0)))
   print_usage();

  if(cvlan > -1)
   cport = cvlan;

  retval = swlib_set_attr_string(dev, a, cport, cvalue);
  if (retval < 0)
  {
   nl_perror(-retval, "Failed to set attribute");
   goto out;
  }
  break;
 case 133:
  if(cvlan > -1)
   val.port_vlan = cvlan;
  if(cport > -1)
   val.port_vlan = cport;
  retval = swlib_get_attr(dev, a, &val);
  if (retval < 0)
  {
   nl_perror(-retval, "Failed to get attribute");
   goto out;
  }
  print_attr_val(a, &val);
  putchar('\n');
  break;
 case 131:
  swconfig_load_uci(dev, ckey);
  break;
 case 132:
  list_attributes(dev);
  break;
 case 130:
  swlib_print_portmap(dev, csegment);
  break;
 case 128:
  if (cport >= 0 || cvlan >= 0) {
   if (cport >= 0)
    show_port(dev, cport);
   else
    show_vlan(dev, cvlan, 0);
  } else {
   show_global(dev);
   for (i=0; i < dev->ports; i++)
    show_port(dev, i);
   for (i=0; i < dev->vlans; i++)
    show_vlan(dev, i, 1);
  }
  break;
 }

out:
 swlib_free_all(dev);
 return retval;
}
