; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PrepareColorGraph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PrepareColorGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@IDC_WAIT = common dso_local global i64 0, align 8
@XSTEPS = common dso_local global i32 0, align 4
@YSTEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @CC_PrepareColorGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_PrepareColorGraph(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* @IDC_WAIT, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @LoadCursorW(i32 0, i32 %21)
  %23 = call i32 @SetCursor(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @GetClientRect(i32 %24, %struct.TYPE_6__* %13)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @GetDC(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @CreateCompatibleDC(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CreateCompatibleBitmap(i32 %32, i32 %34, i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SelectObject(i32 %42, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XSTEPS, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @YSTEPS, align 4
  %54 = sdiv i32 %52, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @XSTEPS, align 4
  %57 = sdiv i32 239, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @YSTEPS, align 4
  %59 = sdiv i32 240, %58
  store i32 %59, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %108, %1
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 239, %63
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %68, %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %100, %66
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 240, %77
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @CC_HSLtoRGB(i32 %86, i32 %87, i32 120)
  %89 = call i32 @CreateSolidBrush(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @FillRect(i32 %92, %struct.TYPE_6__* %12, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @DeleteObject(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %75

104:                                              ; preds = %75
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %61

112:                                              ; preds = %61
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @ReleaseDC(i32 %113, i32 %114)
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @SetCursor(i32 %116)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SetCursor(i32) #1

declare dso_local i32 @LoadCursorW(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @CC_HSLtoRGB(i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
