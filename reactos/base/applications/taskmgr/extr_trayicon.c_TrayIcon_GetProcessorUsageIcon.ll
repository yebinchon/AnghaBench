; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_trayicon.c_TrayIcon_GetProcessorUsageIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_trayicon.c_TrayIcon_GetProcessorUsageIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@hInst = common dso_local global i32 0, align 4
@IDB_TRAYICON = common dso_local global i32 0, align 4
@IDB_TRAYMASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TrayIcon_GetProcessorUsageIcon() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %10, align 8
  %12 = call i32* @GetDC(i32* null)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %76

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @CreateCompatibleDC(i32* %17)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %76

22:                                               ; preds = %16
  %23 = load i32, i32* @hInst, align 4
  %24 = load i32, i32* @IDB_TRAYICON, align 4
  %25 = call i32 @MAKEINTRESOURCEW(i32 %24)
  %26 = call i32* @LoadBitmapW(i32 %23, i32 %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* @hInst, align 4
  %28 = load i32, i32* @IDB_TRAYMASK, align 4
  %29 = call i32 @MAKEINTRESOURCEW(i32 %28)
  %30 = call i32* @LoadBitmapW(i32 %27, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %22
  br label %76

37:                                               ; preds = %33
  %38 = call i32 @RGB(i32 0, i32 255, i32 0)
  %39 = call i32* @CreateSolidBrush(i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %76

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @SelectObject(i32* %44, i32* %45)
  store i32* %46, i32** %5, align 8
  %47 = call i32 (...) @PerfDataGetProcessorUsage()
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %49, 10
  %51 = add nsw i32 %48, %50
  %52 = sdiv i32 %51, 11
  store i32 %52, i32* %9, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 3, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 12, %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 13, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 13, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @FillRect(i32* %62, %struct.TYPE_5__* %11, i32* %63)
  br label %65

65:                                               ; preds = %61, %43
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32* @SelectObject(i32* %66, i32* %67)
  store i32* %68, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %69 = load i32, i32* @TRUE, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32* %71, i32** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32* %73, i32** %74, align 8
  %75 = call i32* @CreateIconIndirect(%struct.TYPE_6__* %7)
  store i32* %75, i32** %1, align 8
  br label %76

76:                                               ; preds = %65, %42, %36, %21, %15
  %77 = load i32*, i32** %2, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @ReleaseDC(i32* null, i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** %3, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @DeleteDC(i32* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @DeleteObject(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** %4, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @DeleteObject(i32* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @DeleteObject(i32* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32*, i32** %1, align 8
  ret i32* %107
}

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32* @LoadBitmapW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32* @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32 @PerfDataGetProcessorUsage(...) #1

declare dso_local i32 @FillRect(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @CreateIconIndirect(%struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
