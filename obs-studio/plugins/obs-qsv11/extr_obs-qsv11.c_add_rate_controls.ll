; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_add_rate_controls.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_add_rate_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qsv_rate_control_info = type { i64, i32 }

@QSV_CPU_PLATFORM_HSW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.qsv_rate_control_info*)* @add_rate_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rate_controls(i32* %0, %struct.qsv_rate_control_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.qsv_rate_control_info*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.qsv_rate_control_info* %1, %struct.qsv_rate_control_info** %4, align 8
  %6 = call i32 (...) @qsv_get_cpu_platform()
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load %struct.qsv_rate_control_info*, %struct.qsv_rate_control_info** %4, align 8
  %9 = getelementptr inbounds %struct.qsv_rate_control_info, %struct.qsv_rate_control_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = load %struct.qsv_rate_control_info*, %struct.qsv_rate_control_info** %4, align 8
  %14 = getelementptr inbounds %struct.qsv_rate_control_info, %struct.qsv_rate_control_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @QSV_CPU_PLATFORM_HSW, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %12
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.qsv_rate_control_info*, %struct.qsv_rate_control_info** %4, align 8
  %24 = getelementptr inbounds %struct.qsv_rate_control_info, %struct.qsv_rate_control_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qsv_rate_control_info*, %struct.qsv_rate_control_info** %4, align 8
  %27 = getelementptr inbounds %struct.qsv_rate_control_info, %struct.qsv_rate_control_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @obs_property_list_add_string(i32* %22, i64 %25, i64 %28)
  br label %30

30:                                               ; preds = %21, %17
  %31 = load %struct.qsv_rate_control_info*, %struct.qsv_rate_control_info** %4, align 8
  %32 = getelementptr inbounds %struct.qsv_rate_control_info, %struct.qsv_rate_control_info* %31, i32 1
  store %struct.qsv_rate_control_info* %32, %struct.qsv_rate_control_info** %4, align 8
  br label %7

33:                                               ; preds = %7
  ret void
}

declare dso_local i32 @qsv_get_cpu_platform(...) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
