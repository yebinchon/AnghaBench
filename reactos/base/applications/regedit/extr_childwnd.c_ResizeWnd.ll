; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_ResizeWnd.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_ResizeWnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SM_CYEDGE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@hStatusBar = common dso_local global i32* null, align 8
@g_pChildWnd = common dso_local global %struct.TYPE_6__* null, align 8
@SPLIT_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResizeWnd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = call i64 @BeginDeferWindowPos(i32 4)
  store i64 %13, i64* %5, align 8
  store i32 44, i32* %9, align 4
  store i32 22, i32* %10, align 4
  %14 = load i32, i32* @SM_CYEDGE, align 4
  %15 = call i32 @GetSystemMetrics(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @SWP_NOZORDER, align 4
  %17 = load i32, i32* @SWP_NOACTIVATE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SetRect(%struct.TYPE_5__* %6, i32 0, i32 0, i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  %22 = load i32*, i32** @hStatusBar, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32*, i32** @hStatusBar, align 8
  %26 = call i32 @GetWindowRect(i32* %25, %struct.TYPE_5__* %7)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @GetWindowRect(i32* %35, %struct.TYPE_5__* %8)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SPLIT_WIDTH, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %3, align 4
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %32
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %55, %57
  %59 = sub nsw i32 %58, 44
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @DeferWindowPos(i64 %46, i32* %49, i32* null, i32 %51, i32 %53, i32 %59, i32 22, i32 %60)
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %45, %32
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 44
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @DeferWindowPos(i64 %66, i32* %69, i32* null, i32 %72, i32 %74, i32 44, i32 22, i32 %75)
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %65, %62
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 22
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %89, %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SPLIT_WIDTH, align 4
  %96 = sdiv i32 %95, 2
  %97 = sub nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %97, %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %102, %104
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = mul nsw i32 2, %108
  %110 = sub nsw i32 %107, %109
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @DeferWindowPos(i64 %81, i32* %84, i32* null, i32 %86, i32 %91, i32 %100, i32 %110, i32 %111)
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %80, %77
  %114 = load i64, i64* %5, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %113
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_pChildWnd, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %122, %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 22
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %127, %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %3, align 4
  %133 = sub nsw i32 %131, %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %135, %137
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 2, %141
  %143 = sub nsw i32 %140, %142
  %144 = load i32, i32* %12, align 4
  %145 = call i64 @DeferWindowPos(i64 %117, i32* %120, i32* null, i32 %124, i32 %129, i32 %133, i32 %143, i32 %144)
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %116, %113
  %147 = load i64, i64* %5, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @EndDeferWindowPos(i64 %150)
  br label %152

152:                                              ; preds = %149, %146
  ret void
}

declare dso_local i64 @BeginDeferWindowPos(i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @DeferWindowPos(i64, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EndDeferWindowPos(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
