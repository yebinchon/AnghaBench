; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_SwitchToFullSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_SwitchToFullSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@IDC_COLOR_DEFINE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_H = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_B = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@IDC_COLOR_HL = common dso_local global i32 0, align 4
@IDC_COLOR_BL = common dso_local global i32 0, align 4
@IDC_COLOR_RES = common dso_local global i32 0, align 4
@IDC_COLOR_ADD = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@IDC_COLOR_LUMBAR = common dso_local global i32 0, align 4
@IDC_COLOR_RESULT = common dso_local global i32 0, align 4
@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @CC_SwitchToFullSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_SwitchToFullSize(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IDC_COLOR_DEFINE, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @EnableWindow(i32 %10, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i32 @CC_PrepareColorGraph(%struct.TYPE_9__* %13)
  %15 = load i32, i32* @IDC_COLOR_EDIT_H, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IDC_COLOR_EDIT_B, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GetDlgItem(i32 %23, i32 %24)
  %26 = load i32, i32* @SW_SHOW, align 4
  %27 = call i32 @ShowWindow(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* @IDC_COLOR_HL, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %45, %31
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IDC_COLOR_BL, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @GetDlgItem(i32 %40, i32 %41)
  %43 = load i32, i32* @SW_SHOW, align 4
  %44 = call i32 @ShowWindow(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IDC_COLOR_RES, align 4
  %53 = call i32 @GetDlgItem(i32 %51, i32 %52)
  %54 = load i32, i32* @SW_SHOW, align 4
  %55 = call i32 @ShowWindow(i32 %53, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IDC_COLOR_ADD, align 4
  %60 = call i32 @GetDlgItem(i32 %58, i32 %59)
  %61 = load i32, i32* @SW_SHOW, align 4
  %62 = call i32 @ShowWindow(i32 %60, i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GetDlgItem(i32 %65, i32 1090)
  %67 = load i32, i32* @SW_SHOW, align 4
  %68 = call i32 @ShowWindow(i32 %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %48
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load i32, i32* @SWP_NOMOVE, align 4
  %90 = load i32, i32* @SWP_NOZORDER, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @SetWindowPos(i32 %74, i32 0, i32 0, i32 0, i64 %81, i64 %88, i32 %91)
  br label %93

93:                                               ; preds = %71, %48
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IDC_COLOR_LUMBAR, align 4
  %98 = call i32 @GetDlgItem(i32 %96, i32 %97)
  %99 = load i32, i32* @SW_SHOW, align 4
  %100 = call i32 @ShowWindow(i32 %98, i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IDC_COLOR_RESULT, align 4
  %105 = call i32 @GetDlgItem(i32 %103, i32 %104)
  %106 = load i32, i32* @SW_SHOW, align 4
  %107 = call i32 @ShowWindow(i32 %105, i32 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = call i32 @CC_EditSetRGB(%struct.TYPE_9__* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = call i32 @CC_EditSetHSL(%struct.TYPE_9__* %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %116 = call i32 @GetDlgItem(i32 %114, i32 %115)
  %117 = load i32, i32* @SW_SHOW, align 4
  %118 = call i32 @ShowWindow(i32 %116, i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %123 = call i32 @GetDlgItem(i32 %121, i32 %122)
  %124 = call i32 @UpdateWindow(i32 %123)
  ret void
}

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @CC_PrepareColorGraph(%struct.TYPE_9__*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @CC_EditSetRGB(%struct.TYPE_9__*) #1

declare dso_local i32 @CC_EditSetHSL(%struct.TYPE_9__*) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
