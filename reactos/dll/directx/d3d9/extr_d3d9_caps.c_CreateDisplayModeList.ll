; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_caps.c_CreateDisplayModeList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_caps.c_CreateDisplayModeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@D3DFMT_X8R8G8B8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateDisplayModeList(i32 %0, %struct.TYPE_6__* %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %15

15:                                               ; preds = %83, %49, %33, %5
  %16 = load i64, i64* @TRUE, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @EnumDisplaySettingsA(i32 %17, i64 %18, %struct.TYPE_5__* %11)
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %86

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 15
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 16
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %12, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %12, align 8
  br label %15

36:                                               ; preds = %29, %25, %21
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 15
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %36
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* null, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %12, align 8
  br label %15

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %14, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @D3DFMT_X8R8G8B8, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = icmp ne %struct.TYPE_6__* null, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %86

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 1
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %7, align 8
  br label %83

83:                                               ; preds = %65, %56
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %15

86:                                               ; preds = %64, %15
  %87 = load i64, i64* %13, align 8
  %88 = load i64*, i64** %8, align 8
  store i64 %87, i64* %88, align 8
  ret void
}

declare dso_local i64 @EnumDisplaySettingsA(i32, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
