; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c_show_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [90 x i8] c"Usage: radiff2 [-abBcCdjrspOxuUvV] [-A[A]] [-g sym] [-m graph_mode][-t %%] [file] [file]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1957 x i8] c"  -a [arch]  specify architecture plugin to use (x86, arm, ..)\0A  -A [-A]    run aaa or aaaa after loading each binary (see -C)\0A  -b [bits]  specify register size for arch (16 (thumb), 32, 64, ..)\0A  -B         output in binary diff (GDIFF)\0A  -c         count of changes\0A  -C         graphdiff code (columns: off-A, match-ratio, off-B) (see -A)\0A  -d         use delta diffing\0A  -D         show disasm instead of hexpairs\0A  -e [k=v]   set eval config var value for all RCore instances\0A  -g [sym|off1,off2]   graph diff of given symbol, or between two offsets\0A  -G [cmd]   run an r2 command on every RCore instance created\0A  -i         diff imports of target files (see -u, -U and -z)\0A  -j         output in json format\0A  -n         print bare addresses only (diff.bare=1)\0A  -m [aditsjJ]  choose the graph output mode\0A  -O         code diffing with opcode bytes only\0A  -p         use physical addressing (io.va=0)\0A  -q         quiet mode (disable colors, reduce output)\0A  -r         output in radare commands\0A  -s         compute edit distance (no substitution, Eugene W. Myers' O(ND) diff algorithm)\0A  -ss        compute Levenshtein edit distance (substitution is allowed, O(N^2))\0A  -S [name]  sort code diff (name, namelen, addr, size, type, dist) (only for -C or -g)\0A  -t [0-100] set threshold for code diff (default is 70%%)\0A  -x         show two column hexdump diffing\0A  -X         show two column hexII diffing\0A  -u         unified output (---+++)\0A  -U         unified output using system 'diff'\0A  -v         show version information\0A  -V         be verbose (current only for -s)\0A  -z         diff on extracted strings\0A  -Z         diff code comparing zignatures\0A\0AGraph Output formats: (-m [mode])\0A  <blank/a>  Ascii art\0A  s          r2 commands\0A  d          Graphviz dot\0A  g          Graph Modelling Language (gml)\0A  j          json\0A  J          json with disarm\0A  k          SDB key-value\0A  t          Tiny ascii art\0A  i          Interactive ascii art\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_help(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([1957 x i8], [1957 x i8]* @.str.1, i64 0, i64 0))
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
