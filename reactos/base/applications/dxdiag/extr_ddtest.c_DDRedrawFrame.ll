; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_DDRedrawFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_DDRedrawFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@DD_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SM_CXSCREEN = common dso_local global i32 0, align 4
@DD_TEST_WIDTH = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@DD_TEST_HEIGHT = common dso_local global i32 0, align 4
@DD_TEST_STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DDRedrawFrame(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64 (%struct.TYPE_10__*, i32*)*, i64 (%struct.TYPE_10__*, i32*)** %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i64 %13(%struct.TYPE_10__* %14, i32* %4)
  %16 = load i64, i64* @DD_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %117

18:                                               ; preds = %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @SM_CXSCREEN, align 4
  %21 = call i32 @GetSystemMetrics(i32 %20)
  %22 = load i32, i32* @DD_TEST_WIDTH, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @SM_CXSCREEN, align 4
  %27 = call i32 @GetSystemMetrics(i32 %26)
  %28 = load i32, i32* @DD_TEST_WIDTH, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sdiv i32 %29, 2
  %31 = load i32, i32* @DD_TEST_WIDTH, align 4
  %32 = add nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SM_CYSCREEN, align 4
  %35 = call i32 @GetSystemMetrics(i32 %34)
  %36 = load i32, i32* @DD_TEST_HEIGHT, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @SM_CYSCREEN, align 4
  %41 = call i32 @GetSystemMetrics(i32 %40)
  %42 = load i32, i32* @DD_TEST_HEIGHT, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = load i32, i32* @DD_TEST_HEIGHT, align 4
  %46 = add nsw i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = call i32 @RGB(i32 0, i32 0, i32 0)
  %49 = call i64 @CreateSolidBrush(i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = call i32 @RGB(i32 255, i32 255, i32 255)
  %51 = call i64 @CreateSolidBrush(i32 %50)
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %72, %18
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @DD_TEST_STEP, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @FillRect(i32 %65, %struct.TYPE_9__* %5, i64 %66)
  br label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @FillRect(i32 %69, %struct.TYPE_9__* %5, i64 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %67, %64 ], [ %71, %68 ]
  %74 = load i64, i64* @DD_TEST_STEP, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %74
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i64, i64* @DD_TEST_STEP, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %83, %80
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load i64, i64* @DD_TEST_STEP, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %86
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load i64, i64* @DD_TEST_STEP, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %8, align 4
  br label %52

102:                                              ; preds = %52
  %103 = load i64, i64* %6, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @DeleteObject(i32 %104)
  %106 = load i64, i64* %7, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @DeleteObject(i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 %113(%struct.TYPE_10__* %114, i32 %115)
  br label %117

117:                                              ; preds = %102, %1
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
