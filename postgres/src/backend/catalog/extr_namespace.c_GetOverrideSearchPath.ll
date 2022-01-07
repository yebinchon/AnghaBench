; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_GetOverrideSearchPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_GetOverrideSearchPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@activeSearchPath = common dso_local global i32 0, align 4
@activeCreationNamespace = common dso_local global i64 0, align 8
@myTempNamespace = common dso_local global i64 0, align 8
@PG_CATALOG_NAMESPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @GetOverrideSearchPath(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @recomputeNamespacePath()
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @MemoryContextSwitchTo(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = call i64 @palloc0(i32 16)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  %11 = load i32, i32* @activeSearchPath, align 4
  %12 = call i32* @list_copy(i32 %11)
  store i32* %12, i32** %4, align 8
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @linitial_oid(i32* %17)
  %19 = load i64, i64* @activeCreationNamespace, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %43

23:                                               ; preds = %21
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @linitial_oid(i32* %24)
  %26 = load i64, i64* @myTempNamespace, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %40

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @linitial_oid(i32* %32)
  %34 = load i64, i64* @PG_CATALOG_NAMESPACE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @list_delete_first(i32* %41)
  store i32* %42, i32** %4, align 8
  br label %13

43:                                               ; preds = %21
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @MemoryContextSwitchTo(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %49
}

declare dso_local i32 @recomputeNamespacePath(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @list_copy(i32) #1

declare dso_local i64 @linitial_oid(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @list_delete_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
