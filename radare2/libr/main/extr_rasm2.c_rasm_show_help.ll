; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rasm2.c_rasm_show_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rasm2.c_rasm_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [138 x i8] c"Usage: rasm2 [-ACdDehLBvw] [-a arch] [-b bits] [-o addr] [-s syntax]\0A             [-f file] [-F fil:ter] [-i skip] [-l len] 'code'|hex|-\0A\00", align 1
@.str.1 = private unnamed_addr constant [1481 x i8] c" -a [arch]    Set architecture to assemble/disassemble (see -L)\0A -A           Show Analysis information from given hexpairs\0A -b [bits]    Set cpu register size (8, 16, 32, 64) (RASM2_BITS)\0A -B           Binary input/output (-l is mandatory for binary input)\0A -c [cpu]     Select specific CPU (depends on arch)\0A -C           Output in C format\0A -d, -D       Disassemble from hexpair bytes (-D show hexpairs)\0A -e           Use big endian instead of little endian\0A -E           Display ESIL expression (same input as in -d)\0A -f [file]    Read data from file\0A -F [in:out]  Specify input and/or output filters (att2intel, x86.pseudo, ...)\0A -h, -hh      Show this help, -hh for long\0A -i [len]     ignore/skip N bytes of the input buffer\0A -j           output in json format\0A -k [kernel]  Select operating system (linux, windows, darwin, ..)\0A -l [len]     Input/Output length\0A -L           List Asm plugins: (a=asm, d=disasm, A=analyze, e=ESIL)\0A -o,-@ [addr] Set start address for code (default 0)\0A -O [file]    Output file name (rasm2 -Bf a.asm -O a)\0A -p           Run SPP over input for assembly\0A -q           quiet mode\0A -r           output in radare commands\0A -s [syntax]  Select syntax (intel, att)\0A -v           Show version information\0A -x           Use hex dwords instead of hex pairs when assembling.\0A -w           What's this instruction for? describe opcode\0A If '-l' value is greater than output length, output is padded with nops\0A If the last argument is '-' reads from stdin\0A\00", align 1
@.str.2 = private unnamed_addr constant [214 x i8] c"Environment:\0A RASM2_NOPLUGINS  do not load shared plugins (speedup loading)\0A RASM2_ARCH       same as rasm2 -a\0A RASM2_BITS       same as rasm2 -b\0A R_DEBUG          if defined, show error messages and crash signal\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Supported Assembler directives:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rasm_show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rasm_show_help(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @printf(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 @printf(i8* getelementptr inbounds ([1481 x i8], [1481 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.2, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (...) @r_asm_list_directives()
  br label %19

19:                                               ; preds = %16, %13
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @r_asm_list_directives(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
