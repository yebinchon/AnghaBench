; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_ragg2.c_usage.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_ragg2.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [225 x i8] c"Usage: ragg2 [-FOLsrxhvz] [-a arch] [-b bits] [-k os] [-o file] [-I path]\0A             [-i sc] [-e enc] [-B hex] [-c k=v] [-C file] [-p pad] [-q off]\0A             [-S string] [-f fmt] [-nN dword] [-dDw off:hex] file|f.asm|-\0A\00", align 1
@.str.1 = private unnamed_addr constant [1558 x i8] c" -a [arch]       select architecture (x86, mips, arm)\0A -b [bits]       register size (32, 64, ..)\0A -B [hexpairs]   append some hexpair bytes\0A -c [k=v]        set configuration options\0A -C [file]       append contents of file\0A -d [off:dword]  patch dword (4 bytes) at given offset\0A -D [off:qword]  patch qword (8 bytes) at given offset\0A -e [encoder]    use specific encoder. see -L\0A -f [format]     output format (raw, c, pe, elf, mach0, python, javascript)\0A -F              output native format (osx=mach0, linux=elf, ..)\0A -h              show this help\0A -i [shellcode]  include shellcode plugin, uses options. see -L\0A -I [path]       add include path\0A -k [os]         operating system's kernel (linux,bsd,osx,w32)\0A -L              list all plugins (shellcodes and encoders)\0A -n [dword]      append 32bit number (4 bytes)\0A -N [dword]      append 64bit number (8 bytes)\0A -o [file]       output file\0A -O              use default output file (filename without extension or a.out)\0A -p [padding]    add padding after compilation (padding=n10s32)\0A                 ntas : begin nop, trap, 'a', sequence\0A                 NTAS : same as above, but at the end\0A -P [size]       prepend debruijn pattern\0A -q [fragment]   debruijn pattern offset\0A -r              show raw bytes instead of hexpairs\0A -s              show assembler\0A -S [string]     append a string\0A -v              show version\0A -w [off:hex]    patch hexpairs at given offset\0A -x              execute\0A -X [hexpairs]   execute rop chain, using the stack provided\0A -z              output in C string syntax\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([1558 x i8], [1558 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  ret i32 1
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
