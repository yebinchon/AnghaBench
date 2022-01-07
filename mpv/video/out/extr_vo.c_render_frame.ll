; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_render_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_render_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_vsync_info = type { i32, i32 }
%struct.vo = type { %struct.TYPE_2__*, %struct.vo_internal* }
%struct.TYPE_2__ = type { i32, i32 (%struct.vo*, %struct.vo_vsync_info*)*, {}*, i32 (%struct.vo*, i32)*, i32 (%struct.vo*, %struct.vo_frame*)* }
%struct.vo_frame = type { i32, i64, i32, i32, i32, i64, i32, i64, i32 }
%struct.vo_internal = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.vo_frame*, i32, i32, %struct.vo_frame*, i64, i32 }

@VO_CAP_FRAMEDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"start video-draw\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"end video-draw\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"start video-flip\00", align 1
@__const.render_frame.vsync = private unnamed_addr constant %struct.vo_vsync_info { i32 -1, i32 -1 }, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"end video-flip\00", align 1
@VO_CAP_NORETAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"drop-vo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @render_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_frame(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vo_vsync_info, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %14 = load %struct.vo*, %struct.vo** %2, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 1
  %16 = load %struct.vo_internal*, %struct.vo_internal** %15, align 8
  store %struct.vo_internal* %16, %struct.vo_internal** %3, align 8
  store %struct.vo_frame* null, %struct.vo_frame** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.vo*, %struct.vo** %2, align 8
  %18 = call i32 @update_display_fps(%struct.vo* %17)
  %19 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %20 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %19, i32 0, i32 9
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %23 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %22, i32 0, i32 8
  %24 = load %struct.vo_frame*, %struct.vo_frame** %23, align 8
  %25 = icmp ne %struct.vo_frame* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %28 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %27, i32 0, i32 11
  %29 = load %struct.vo_frame*, %struct.vo_frame** %28, align 8
  %30 = call i32 @talloc_free(%struct.vo_frame* %29)
  %31 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %32 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %31, i32 0, i32 8
  %33 = load %struct.vo_frame*, %struct.vo_frame** %32, align 8
  %34 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %35 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %34, i32 0, i32 11
  store %struct.vo_frame* %33, %struct.vo_frame** %35, align 8
  %36 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %37 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %36, i32 0, i32 8
  store %struct.vo_frame* null, %struct.vo_frame** %37, align 8
  br label %76

38:                                               ; preds = %1
  %39 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %40 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %38
  %44 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %45 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %44, i32 0, i32 11
  %46 = load %struct.vo_frame*, %struct.vo_frame** %45, align 8
  %47 = icmp ne %struct.vo_frame* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %50 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %55 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %54, i32 0, i32 11
  %56 = load %struct.vo_frame*, %struct.vo_frame** %55, align 8
  %57 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %62 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %61, i32 0, i32 11
  %63 = load %struct.vo_frame*, %struct.vo_frame** %62, align 8
  %64 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %74, label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %69 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %68, i32 0, i32 11
  %70 = load %struct.vo_frame*, %struct.vo_frame** %69, align 8
  %71 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67, %60, %48, %43, %38
  br label %402

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %26
  %77 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %78 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %77, i32 0, i32 11
  %79 = load %struct.vo_frame*, %struct.vo_frame** %78, align 8
  %80 = call %struct.vo_frame* @vo_frame_ref(%struct.vo_frame* %79)
  store %struct.vo_frame* %80, %struct.vo_frame** %4, align 8
  %81 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %82 = call i32 @assert(%struct.vo_frame* %81)
  %83 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %84 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %89 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %91 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %90, i32 0, i32 2
  store i32 -1, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %76
  %93 = call i64 (...) @mp_time_us()
  store i64 %93, i64* %6, align 8
  %94 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %95 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %7, align 8
  %97 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %98 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, i64* %9, align 8
  %104 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %105 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %115

109:                                              ; preds = %92
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %112 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  br label %115

