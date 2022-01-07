; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.TYPE_4__*, %struct.vo_wayland_state* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.vo_wayland_state = type { i32, i32, float, i32, i32, i32, i32, %struct.vo_wayland_output*, %struct.TYPE_3__, i64, %struct.TYPE_3__, i32 }
%struct.vo_wayland_output = type { i32, %struct.mp_rect, %struct.wl_output* }
%struct.mp_rect = type { i32 }
%struct.wl_output = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.vo_win_geometry = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Reconfiguring!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Screen index %i not found/unavailable!\0A\00", align 1
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vo_wayland_reconfig(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.wl_output*, align 8
  %5 = alloca %struct.mp_rect, align 4
  %6 = alloca %struct.vo_wayland_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vo_wayland_output*, align 8
  %9 = alloca %struct.vo_win_geometry, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.wl_output* null, %struct.wl_output** %4, align 8
  %10 = bitcast %struct.mp_rect* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.vo*, %struct.vo** %3, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 3
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %12, align 8
  store %struct.vo_wayland_state* %13, %struct.vo_wayland_state** %6, align 8
  %14 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %15 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 7
  %18 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %17, align 8
  %19 = icmp ne %struct.vo_wayland_output* %18, null
  br i1 %19, label %79, label %20

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %21 = load %struct.vo*, %struct.vo** %3, align 8
  %22 = getelementptr inbounds %struct.vo, %struct.vo* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.vo*, %struct.vo** %3, align 8
  %29 = getelementptr inbounds %struct.vo, %struct.vo* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.vo*, %struct.vo** %3, align 8
  %36 = getelementptr inbounds %struct.vo, %struct.vo* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %27, %20
  %41 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.vo_wayland_output* @find_output(%struct.vo_wayland_state* %41, i32 %42)
  store %struct.vo_wayland_output* %43, %struct.vo_wayland_output** %8, align 8
  %44 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %8, align 8
  %45 = icmp ne %struct.vo_wayland_output* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @MP_ERR(%struct.vo_wayland_state* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %78

50:                                               ; preds = %40
  %51 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %8, align 8
  %52 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %51, i32 0, i32 2
  %53 = load %struct.wl_output*, %struct.wl_output** %52, align 8
  store %struct.wl_output* %53, %struct.wl_output** %4, align 8
  %54 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %8, align 8
  %55 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %56 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %55, i32 0, i32 7
  store %struct.vo_wayland_output* %54, %struct.vo_wayland_output** %56, align 8
  %57 = load %struct.vo*, %struct.vo** %3, align 8
  %58 = getelementptr inbounds %struct.vo, %struct.vo* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %8, align 8
  %65 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %50
  %67 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %8, align 8
  %68 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %71 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %73 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %72, i32 0, i32 7
  %74 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %73, align 8
  %75 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %74, i32 0, i32 1
  %76 = bitcast %struct.mp_rect* %5 to i8*
  %77 = bitcast %struct.mp_rect* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  br label %78

78:                                               ; preds = %66, %46
  br label %79

79:                                               ; preds = %78, %1
  %80 = load %struct.vo*, %struct.vo** %3, align 8
  %81 = call i32 @vo_calc_window_geometry(%struct.vo* %80, %struct.mp_rect* %5, %struct.vo_win_geometry* %9)
  %82 = load %struct.vo*, %struct.vo** %3, align 8
  %83 = call i32 @vo_apply_window_geometry(%struct.vo* %82, %struct.vo_win_geometry* %9)
  %84 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %85 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %90 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %126, label %93

93:                                               ; preds = %88, %79
  %94 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %95 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %98 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.vo*, %struct.vo** %3, align 8
  %101 = getelementptr inbounds %struct.vo, %struct.vo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %104 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %102, %105
  %107 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %108 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.vo*, %struct.vo** %3, align 8
  %111 = getelementptr inbounds %struct.vo, %struct.vo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %114 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sdiv i32 %112, %115
  %117 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %118 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %121 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %120, i32 0, i32 10
  %122 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %123 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %122, i32 0, i32 8
  %124 = bitcast %struct.TYPE_3__* %121 to i8*
  %125 = bitcast %struct.TYPE_3__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  br label %126

126:                                              ; preds = %93, %88
  %127 = load %struct.vo*, %struct.vo** %3, align 8
  %128 = getelementptr inbounds %struct.vo, %struct.vo* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sitofp i32 %129 to float
  %131 = load %struct.vo*, %struct.vo** %3, align 8
  %132 = getelementptr inbounds %struct.vo, %struct.vo* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sitofp i32 %133 to float
  %135 = fdiv float %130, %134
  %136 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %137 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %136, i32 0, i32 2
  store float %135, float* %137, align 8
  %138 = load %struct.vo*, %struct.vo** %3, align 8
  %139 = getelementptr inbounds %struct.vo, %struct.vo* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %209

144:                                              ; preds = %126
  %145 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %146 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %189

149:                                              ; preds = %144
  %150 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %151 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %150, i32 0, i32 7
  %152 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %151, align 8
  %153 = icmp ne %struct.vo_wayland_output* %152, null
  br i1 %153, label %154, label %189

154:                                              ; preds = %149
  %155 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %156 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %159 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %162 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %161, i32 0, i32 7
  %163 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %162, align 8
  %164 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @mp_rect_w(i32 %166)
  %168 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %169 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sdiv i32 %167, %170
  %172 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %173 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %176 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %175, i32 0, i32 7
  %177 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %176, align 8
  %178 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @mp_rect_h(i32 %180)
  %182 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %183 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sdiv i32 %181, %184
  %186 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %187 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  br label %208

189:                                              ; preds = %149, %144
  %190 = load %struct.vo*, %struct.vo** %3, align 8
  %191 = getelementptr inbounds %struct.vo, %struct.vo* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %198 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @xdg_toplevel_set_fullscreen(i32 %199, %struct.wl_output* null)
  br label %207

201:                                              ; preds = %189
  %202 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %203 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.wl_output*, %struct.wl_output** %4, align 8
  %206 = call i32 @xdg_toplevel_set_fullscreen(i32 %204, %struct.wl_output* %205)
  br label %207

207:                                              ; preds = %201, %196
  br label %208

208:                                              ; preds = %207, %154
  br label %209

209:                                              ; preds = %208, %126
  %210 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %211 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %214 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @wl_surface_set_buffer_scale(i32 %212, i32 %215)
  %217 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %218 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @wl_surface_commit(i32 %219)
  %221 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %222 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %223 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %227 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %242, label %230

230:                                              ; preds = %209
  %231 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %232 = call i64 @spawn_cursor(%struct.vo_wayland_state* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 0, i32* %2, align 4
  br label %243

235:                                              ; preds = %230
  %236 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %237 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @wl_display_roundtrip(i32 %238)
  %240 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %241 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %240, i32 0, i32 1
  store i32 1, i32* %241, align 4
  br label %242

242:                                              ; preds = %235, %209
  store i32 1, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %234
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*) #2

declare dso_local %struct.vo_wayland_output* @find_output(%struct.vo_wayland_state*, i32) #2

declare dso_local i32 @MP_ERR(%struct.vo_wayland_state*, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vo_calc_window_geometry(%struct.vo*, %struct.mp_rect*, %struct.vo_win_geometry*) #2

declare dso_local i32 @vo_apply_window_geometry(%struct.vo*, %struct.vo_win_geometry*) #2

declare dso_local i32 @mp_rect_w(i32) #2

declare dso_local i32 @mp_rect_h(i32) #2

declare dso_local i32 @xdg_toplevel_set_fullscreen(i32, %struct.wl_output*) #2

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #2

declare dso_local i32 @wl_surface_commit(i32) #2

declare dso_local i64 @spawn_cursor(%struct.vo_wayland_state*) #2

declare dso_local i32 @wl_display_roundtrip(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
