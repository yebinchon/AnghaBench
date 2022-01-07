; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SetButtonStates.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SetButtonStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@IDC_START = common dso_local global i64 0, align 8
@IDC_RESUME = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@SERVICE_DISABLED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_STOP = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@IDC_STOP = common dso_local global i64 0, align 8
@SERVICE_ACCEPT_PAUSE_CONTINUE = common dso_local global i64 0, align 8
@IDC_PAUSE = common dso_local global i64 0, align 8
@IDC_START_PARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @SetButtonStates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetButtonStates(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* @IDC_START, align 8
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %35, %2
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @IDC_RESUME, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @GetDlgItem(i32 %29, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @EnableWindow(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_11__* @GetServiceConfig(i32 %43)
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @SERVICE_STOPPED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %38
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SERVICE_DISABLED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = load i64, i64* @IDC_START, align 8
  %60 = call i32 @GetDlgItem(i32 %58, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @EnableWindow(i32 %61, i32 %62)
  br label %98

64:                                               ; preds = %51, %48, %38
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SERVICE_ACCEPT_STOP, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @SERVICE_RUNNING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i64, i64* @IDC_STOP, align 8
  %76 = call i32 @GetDlgItem(i32 %74, i64 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i32 @EnableWindow(i32 %77, i32 %78)
  br label %97

80:                                               ; preds = %69, %64
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @SERVICE_ACCEPT_PAUSE_CONTINUE, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @SERVICE_RUNNING, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = load i64, i64* @IDC_PAUSE, align 8
  %92 = call i32 @GetDlgItem(i32 %90, i64 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @EnableWindow(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %85, %80
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97, %57
  %99 = load i32, i32* %5, align 4
  %100 = load i64, i64* @IDC_START_PARAM, align 8
  %101 = call i32 @GetDlgItem(i32 %99, i64 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @SERVICE_STOPPED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SERVICE_DISABLED, align 8
  %114 = icmp ne i64 %112, %113
  br label %115

115:                                              ; preds = %109, %106, %98
  %116 = phi i1 [ false, %106 ], [ false, %98 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @EnableWindow(i32 %102, i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = icmp ne %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = call i32 (...) @GetProcessHeap()
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = call i32 @HeapFree(i32 %122, i32 0, %struct.TYPE_11__* %123)
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @SetMenuAndButtonStates(i32 %128)
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @GetDlgItem(i32, i64) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local %struct.TYPE_11__* @GetServiceConfig(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetMenuAndButtonStates(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
