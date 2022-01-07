; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_map_window.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_map_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.vo_x11_state* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.vo_x11_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mp_rect = type { i32 }

@vo_wm_FULLSCREEN = common dso_local global i32 0, align 4
@_NET_WM_STATE_FULLSCREEN = common dso_local global i32 0, align 4
@_NET_WM_STATE = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@PropModeAppend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"_NET_WM_FULLSCREEN_MONITORS\00", align 1
@_NET_WM_DESKTOP = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@StructureNotifyMask = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@PropertyChangeMask = common dso_local global i32 0, align 4
@LeaveWindowMask = common dso_local global i32 0, align 4
@EnterWindowMask = common dso_local global i32 0, align 4
@FocusChangeMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@ButtonPressMask = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@KeyPressMask = common dso_local global i32 0, align 4
@KeyReleaseMask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@XEMBED_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32)* @vo_x11_map_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_map_window(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_rect, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %3, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.vo* %0, %struct.vo** %4, align 8
  %12 = load %struct.vo*, %struct.vo** %4, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 1
  %14 = load %struct.vo_x11_state*, %struct.vo_x11_state** %13, align 8
  store %struct.vo_x11_state* %14, %struct.vo_x11_state** %5, align 8
  %15 = load %struct.vo*, %struct.vo** %4, align 8
  %16 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vo_x11_move_resize(%struct.vo* %15, i32 1, i32 1, i32 %17)
  %19 = load %struct.vo*, %struct.vo** %4, align 8
  %20 = load %struct.vo*, %struct.vo** %4, align 8
  %21 = getelementptr inbounds %struct.vo, %struct.vo* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @vo_x11_decoration(%struct.vo* %19, i32 %24)
  %26 = load %struct.vo*, %struct.vo** %4, align 8
  %27 = getelementptr inbounds %struct.vo, %struct.vo* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %2
  %33 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %34 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @vo_wm_FULLSCREEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %41 = load i32, i32* @_NET_WM_STATE_FULLSCREEN, align 4
  %42 = call i32 @XA(%struct.vo_x11_state* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %44 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %47 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %50 = load i32, i32* @_NET_WM_STATE, align 4
  %51 = call i32 @XA(%struct.vo_x11_state* %49, i32 %50)
  %52 = load i32, i32* @XA_ATOM, align 4
  %53 = load i32, i32* @PropModeAppend, align 4
  %54 = bitcast i32* %6 to i8*
  %55 = call i32 @XChangeProperty(i32 %45, i32 %48, i32 %51, i32 %52, i32 32, i32 %53, i8* %54, i32 1)
  %56 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %57 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %59 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  %60 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %61 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %39, %32, %2
  %63 = load %struct.vo*, %struct.vo** %4, align 8
  %64 = getelementptr inbounds %struct.vo, %struct.vo* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %104

69:                                               ; preds = %62
  %70 = bitcast [5 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 40, i1 false)
  %71 = load %struct.vo*, %struct.vo** %4, align 8
  %72 = getelementptr inbounds %struct.vo, %struct.vo* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load %struct.vo*, %struct.vo** %4, align 8
  %83 = getelementptr inbounds %struct.vo, %struct.vo* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 %89
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %78

94:                                               ; preds = %78
  br label %99

95:                                               ; preds = %69
  %96 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %98 = call i32 @vo_x11_get_bounding_monitors(%struct.vo_x11_state* %96, i64* %97)
  br label %99

99:                                               ; preds = %95, %94
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 4
  store i64 1, i64* %100, align 16
  %101 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %103 = call i32 @x11_send_ewmh_msg(%struct.vo_x11_state* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64* %102)
  br label %104

104:                                              ; preds = %99, %62
  %105 = load %struct.vo*, %struct.vo** %4, align 8
  %106 = getelementptr inbounds %struct.vo, %struct.vo* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  store i64 4294967295, i64* %9, align 8
  %112 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %113 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %116 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %119 = load i32, i32* @_NET_WM_DESKTOP, align 4
  %120 = call i32 @XA(%struct.vo_x11_state* %118, i32 %119)
  %121 = load i32, i32* @XA_CARDINAL, align 4
  %122 = load i32, i32* @PropModeReplace, align 4
  %123 = bitcast i64* %9 to i8*
  %124 = call i32 @XChangeProperty(i32 %114, i32 %117, i32 %120, i32 %121, i32 32, i32 %122, i8* %123, i32 1)
  br label %125

125:                                              ; preds = %111, %104
  %126 = load %struct.vo*, %struct.vo** %4, align 8
  %127 = call i32 @vo_x11_update_composition_hint(%struct.vo* %126)
  %128 = load i32, i32* @StructureNotifyMask, align 4
  %129 = load i32, i32* @ExposureMask, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PropertyChangeMask, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @LeaveWindowMask, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @EnterWindowMask, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @FocusChangeMask, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %10, align 4
  %139 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %140 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @mp_input_mouse_enabled(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %125
  %145 = load i32, i32* @PointerMotionMask, align 4
  %146 = load i32, i32* @ButtonPressMask, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ButtonReleaseMask, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %144, %125
  %153 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %154 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @mp_input_vo_keyboard_enabled(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load i32, i32* @KeyPressMask, align 4
  %160 = load i32, i32* @KeyReleaseMask, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %158, %152
  %165 = load %struct.vo*, %struct.vo** %4, align 8
  %166 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %167 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %170 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @vo_x11_selectinput_witherr(%struct.vo* %165, i32 %168, i32 %171, i32 %172)
  %174 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %175 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %178 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @XMapWindow(i32 %176, i32 %179)
  %181 = load %struct.vo*, %struct.vo** %4, align 8
  %182 = getelementptr inbounds %struct.vo, %struct.vo* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %164
  %188 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %189 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @vo_wm_FULLSCREEN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %196 = call i32 @x11_set_ewmh_state(%struct.vo_x11_state* %195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %197

197:                                              ; preds = %194, %187, %164
  %198 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %199 = load i32, i32* @XEMBED_MAPPED, align 4
  %200 = call i32 @vo_x11_xembed_update(%struct.vo_x11_state* %198, i32 %199)
  ret void
}

declare dso_local i32 @vo_x11_move_resize(%struct.vo*, i32, i32, i32) #1

declare dso_local i32 @vo_x11_decoration(%struct.vo*, i32) #1

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vo_x11_get_bounding_monitors(%struct.vo_x11_state*, i64*) #1

declare dso_local i32 @x11_send_ewmh_msg(%struct.vo_x11_state*, i8*, i64*) #1

declare dso_local i32 @vo_x11_update_composition_hint(%struct.vo*) #1

declare dso_local i64 @mp_input_mouse_enabled(i32) #1

declare dso_local i64 @mp_input_vo_keyboard_enabled(i32) #1

declare dso_local i32 @vo_x11_selectinput_witherr(%struct.vo*, i32, i32, i32) #1

declare dso_local i32 @XMapWindow(i32, i32) #1

declare dso_local i32 @x11_set_ewmh_state(%struct.vo_x11_state*, i8*, i32) #1

declare dso_local i32 @vo_x11_xembed_update(%struct.vo_x11_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
