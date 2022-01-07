; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau_mixer.c_mp_vdpau_mixer_render.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau_mixer.c_mp_vdpau_mixer_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vdpau_mixer = type { i8*, i32, i64, i64, i64, i32, %struct.mp_vdpau_mixer_opts, i64, i32, %struct.TYPE_12__* }
%struct.mp_vdpau_mixer_opts = type { i32 }
%struct.TYPE_12__ = type { %struct.vdp_functions }
%struct.vdp_functions = type { i32 (i8*, i8*, i32, i32, i32, i8**, i64, i32, i8**, %struct.TYPE_11__*, i64, i32*, %struct.TYPE_11__*, i32, i32*)*, i32 (i8*)*, i32 (i64, i64*, i64*, i64*)*, i32 (i64, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, i32*, i32*, i32)* }
%struct.mp_image = type { i64, i32, i64*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.mp_vdpau_mixer_frame = type { i64, i8**, i8**, i32, %struct.mp_vdpau_mixer_opts, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@VDP_INVALID_HANDLE = common dso_local global i8* null, align 8
@IMGFMT_VDPAU_OUTPUT = common dso_local global i64 0, align 8
@VDP_OUTPUT_SURFACE_RENDER_ROTATE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Error when calling vdp_output_surface_render_output_surface\00", align 1
@IMGFMT_VDPAU = common dso_local global i64 0, align 8
@MP_VDP_HISTORY_FRAMES = common dso_local global i32 0, align 4
@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Error when calling vdp_video_surface_get_parameters\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error when calling vdp_video_mixer_destroy\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Error when calling vdp_video_mixer_render\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_vdpau_mixer_render(%struct.mp_vdpau_mixer* %0, %struct.mp_vdpau_mixer_opts* %1, i64 %2, %struct.TYPE_11__* %3, %struct.mp_image* %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_vdpau_mixer*, align 8
  %9 = alloca %struct.mp_vdpau_mixer_opts*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.mp_image*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.vdp_functions*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mp_vdpau_mixer_frame*, align 8
  %21 = alloca %struct.mp_vdpau_mixer_frame, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.mp_vdpau_mixer* %0, %struct.mp_vdpau_mixer** %8, align 8
  store %struct.mp_vdpau_mixer_opts* %1, %struct.mp_vdpau_mixer_opts** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store %struct.mp_image* %4, %struct.mp_image** %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  %26 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %27 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %26, i32 0, i32 9
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store %struct.vdp_functions* %29, %struct.vdp_functions** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %33 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %34 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %37 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %6
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %13, align 8
  br label %43

43:                                               ; preds = %42, %6
  %44 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %45 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %44, i32 0, i32 9
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %48 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %47, i32 0, i32 8
  %49 = call i32 @mp_vdpau_handle_preemption(%struct.TYPE_12__* %46, i32* %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %54 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %55 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %7, align 4
  br label %272

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %43
  %61 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %62 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IMGFMT_VDPAU_OUTPUT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %68 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %18, align 8
  %72 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_ROTATE_0, align 4
  store i32 %72, i32* %19, align 4
  %73 = load %struct.vdp_functions*, %struct.vdp_functions** %14, align 8
  %74 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %73, i32 0, i32 3
  %75 = load i32 (i64, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, i32*, i32*, i32)*, i32 (i64, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, i32*, i32*, i32)** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = load i32, i32* %19, align 4
  %81 = call i32 %75(i64 %76, %struct.TYPE_11__* %77, i64 %78, %struct.TYPE_11__* %79, i32* null, i32* null, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %83 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_mixer* %82, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %272

84:                                               ; preds = %60
  %85 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %86 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IMGFMT_VDPAU, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 -1, i32* %7, align 4
  br label %272

91:                                               ; preds = %84
  %92 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %93 = call %struct.mp_vdpau_mixer_frame* @mp_vdpau_mixed_frame_get(%struct.mp_image* %92)
  store %struct.mp_vdpau_mixer_frame* %93, %struct.mp_vdpau_mixer_frame** %20, align 8
  %94 = bitcast %struct.mp_vdpau_mixer_frame* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %94, i8 0, i64 40, i1 false)
  %95 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %96 = icmp ne %struct.mp_vdpau_mixer_frame* %95, null
  br i1 %96, label %130, label %97

97:                                               ; preds = %91
  store %struct.mp_vdpau_mixer_frame* %21, %struct.mp_vdpau_mixer_frame** %20, align 8
  %98 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %99 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %104 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %22, align 4
  br label %105

105:                                              ; preds = %123, %97
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* @MP_VDP_HISTORY_FRAMES, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %111 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %112 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %111, i32 0, i32 1
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %110, i8** %116, align 8
  %117 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %118 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %117, i32 0, i32 2
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %110, i8** %122, align 8
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %22, align 4
  br label %105

126:                                              ; preds = %105
  %127 = load i32, i32* @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME, align 4
  %128 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %129 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %91
  %131 = load %struct.mp_vdpau_mixer_opts*, %struct.mp_vdpau_mixer_opts** %9, align 8
  %132 = icmp ne %struct.mp_vdpau_mixer_opts* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %135 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %134, i32 0, i32 4
  store %struct.mp_vdpau_mixer_opts* %135, %struct.mp_vdpau_mixer_opts** %9, align 8
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %138 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %144 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %143, i32 0, i32 1
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %136
  %146 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %147 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %152 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @mp_csp_equalizer_state_changed(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %158 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %157, i32 0, i32 1
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %150, %145
  %160 = load %struct.vdp_functions*, %struct.vdp_functions** %14, align 8
  %161 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %160, i32 0, i32 2
  %162 = load i32 (i64, i64*, i64*, i64*)*, i32 (i64, i64*, i64*, i64*)** %161, align 8
  %163 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %164 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 %162(i64 %165, i64* %23, i64* %24, i64* %25)
  store i32 %166, i32* %15, align 4
  %167 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %168 = call i32 @CHECK_VDP_ERROR(%struct.mp_vdpau_mixer* %167, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %169 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %170 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %159
  %174 = load %struct.mp_vdpau_mixer_opts*, %struct.mp_vdpau_mixer_opts** %9, align 8
  %175 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %176 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %175, i32 0, i32 6
  %177 = call i32 @opts_equal(%struct.mp_vdpau_mixer_opts* %174, %struct.mp_vdpau_mixer_opts* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %173
  %180 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %181 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %180, i32 0, i32 1
  %182 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %183 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %182, i32 0, i32 5
  %184 = call i32 @mp_image_params_equal(i32* %181, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %179
  %187 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %188 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %24, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %204, label %192

192:                                              ; preds = %186
  %193 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %194 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %25, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %200 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %23, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %244

204:                                              ; preds = %198, %192, %186, %179, %173, %159
  %205 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %206 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %205, i32 0, i32 6
  %207 = load %struct.mp_vdpau_mixer_opts*, %struct.mp_vdpau_mixer_opts** %9, align 8
  %208 = bitcast %struct.mp_vdpau_mixer_opts* %206 to i8*
  %209 = bitcast %struct.mp_vdpau_mixer_opts* %207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %208, i8* align 4 %209, i64 4, i1 false)
  %210 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %211 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %214 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 8
  %215 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %216 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %219 = icmp ne i8* %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %204
  %221 = load %struct.vdp_functions*, %struct.vdp_functions** %14, align 8
  %222 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %221, i32 0, i32 1
  %223 = load i32 (i8*)*, i32 (i8*)** %222, align 8
  %224 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %225 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 %223(i8* %226)
  store i32 %227, i32* %15, align 4
  %228 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %229 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_mixer* %228, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %230

230:                                              ; preds = %220, %204
  %231 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %232 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %233 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %235 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %234, i32 0, i32 1
  store i32 0, i32* %235, align 8
  %236 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %237 = load i64, i64* %23, align 8
  %238 = load i64, i64* %24, align 8
  %239 = load i64, i64* %25, align 8
  %240 = call i64 @create_vdp_mixer(%struct.mp_vdpau_mixer* %236, i64 %237, i64 %238, i64 %239)
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  store i32 -1, i32* %7, align 4
  br label %272

243:                                              ; preds = %230
  br label %244

244:                                              ; preds = %243, %198
  %245 = load %struct.vdp_functions*, %struct.vdp_functions** %14, align 8
  %246 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %245, i32 0, i32 0
  %247 = load i32 (i8*, i8*, i32, i32, i32, i8**, i64, i32, i8**, %struct.TYPE_11__*, i64, i32*, %struct.TYPE_11__*, i32, i32*)*, i32 (i8*, i8*, i32, i32, i32, i8**, i64, i32, i8**, %struct.TYPE_11__*, i64, i32*, %struct.TYPE_11__*, i32, i32*)** %246, align 8
  %248 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %249 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %252 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %253 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @MP_VDP_HISTORY_FRAMES, align 4
  %256 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %257 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %256, i32 0, i32 2
  %258 = load i8**, i8*** %257, align 8
  %259 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %260 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @MP_VDP_HISTORY_FRAMES, align 4
  %263 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %20, align 8
  %264 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %263, i32 0, i32 1
  %265 = load i8**, i8*** %264, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %267 = load i64, i64* %10, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %269 = call i32 %247(i8* %250, i8* %251, i32 0, i32 %254, i32 %255, i8** %258, i64 %261, i32 %262, i8** %265, %struct.TYPE_11__* %266, i64 %267, i32* null, %struct.TYPE_11__* %268, i32 0, i32* null)
  store i32 %269, i32* %15, align 4
  %270 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %8, align 8
  %271 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_mixer* %270, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %244, %242, %90, %66, %58
  %273 = load i32, i32* %7, align 4
  ret i32 %273
}

declare dso_local i32 @mp_vdpau_handle_preemption(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_mixer*, i8*) #1

declare dso_local %struct.mp_vdpau_mixer_frame* @mp_vdpau_mixed_frame_get(%struct.mp_image*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mp_csp_equalizer_state_changed(i64) #1

declare dso_local i32 @CHECK_VDP_ERROR(%struct.mp_vdpau_mixer*, i8*) #1

declare dso_local i32 @opts_equal(%struct.mp_vdpau_mixer_opts*, %struct.mp_vdpau_mixer_opts*) #1

declare dso_local i32 @mp_image_params_equal(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @create_vdp_mixer(%struct.mp_vdpau_mixer*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
