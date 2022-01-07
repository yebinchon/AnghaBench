; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_memallocator.c_StdMediaSample2_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_memallocator.c_StdMediaSample2_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__, i32*, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32*, i64, i64 }
%struct.TYPE_6__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@StdMediaSample2_VTable = common dso_local global i32 0, align 4
@INVALID_MEDIA_TIME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, %struct.TYPE_7__**)* @StdMediaSample2_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StdMediaSample2_Construct(i32* %0, i64 %1, i32* %2, %struct.TYPE_7__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %16, 0
  br label %18

18:                                               ; preds = %15, %12, %4
  %19 = phi i1 [ false, %12 ], [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call %struct.TYPE_7__* @CoTaskMemAlloc(i32 72)
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %23, align 8
  %24 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %5, align 4
  br label %69

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32* @StdMediaSample2_VTable, i32** %31, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = call i32 @ZeroMemory(%struct.TYPE_8__* %37, i32 32)
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i32* %39, i32** %42, align 8
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i64 %47, i64* %51, align 8
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i64 %47, i64* %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32* %56, i32** %60, align 8
  %61 = load i32, i32* @INVALID_MEDIA_TIME, align 4
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %27, %25
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
