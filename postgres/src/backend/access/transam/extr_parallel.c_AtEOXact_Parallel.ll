; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_parallel.c_AtEOXact_Parallel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_parallel.c_AtEOXact_Parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcxt_list = common dso_local global i32 0, align 4
@ParallelContext = common dso_local global i32 0, align 4
@pcxt = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"leaked parallel context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_Parallel(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %19, %1
  %4 = call i32 @dlist_is_empty(i32* @pcxt_list)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load i32, i32* @ParallelContext, align 4
  %9 = load i32, i32* @pcxt, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* @ParallelContext, align 4
  %12 = load i32, i32* @node, align 4
  %13 = call i32 @dlist_head_element(i32 %11, i32 %12, i32* @pcxt_list)
  store i32 %13, i32* @pcxt, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @WARNING, align 4
  %18 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %7
  %20 = load i32, i32* @pcxt, align 4
  %21 = call i32 @DestroyParallelContext(i32 %20)
  br label %3

22:                                               ; preds = %3
  ret void
}

declare dso_local i32 @dlist_is_empty(i32*) #1

declare dso_local i32 @dlist_head_element(i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @DestroyParallelContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
