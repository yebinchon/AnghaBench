; ModuleID = '/home/carl/AnghaBench/radare2/libr/search/extr_old_xrefs.c_show_usage.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/search/extr_old_xrefs.c_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [718 x i8] c"Usage: xrefs [-options] [file] [offset]\0A -v             Verbose mode\0A -V             Show version\0A -q             quite mode\0A -h             Show this helpy message\0A -e             Use big endian for offsets to search\0A -a [arch]      Architecture profile (fmi: help) (autodetects ELF and PE hdrs)\0A -b [address]   base address (0x8048000 f.ex)\0A -f [from]      start scanning from this offset (default 0)\0A -t [to]        limit address (default 99999999)\0A -r [range]     Range in bytes of allowed relative offsets\0A -s [size]      Size of offset (4 for intel, 3 for ppc, ...)\0A -d [offset]    Sets a negative delta offset as padding (default 1)\0A -X [offset]    Print out debugging information of a certain relative offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @show_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([718 x i8], [718 x i8]* @.str, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
