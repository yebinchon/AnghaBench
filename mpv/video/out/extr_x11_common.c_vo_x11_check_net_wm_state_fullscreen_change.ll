; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_check_net_wm_state_fullscreen_change.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_check_net_wm_state_fullscreen_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.vo_x11_state* }
%struct.TYPE_2__ = type { i32 }
%struct.vo_x11_state = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@vo_wm_FULLSCREEN = common dso_local global i32 0, align 4
@_NET_WM_STATE = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@_NET_WM_STATE_FULLSCREEN = common dso_local global i32 0, align 4
@VO_EVENT_FULLSCREEN_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @vo_x11_check_net_wm_state_fullscreen_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_check_net_wm_state_fullscreen_change(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_x11_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 1
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %10, align 8
  store %struct.vo_x11_state* %11, %struct.vo_x11_state** %3, align 8
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %13 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %126

17:                                               ; preds = %1
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %19 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @vo_wm_FULLSCREEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %126

24:                                               ; preds = %17
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %26 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %27 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %30 = load i32, i32* @_NET_WM_STATE, align 4
  %31 = call i64 @XA(%struct.vo_x11_state* %29, i32 %30)
  %32 = load i32, i32* @XA_ATOM, align 4
  %33 = call i64* @x11_get_property(%struct.vo_x11_state* %25, i32 %28, i64 %31, i32 %32, i32 32, i32* %4)
  store i64* %33, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %34 = load i64*, i64** %5, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %24
  %37 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %38 = load i32, i32* @_NET_WM_STATE_FULLSCREEN, align 4
  %39 = call i64 @XA(%struct.vo_x11_state* %37, i32 %38)
  store i64 %39, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %54, %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i64*, i64** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %40

57:                                               ; preds = %52, %40
  %58 = load i64*, i64** %5, align 8
  %59 = call i32 @XFree(i64* %58)
  br label %60

60:                                               ; preds = %57, %24
  %61 = load %struct.vo*, %struct.vo** %2, align 8
  %62 = getelementptr inbounds %struct.vo, %struct.vo* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67, %60
  %71 = load %struct.vo*, %struct.vo** %2, align 8
  %72 = getelementptr inbounds %struct.vo, %struct.vo* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %77, %67
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.vo*, %struct.vo** %2, align 8
  %83 = getelementptr inbounds %struct.vo, %struct.vo* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %88 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @VO_EVENT_FULLSCREEN_STATE, align 4
  %90 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %91 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %80
  %97 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %98 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %103 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101, %96
  %107 = load %struct.vo*, %struct.vo** %2, align 8
  %108 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %109 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %112 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %115 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @vo_x11_move_resize(%struct.vo* %107, i32 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %106, %101, %80
  %119 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %120 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %119, i32 0, i32 3
  store i32 0, i32* %120, align 4
  %121 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %122 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.vo*, %struct.vo** %2, align 8
  %124 = call i32 @vo_x11_update_composition_hint(%struct.vo* %123)
  br label %125

125:                                              ; preds = %118, %77, %70
  br label %126

126:                                              ; preds = %16, %125, %17
  ret void
}

declare dso_local i64* @x11_get_property(%struct.vo_x11_state*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @vo_x11_move_resize(%struct.vo*, i32, i32, i32) #1

declare dso_local i32 @vo_x11_update_composition_hint(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
