; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_xtotals.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_xtotals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"\0ASlabs sorted by size\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"--------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0ASlabs sorted by loss\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\0ASlabs sorted by number of partial slabs\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"---------------------------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xtotals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtotals() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32 (...) @totals()
  %4 = call i32 (...) @link_slabs()
  %5 = call i32 (...) @rename_slabs()
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @_xtotals(i8* %6, i8* %7, i32 0, i32 1, i32 0)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @_xtotals(i8* %9, i8* %10, i32 1, i32 0, i32 0)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @_xtotals(i8* %12, i8* %13, i32 0, i32 0, i32 1)
  %15 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @totals(...) #1

declare dso_local i32 @link_slabs(...) #1

declare dso_local i32 @rename_slabs(...) #1

declare dso_local i32 @_xtotals(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
