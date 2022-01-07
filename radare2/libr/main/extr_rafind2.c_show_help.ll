; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rafind2.c_show_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rafind2.c_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [95 x i8] c"Usage: %s [-mXnzZhqv] [-a align] [-b sz] [-f/t from/to] [-[e|s|S] str] [-x hex] -|file|dir ..\0A\00", align 1
@.str.1 = private unnamed_addr constant [1031 x i8] c" -a [align] only accept aligned hits\0A -b [size]  set block size\0A -e [regex] search for regex matches (can be used multiple times)\0A -f [from]  start searching from address 'from'\0A -h         show this help\0A -i         identify filetype (r2 -nqcpm file)\0A -j         output in JSON\0A -m         magic search, file-type carver\0A -M [str]   set a binary mask to be applied on keywords\0A -n         do not stop on read errors\0A -r         print using radare commands\0A -s [str]   search for a specific string (can be used multiple times)\0A -S [str]   search for a specific wide string (can be used multiple times). Assumes str is UTF-8.\0A -t [to]    stop search at address 'to'\0A -q         quiet - do not show headings (filenames) above matching contents (default for searching a single file)\0A -v         print version and exit\0A -x [hex]   search for hexpair string (909090) (can be used multiple times)\0A -X         show hexdump of search results\0A -z         search for zero-terminated strings\0A -Z         show string found on each search hit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_help(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1031 x i8], [1031 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
