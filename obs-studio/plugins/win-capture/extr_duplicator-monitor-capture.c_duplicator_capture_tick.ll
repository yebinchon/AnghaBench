; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_duplicator_capture_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_duplicator_capture_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.duplicator_capture = type { i32, float, i64, i64, i32, i64, i32, i32 }

@RESET_INTERVAL_SEC = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @duplicator_capture_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicator_capture_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.duplicator_capture*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.duplicator_capture*
  store %struct.duplicator_capture* %7, %struct.duplicator_capture** %5, align 8
  %8 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %9 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @obs_source_showing(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %15 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = call i32 (...) @obs_enter_graphics()
  %20 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %21 = call i32 @free_capture_data(%struct.duplicator_capture* %20)
  %22 = call i32 (...) @obs_leave_graphics()
  %23 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %24 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  br label %108

26:                                               ; preds = %2
  %27 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %28 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load float, float* @RESET_INTERVAL_SEC, align 4
  %33 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %34 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %33, i32 0, i32 1
  store float %32, float* %34, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35
  %37 = call i32 (...) @obs_enter_graphics()
  %38 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %39 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %36
  %43 = load float, float* %4, align 4
  %44 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %45 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fadd float %46, %43
  store float %47, float* %45, align 4
  %48 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %49 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load float, float* @RESET_INTERVAL_SEC, align 4
  %52 = fcmp oge float %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %55 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @gs_duplicator_create(i32 %56)
  %58 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %59 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %61 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %60, i32 0, i32 1
  store float 0.000000e+00, float* %61, align 4
  br label %62

62:                                               ; preds = %53, %42
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %65 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %63
  %69 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %70 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %75 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %74, i32 0, i32 4
  %76 = call i32 @cursor_capture(i32* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %79 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @gs_duplicator_update_frame(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %85 = call i32 @free_capture_data(%struct.duplicator_capture* %84)
  br label %95

86:                                               ; preds = %77
  %87 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %88 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %93 = call i32 @reset_capture_data(%struct.duplicator_capture* %92)
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %63
  %97 = call i32 (...) @obs_leave_graphics()
  %98 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %99 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %104 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %96
  %106 = load float, float* %4, align 4
  %107 = call i32 @UNUSED_PARAMETER(float %106)
  br label %108

108:                                              ; preds = %105, %25
  ret void
}

declare dso_local i32 @obs_source_showing(i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @free_capture_data(%struct.duplicator_capture*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i64 @gs_duplicator_create(i32) #1

declare dso_local i32 @cursor_capture(i32*) #1

declare dso_local i32 @gs_duplicator_update_frame(i64) #1

declare dso_local i32 @reset_capture_data(%struct.duplicator_capture*) #1

declare dso_local i32 @UNUSED_PARAMETER(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
