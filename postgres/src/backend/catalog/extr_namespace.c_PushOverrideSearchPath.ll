; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_PushOverrideSearchPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_PushOverrideSearchPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@TopMemoryContext = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@InvalidOid = common dso_local global i32 0, align 4
@PG_CATALOG_NAMESPACE = common dso_local global i32 0, align 4
@myTempNamespace = common dso_local global i32 0, align 4
@overrideStack = common dso_local global i32 0, align 4
@activeSearchPath = common dso_local global i32* null, align 8
@activeCreationNamespace = common dso_local global i32 0, align 4
@activeTempCreationPending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PushOverrideSearchPath(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @TopMemoryContext, align 4
  %8 = call i32 @MemoryContextSwitchTo(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @list_copy(i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** @NIL, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @InvalidOid, align 4
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @linitial_oid(i32* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @PG_CATALOG_NAMESPACE, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @lcons_oid(i32 %27, i32* %28)
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @myTempNamespace, align 4
  %37 = call i64 @OidIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @myTempNamespace, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @lcons_oid(i32 %40, i32* %41)
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %39, %35, %30
  %44 = call i64 @palloc(i32 24)
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 (...) @GetCurrentTransactionNestLevel()
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = load i32, i32* @overrideStack, align 4
  %57 = call i32 @lcons(%struct.TYPE_5__* %55, i32 %56)
  store i32 %57, i32* @overrideStack, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** @activeSearchPath, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* @activeCreationNamespace, align 4
  store i32 0, i32* @activeTempCreationPending, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @MemoryContextSwitchTo(i32 %64)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @list_copy(i32) #1

declare dso_local i32 @linitial_oid(i32*) #1

declare dso_local i32* @lcons_oid(i32, i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i32 @lcons(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