115:                                              ; preds = %109, %108
  %116 = phi i64 [ 0, %108 ], [ %114, %109 ]
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp slt i64 %120, %121
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i1 [ false, %115 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %127 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %129 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %135 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.vo*, %struct.vo** %2, align 8
  %139 = getelementptr inbounds %struct.vo, %struct.vo* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @VO_CAP_FRAMEDROP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %149 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %153 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %156 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %161 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = icmp slt i64 %163, 100000
  %165 = zext i1 %164 to i32
  %166 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %167 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %171 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %174 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %178 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %177, i32 0, i32 11
  %179 = load %struct.vo_frame*, %struct.vo_frame** %178, align 8
  %180 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %179, i32 0, i32 4
  store i32 1, i32* %180, align 8
  %181 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %182 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %210

185:                                              ; preds = %123
  %186 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %187 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %186, i32 0, i32 11
  %188 = load %struct.vo_frame*, %struct.vo_frame** %187, align 8
  %189 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %192 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %191, i32 0, i32 11
  %193 = load %struct.vo_frame*, %struct.vo_frame** %192, align 8
  %194 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %190
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 8
  %199 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %200 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %199, i32 0, i32 11
  %201 = load %struct.vo_frame*, %struct.vo_frame** %200, align 8
  %202 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %203, 1
  %205 = zext i1 %204 to i32
  %206 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %207 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %185, %123
  %211 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %212 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %211, i32 0, i32 11
  %213 = load %struct.vo_frame*, %struct.vo_frame** %212, align 8
  %214 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %219 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %218, i32 0, i32 11
  %220 = load %struct.vo_frame*, %struct.vo_frame** %219, align 8
  %221 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %217, %210
  %225 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %226 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %225, i32 0, i32 11
  %227 = load %struct.vo_frame*, %struct.vo_frame** %226, align 8
  %228 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %224
  %232 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %233 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %232, i32 0, i32 12
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  %236 = xor i1 %235, true
  br label %237

237:                                              ; preds = %231, %224
  %238 = phi i1 [ false, %224 ], [ %236, %231 ]
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %244 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %242
  %248 = load i64, i64* %6, align 8
  %249 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %250 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %247, %242, %237
  %252 = load i32, i32* %11, align 4
  %253 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %254 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 4
  %255 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %256 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %261 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 8
  br label %369

264:                                              ; preds = %251
  %265 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %266 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %265, i32 0, i32 6
  store i32 1, i32* %266, align 4
  %267 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %268 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %267, i32 0, i32 3
  store i32 1, i32* %268, align 8
  %269 = load %struct.vo*, %struct.vo** %2, align 8
  %270 = getelementptr inbounds %struct.vo, %struct.vo* %269, i32 0, i32 1
  %271 = load %struct.vo_internal*, %struct.vo_internal** %270, align 8
  %272 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %12, align 8
  %275 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %276 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %275, i32 0, i32 9
  %277 = call i32 @pthread_mutex_unlock(i32* %276)
  %278 = load %struct.vo*, %struct.vo** %2, align 8
  %279 = call i32 @wakeup_core(%struct.vo* %278)
  %280 = load %struct.vo*, %struct.vo** %2, align 8
  %281 = call i32 @MP_STATS(%struct.vo* %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %282 = load %struct.vo*, %struct.vo** %2, align 8
  %283 = getelementptr inbounds %struct.vo, %struct.vo* %282, i32 0, i32 0
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 4
  %286 = load i32 (%struct.vo*, %struct.vo_frame*)*, i32 (%struct.vo*, %struct.vo_frame*)** %285, align 8
  %287 = icmp ne i32 (%struct.vo*, %struct.vo_frame*)* %286, null
  br i1 %287, label %288, label %297

288:                                              ; preds = %264
  %289 = load %struct.vo*, %struct.vo** %2, align 8
  %290 = getelementptr inbounds %struct.vo, %struct.vo* %289, i32 0, i32 0
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 4
  %293 = load i32 (%struct.vo*, %struct.vo_frame*)*, i32 (%struct.vo*, %struct.vo_frame*)** %292, align 8
  %294 = load %struct.vo*, %struct.vo** %2, align 8
  %295 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %296 = call i32 %293(%struct.vo* %294, %struct.vo_frame* %295)
  br label %309

297:                                              ; preds = %264
  %298 = load %struct.vo*, %struct.vo** %2, align 8
  %299 = getelementptr inbounds %struct.vo, %struct.vo* %298, i32 0, i32 0
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 3
  %302 = load i32 (%struct.vo*, i32)*, i32 (%struct.vo*, i32)** %301, align 8
  %303 = load %struct.vo*, %struct.vo** %2, align 8
  %304 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %305 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @mp_image_new_ref(i32 %306)
  %308 = call i32 %302(%struct.vo* %303, i32 %307)
  br label %309

309:                                              ; preds = %297, %288
  %310 = load %struct.vo*, %struct.vo** %2, align 8
  %311 = call i32 @MP_STATS(%struct.vo* %310, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %312 = load %struct.vo*, %struct.vo** %2, align 8
  %313 = load i64, i64* %10, align 8
  %314 = call i32 @wait_until(%struct.vo* %312, i64 %313)
  %315 = load %struct.vo*, %struct.vo** %2, align 8
  %316 = call i32 @MP_STATS(%struct.vo* %315, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %317 = load %struct.vo*, %struct.vo** %2, align 8
  %318 = getelementptr inbounds %struct.vo, %struct.vo* %317, i32 0, i32 0
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 2
  %321 = bitcast {}** %320 to i32 (%struct.vo*)**
  %322 = load i32 (%struct.vo*)*, i32 (%struct.vo*)** %321, align 8
  %323 = load %struct.vo*, %struct.vo** %2, align 8
  %324 = call i32 %322(%struct.vo* %323)
  %325 = bitcast %struct.vo_vsync_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %325, i8* align 4 bitcast (%struct.vo_vsync_info* @__const.render_frame.vsync to i8*), i64 8, i1 false)
  %326 = load %struct.vo*, %struct.vo** %2, align 8
  %327 = getelementptr inbounds %struct.vo, %struct.vo* %326, i32 0, i32 0
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 1
  %330 = load i32 (%struct.vo*, %struct.vo_vsync_info*)*, i32 (%struct.vo*, %struct.vo_vsync_info*)** %329, align 8
  %331 = icmp ne i32 (%struct.vo*, %struct.vo_vsync_info*)* %330, null
  br i1 %331, label %332, label %340

332:                                              ; preds = %309
  %333 = load %struct.vo*, %struct.vo** %2, align 8
  %334 = getelementptr inbounds %struct.vo, %struct.vo* %333, i32 0, i32 0
  %335 = load %struct.TYPE_2__*, %struct.TYPE_2__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 1
  %337 = load i32 (%struct.vo*, %struct.vo_vsync_info*)*, i32 (%struct.vo*, %struct.vo_vsync_info*)** %336, align 8
  %338 = load %struct.vo*, %struct.vo** %2, align 8
  %339 = call i32 %337(%struct.vo* %338, %struct.vo_vsync_info* %13)
  br label %340

340:                                              ; preds = %332, %309
  %341 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %13, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = call i64 (...) @mp_time_us()
  %346 = trunc i64 %345 to i32
  %347 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %13, i32 0, i32 0
  store i32 %346, i32* %347, align 4
  br label %348

348:                                              ; preds = %344, %340
  %349 = load %struct.vo*, %struct.vo** %2, align 8
  %350 = call i32 @MP_STATS(%struct.vo* %349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %351 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %352 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %351, i32 0, i32 9
  %353 = call i32 @pthread_mutex_lock(i32* %352)
  %354 = load i64, i64* %12, align 8
  %355 = load %struct.vo*, %struct.vo** %2, align 8
  %356 = getelementptr inbounds %struct.vo, %struct.vo* %355, i32 0, i32 1
  %357 = load %struct.vo_internal*, %struct.vo_internal** %356, align 8
  %358 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = icmp slt i64 %354, %360
  %362 = zext i1 %361 to i32
  %363 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %364 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 8
  %365 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %366 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %365, i32 0, i32 6
  store i32 0, i32* %366, align 4
  %367 = load %struct.vo*, %struct.vo** %2, align 8
  %368 = call i32 @update_vsync_timing_after_swap(%struct.vo* %367, %struct.vo_vsync_info* %13)
  br label %369

369:                                              ; preds = %348, %259
  %370 = load %struct.vo*, %struct.vo** %2, align 8
  %371 = getelementptr inbounds %struct.vo, %struct.vo* %370, i32 0, i32 0
  %372 = load %struct.TYPE_2__*, %struct.TYPE_2__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @VO_CAP_NORETAIN, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %369
  %379 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %380 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %379, i32 0, i32 11
  %381 = load %struct.vo_frame*, %struct.vo_frame** %380, align 8
  %382 = call i32 @talloc_free(%struct.vo_frame* %381)
  %383 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %384 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %383, i32 0, i32 11
  store %struct.vo_frame* null, %struct.vo_frame** %384, align 8
  br label %385

385:                                              ; preds = %378, %369
  %386 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %387 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %385
  %391 = load %struct.vo*, %struct.vo** %2, align 8
  %392 = call i32 @MP_STATS(%struct.vo* %391, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %396

393:                                              ; preds = %385
  %394 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %395 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %394, i32 0, i32 7
  store i32 0, i32* %395, align 8
  br label %396

396:                                              ; preds = %393, %390
  %397 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %398 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %397, i32 0, i32 10
  %399 = call i32 @pthread_cond_broadcast(i32* %398)
  %400 = load %struct.vo*, %struct.vo** %2, align 8
  %401 = call i32 @wakeup_core(%struct.vo* %400)
  store i32 1, i32* %5, align 4
  br label %402

402:                                              ; preds = %396, %74
  %403 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %404 = call i32 @talloc_free(%struct.vo_frame* %403)
  %405 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %406 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %405, i32 0, i32 9
  %407 = call i32 @pthread_mutex_unlock(i32* %406)
  %408 = load i32, i32* %5, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %424, label %410

410:                                              ; preds = %402
  %411 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %412 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %411, i32 0, i32 8
  %413 = load %struct.vo_frame*, %struct.vo_frame** %412, align 8
  %414 = icmp ne %struct.vo_frame* %413, null
  br i1 %414, label %415, label %422

415:                                              ; preds = %410
  %416 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %417 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %416, i32 0, i32 8
  %418 = load %struct.vo_frame*, %struct.vo_frame** %417, align 8
  %419 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %418, i32 0, i32 5
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br label %422

422:                                              ; preds = %415, %410
  %423 = phi i1 [ false, %410 ], [ %421, %415 ]
  br label %424

424:                                              ; preds = %422, %402
  %425 = phi i1 [ true, %402 ], [ %423, %422 ]
  %426 = zext i1 %425 to i32
  ret i32 %426
}

declare dso_local i32 @update_display_fps(%struct.vo*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @talloc_free(%struct.vo_frame*) #1

declare dso_local %struct.vo_frame* @vo_frame_ref(%struct.vo_frame*) #1

declare dso_local i32 @assert(%struct.vo_frame*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @wakeup_core(%struct.vo*) #1

declare dso_local i32 @MP_STATS(%struct.vo*, i8*) #1

declare dso_local i32 @mp_image_new_ref(i32) #1

declare dso_local i32 @wait_until(%struct.vo*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_vsync_timing_after_swap(%struct.vo*, %struct.vo_vsync_info*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
