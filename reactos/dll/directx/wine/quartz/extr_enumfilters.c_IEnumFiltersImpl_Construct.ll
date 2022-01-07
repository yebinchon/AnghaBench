; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_enumfilters.c_IEnumFiltersImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_enumfilters.c_IEnumFiltersImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32*, i32***, i32*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@IEnumFiltersImpl_Vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IEnumFiltersImpl_Construct(i32* %0, i32*** %1, i32* %2, %struct.TYPE_7__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32*** %1, i32**** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %9, align 8
  %13 = call %struct.TYPE_6__* @CoTaskMemAlloc(i32 56)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load i32***, i32**** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32*** %14, i32* %15, %struct.TYPE_7__** %16)
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %22, i64* %5, align 8
  br label %58

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32* @IEnumFiltersImpl_Vtbl, i32** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load i32***, i32**** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32*** %34, i32**** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @IGraphVersion_AddRef(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @IGraphVersion_QueryVersion(i32* %42, i32* %12)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %23
  %48 = load i32, i32* %12, align 4
  br label %50

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %56, align 8
  %57 = load i64, i64* @S_OK, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %50, %21
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local %struct.TYPE_6__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @TRACE(i8*, i32***, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @IGraphVersion_AddRef(i32*) #1

declare dso_local i64 @IGraphVersion_QueryVersion(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
