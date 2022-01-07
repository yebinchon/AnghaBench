; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_InitGeneralPage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_InitGeneralPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }

@IDC_SERV_NAME = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@IDC_DISP_NAME = common dso_local global i32 0, align 4
@IDC_DESCRIPTION = common dso_local global i32 0, align 4
@ProcessHeap = common dso_local global i32 0, align 4
@IDC_EXEPATH = common dso_local global i32 0, align 4
@IDC_EDIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @InitGeneralPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitGeneralPage(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IDC_SERV_NAME, align 4
  %10 = load i32, i32* @WM_SETTEXT, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @SendDlgItemMessageW(i32 %8, i32 %9, i32 %10, i32 0, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IDC_DISP_NAME, align 4
  %20 = load i32, i32* @WM_SETTEXT, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @SendDlgItemMessageW(i32 %18, i32 %19, i32 %20, i32 0, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.TYPE_14__* @GetServiceDescription(i64 %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %7, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IDC_DESCRIPTION, align 4
  %38 = load i32, i32* @WM_SETTEXT, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = ptrtoint %struct.TYPE_14__* %39 to i32
  %41 = call i32 @SendDlgItemMessageW(i32 %36, i32 %37, i32 %38, i32 0, i32 %40)
  %42 = load i32, i32* @ProcessHeap, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, %struct.TYPE_14__* %43)
  br label %45

45:                                               ; preds = %35, %2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.TYPE_14__* @GetServiceConfig(i64 %50)
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %6, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @IDC_EXEPATH, align 4
  %57 = load i32, i32* @WM_SETTEXT, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SendDlgItemMessageW(i32 %55, i32 %56, i32 %57, i32 0, i32 %61)
  %63 = load i32, i32* @ProcessHeap, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = call i32 @HeapFree(i32 %63, i32 0, %struct.TYPE_14__* %64)
  br label %66

66:                                               ; preds = %54, %45
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @SetStartupType(i64 %71, i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @SetServiceStatusText(%struct.TYPE_13__* %74, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %66
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @IDC_EDIT, align 4
  %86 = call i32 @GetDlgItem(i32 %84, i32 %85)
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @EnableWindow(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %66
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @GetServiceDescription(i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @GetServiceConfig(i64) #1

declare dso_local i32 @SetStartupType(i64, i32) #1

declare dso_local i32 @SetServiceStatusText(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
