; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintTriangle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintTriangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@IDC_COLOR_LUMBAR = common dso_local global i32 0, align 4
@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@MAXVERT = common dso_local global i64 0, align 8
@GCLP_HBRBACKGROUND = common dso_local global i32 0, align 4
@COLOR_BTNFACE = common dso_local global i32 0, align 4
@BLACK_BRUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CC_PaintTriangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_PaintTriangle(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x %struct.TYPE_11__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %12 = call i32 (...) @GetDialogBaseUnits()
  %13 = call i32 @LOWORD(i32 %12)
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IDC_COLOR_LUMBAR, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %24 = call i32 @GetDlgItem(i32 %22, i32 %23)
  %25 = call i64 @IsWindowVisible(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %156

27:                                               ; preds = %1
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @GetClientRect(i32 %28, %struct.TYPE_10__* %9)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @GetDC(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 16
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %46 = call i32 @ClientToScreen(i32 %44, %struct.TYPE_11__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %51 = call i32 @ScreenToClient(i32 %49, %struct.TYPE_11__* %50)
  %52 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 16
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = mul nsw i64 %56, %59
  store i64 %60, i64* %4, align 8
  %61 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @MAXVERT, align 8
  %71 = sdiv i64 %69, %70
  %72 = sub nsw i64 %68, %71
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 16
  %76 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 16
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  %81 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 16
  %83 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 16
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %85, %86
  %88 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 16
  %90 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i64 %95, i64* %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @GCLP_HBRBACKGROUND, align 4
  %102 = call i64 @GetClassLongPtrW(i32 %100, i32 %101)
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %27
  %106 = load i32, i32* @COLOR_BTNFACE, align 4
  %107 = call i64 @GetSysColorBrush(i32 %106)
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %105, %27
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @FillRect(i32 %109, %struct.TYPE_13__* %111, i64 %112)
  %114 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  store i64 %116, i64* %119, align 8
  %120 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  store i64 %123, i64* %126, align 8
  %127 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 16
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 16
  %137 = add nsw i32 %136, 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @BLACK_BRUSH, align 4
  %143 = call i64 @GetStockObject(i32 %142)
  %144 = call i64 @SelectObject(i32 %141, i64 %143)
  store i64 %144, i64* %10, align 8
  %145 = load i32, i32* %3, align 4
  %146 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %147 = call i32 @Polygon(i32 %145, %struct.TYPE_11__* %146, i32 3)
  %148 = load i32, i32* %3, align 4
  %149 = load i64, i64* %10, align 8
  %150 = call i64 @SelectObject(i32 %148, i64 %149)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @ReleaseDC(i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %108, %1
  ret void
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @GetDialogBaseUnits(...) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @GetClassLongPtrW(i32, i32) #1

declare dso_local i64 @GetSysColorBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @Polygon(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
