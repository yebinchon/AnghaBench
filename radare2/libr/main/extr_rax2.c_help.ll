; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rax2.c_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rax2.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2290 x i8] c"  =[base]                      ;  rax2 =10 0x46 -> output in base 10\0A  int     ->  hex              ;  rax2 10\0A  hex     ->  int              ;  rax2 0xa\0A  -int    ->  hex              ;  rax2 -77\0A  -hex    ->  int              ;  rax2 0xffffffb3\0A  int     ->  bin              ;  rax2 b30\0A  int     ->  ternary          ;  rax2 t42\0A  bin     ->  int              ;  rax2 1010d\0A  ternary ->  int              ;  rax2 1010dt\0A  float   ->  hex              ;  rax2 3.33f\0A  hex     ->  float            ;  rax2 Fx40551ed8\0A  oct     ->  hex              ;  rax2 35o\0A  hex     ->  oct              ;  rax2 Ox12 (O is a letter)\0A  bin     ->  hex              ;  rax2 1100011b\0A  hex     ->  bin              ;  rax2 Bx63\0A  ternary ->  hex              ;  rax2 212t\0A  hex     ->  ternary          ;  rax2 Tx23\0A  raw     ->  hex              ;  rax2 -S < /binfile\0A  hex     ->  raw              ;  rax2 -s 414141\0A  -l                           ;  append newline to output (for -E/-D/-r/..\0A  -a      show ascii table     ;  rax2 -a\0A  -b      bin -> str           ;  rax2 -b 01000101 01110110\0A  -B      str -> bin           ;  rax2 -B hello\0A  -d      force integer        ;  rax2 -d 3 -> 3 instead of 0x3\0A  -e      swap endianness      ;  rax2 -e 0x33\0A  -D      base64 decode        ;\0A  -E      base64 encode        ;\0A  -f      floating point       ;  rax2 -f 6.3+2.1\0A  -F      stdin slurp code hex ;  rax2 -F < shellcode.[c/py/js]\0A  -h      help                 ;  rax2 -h\0A  -i      dump as C byte array ;  rax2 -i < bytes\0A  -k      keep base            ;  rax2 -k 33+3 -> 36\0A  -K      randomart            ;  rax2 -K 0x34 1020304050\0A  -L      bin -> hex(bignum)   ;  rax2 -L 111111111 # 0x1ff\0A  -n      binary number        ;  rax2 -n 0x1234 # 34120000\0A  -o      octalstr -> raw      ;  rax2 -o \\162 \\62 # r2\0A  -N      binary number        ;  rax2 -N 0x1234 # \\x34\\x12\\x00\\x00\0A  -r      r2 style output      ;  rax2 -r 0x1234\0A  -s      hexstr -> raw        ;  rax2 -s 43 4a 50\0A  -S      raw -> hexstr        ;  rax2 -S < /bin/ls > ls.hex\0A  -t      tstamp -> str        ;  rax2 -t 1234567890\0A  -x      hash string          ;  rax2 -x linux osx\0A  -u      units                ;  rax2 -u 389289238 # 317.0M\0A  -w      signed word          ;  rax2 -w 16 0xffff\0A  -v      version              ;  rax2 -v\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2290 x i8], [2290 x i8]* @.str, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
