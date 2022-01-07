; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_fetch_search_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_fetch_search_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@activeTempCreationPending = common dso_local global i64 0, align 8
@activeSearchPath = common dso_local global i32 0, align 4
@activeCreationNamespace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fetch_search_path(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @recomputeNamespacePath()
  %5 = load i64, i64* @activeTempCreationPending, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i32 @AccessTempTableNamespace(i32 1)
  %9 = call i32 (...) @recomputeNamespacePath()
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @activeSearchPath, align 4
  %12 = call i32* @list_copy(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @linitial_oid(i32* %20)
  %22 = load i64, i64* @activeCreationNamespace, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @list_delete_first(i32* %27)
  store i32* %28, i32** %3, align 8
  br label %16

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32 @recomputeNamespacePath(...) #1

declare dso_local i32 @AccessTempTableNamespace(i32) #1

declare dso_local i32* @list_copy(i32) #1

declare dso_local i64 @linitial_oid(i32*) #1

declare dso_local i32* @list_delete_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
