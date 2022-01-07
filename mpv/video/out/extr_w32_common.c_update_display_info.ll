; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_update_display_info.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_update_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vo_w32_state = type { i64, double, i8*, i32 }

@MONITOR_DEFAULTTOPRIMARY = common dso_local global i32 0, align 4
@__const.update_display_info.mi = private unnamed_addr constant %struct.TYPE_2__ { i32 8, i32 0 }, align 4
@.str = private unnamed_addr constant [17 x i8] c"display-fps: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't determine monitor refresh rate\0A\00", align 1
@VO_EVENT_WIN_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"color-profile: %s\0A\00", align 1
@VO_EVENT_ICC_PROFILE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_w32_state*)* @update_display_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_info(%struct.vo_w32_state* %0) #0 {
  %2 = alloca %struct.vo_w32_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %2, align 8
  %7 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %8 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MONITOR_DEFAULTTOPRIMARY, align 4
  %11 = call i64 @MonitorFromWindow(i32 %9, i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %13 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %108

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %21 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %23 = call i32 @update_dpi(%struct.vo_w32_state* %22)
  %24 = bitcast %struct.TYPE_2__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_2__* @__const.update_display_info.mi to i8*), i64 8, i1 false)
  %25 = load i64, i64* %3, align 8
  %26 = bitcast %struct.TYPE_2__* %4 to i32*
  %27 = call i32 @GetMonitorInfoW(i64 %25, i32* %26)
  store double 0.000000e+00, double* %5, align 8
  %28 = load double, double* %5, align 8
  %29 = fcmp oeq double %28, 0.000000e+00
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call double @mp_w32_displayconfig_get_refresh_rate(i32 %32)
  store double %33, double* %5, align 8
  br label %34

34:                                               ; preds = %30, %18
  %35 = load double, double* %5, align 8
  %36 = fcmp oeq double %35, 0.000000e+00
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call double @get_refresh_rate_from_gdi(i32 %39)
  store double %40, double* %5, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load double, double* %5, align 8
  %43 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %44 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fcmp une double %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %49 = load double, double* %5, align 8
  %50 = call i32 (%struct.vo_w32_state*, i8*, ...) @MP_VERBOSE(%struct.vo_w32_state* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), double %49)
  %51 = load double, double* %5, align 8
  %52 = fcmp oeq double %51, 0.000000e+00
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %55 = call i32 @MP_WARN(%struct.vo_w32_state* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  %57 = load double, double* %5, align 8
  %58 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %59 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %58, i32 0, i32 1
  store double %57, double* %59, align 8
  %60 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %61 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %62 = call i32 @signal_events(%struct.vo_w32_state* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %41
  %64 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @get_color_profile(%struct.vo_w32_state* %64, i32 %66)
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp eq i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %72 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  %75 = zext i1 %74 to i32
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %63
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %105

80:                                               ; preds = %77
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %83 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %81, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %80, %63
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (%struct.vo_w32_state*, i8*, ...) @MP_VERBOSE(%struct.vo_w32_state* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %96 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @talloc_free(i8* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %101 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  store i8* null, i8** %6, align 8
  %102 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %103 = load i32, i32* @VO_EVENT_ICC_PROFILE_CHANGED, align 4
  %104 = call i32 @signal_events(%struct.vo_w32_state* %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %80, %77
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @talloc_free(i8* %106)
  br label %108

108:                                              ; preds = %105, %17
  ret void
}

declare dso_local i64 @MonitorFromWindow(i32, i32) #1

declare dso_local i32 @update_dpi(%struct.vo_w32_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetMonitorInfoW(i64, i32*) #1

declare dso_local double @mp_w32_displayconfig_get_refresh_rate(i32) #1

declare dso_local double @get_refresh_rate_from_gdi(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_w32_state*, i8*, ...) #1

declare dso_local i32 @MP_WARN(%struct.vo_w32_state*, i8*) #1

declare dso_local i32 @signal_events(%struct.vo_w32_state*, i32) #1

declare dso_local i8* @get_color_profile(%struct.vo_w32_state*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
