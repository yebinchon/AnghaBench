; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_mapper_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_mapper_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i8**, i32, %struct.TYPE_7__, %struct.TYPE_9__*, %struct.priv* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.priv = type { i32, i32*, i32, i32, i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.vdp_functions }
%struct.vdp_functions = type { i32 (i64, i32*, i32*, i32*)* }
%struct.TYPE_8__ = type { i32 (i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32*)* }
%struct.ra_tex_params = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Error when calling vdp_video_surface_get_parameters\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_map(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.vdp_functions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ra_tex_params, align 4
  %18 = alloca %struct.ra_tex_params, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %19 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %20 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %19, i32 0, i32 4
  %21 = load %struct.priv*, %struct.priv** %20, align 8
  store %struct.priv* %21, %struct.priv** %4, align 8
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 9
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %5, align 8
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store %struct.vdp_functions* %28, %struct.vdp_functions** %6, align 8
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load %struct.priv*, %struct.priv** %4, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 7
  %34 = call i32 @mp_vdpau_handle_preemption(%struct.TYPE_10__* %31, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %51

37:                                               ; preds = %1
  %38 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %39 = call i32 @mark_vdpau_objects_uninitialized(%struct.ra_hwdec_mapper* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %262

43:                                               ; preds = %37
  %44 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %45 = call i32 @mapper_uninit(%struct.ra_hwdec_mapper* %44)
  %46 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %47 = call i64 @mapper_init(%struct.ra_hwdec_mapper* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %262

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.priv*, %struct.priv** %4, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %191

56:                                               ; preds = %51
  %57 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %58 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %9, align 8
  %65 = load %struct.vdp_functions*, %struct.vdp_functions** %6, align 8
  %66 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %65, i32 0, i32 0
  %67 = load i32 (i64, i32*, i32*, i32*)*, i32 (i64, i32*, i32*, i32*)** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 %67(i64 %68, i32* %10, i32* %11, i32* %12)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %71 = call i32 @CHECK_VDP_ERROR(%struct.ra_hwdec_mapper* %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @BRAINDEATH(i64 %75)
  %77 = load i32, i32* @GL_TEXTURE_2D, align 4
  %78 = load %struct.priv*, %struct.priv** %4, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 %74(i32 %76, i32 %77, i32 4, i32* %80)
  %82 = load %struct.priv*, %struct.priv** %4, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.priv*, %struct.priv** %4, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %262

89:                                               ; preds = %56
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32 (i32, i32)*, i32 (i32, i32)** %91, align 8
  %93 = load %struct.priv*, %struct.priv** %4, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @GL_READ_ONLY, align 4
  %97 = call i32 %92(i32 %95, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (i32, i32*)*, i32 (i32, i32*)** %99, align 8
  %101 = load %struct.priv*, %struct.priv** %4, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 2
  %103 = call i32 %100(i32 1, i32* %102)
  %104 = load %struct.priv*, %struct.priv** %4, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %187, %89
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %190

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = icmp sge i32 %110, 2
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.priv*, %struct.priv** %4, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi i32 [ %119, %115 ], [ 1, %120 ]
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.priv*, %struct.priv** %4, align 8
  %127 = getelementptr inbounds %struct.priv, %struct.priv* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 2
  br label %132

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %125
  %133 = phi i32 [ %130, %125 ], [ 2, %131 ]
  store i32 %133, i32* %16, align 4
  %134 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 0
  store i32 2, i32* %134, align 4
  %135 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 1
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %15, align 4
  %138 = sdiv i32 %136, %137
  store i32 %138, i32* %135, align 4
  %139 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 2
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %16, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %139, align 4
  %143 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 3
  store i32 1, i32* %143, align 4
  %144 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 4
  store i32 1, i32* %144, align 4
  %145 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 5
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 6
  %147 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %148 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 2, i32 1
  %154 = call i32 @ra_find_unorm_format(i32 %149, i32 1, i32 %153)
  store i32 %154, i32* %146, align 4
  %155 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %17, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %132
  store i32 -1, i32* %2, align 4
  br label %262

159:                                              ; preds = %132
  %160 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %161 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.priv*, %struct.priv** %4, align 8
  %164 = getelementptr inbounds %struct.priv, %struct.priv* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @ra_create_wrapped_tex(i32 %162, %struct.ra_tex_params* %17, i32 %169)
  %171 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %172 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %170, i8** %176, align 8
  %177 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %178 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %177, i32 0, i32 0
  %179 = load i8**, i8*** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %159
  store i32 -1, i32* %2, align 4
  br label %262

186:                                              ; preds = %159
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %106

190:                                              ; preds = %106
  br label %261

191:                                              ; preds = %51
  %192 = load %struct.priv*, %struct.priv** %4, align 8
  %193 = getelementptr inbounds %struct.priv, %struct.priv* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  store i32 -1, i32* %2, align 4
  br label %262

197:                                              ; preds = %191
  %198 = load %struct.priv*, %struct.priv** %4, align 8
  %199 = getelementptr inbounds %struct.priv, %struct.priv* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.priv*, %struct.priv** %4, align 8
  %202 = getelementptr inbounds %struct.priv, %struct.priv* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %205 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %204, i32 0, i32 3
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = call i32 @mp_vdpau_mixer_render(i32 %200, i32* null, i32 %203, i32* null, %struct.TYPE_9__* %206, i32* null)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32 (i32, i32*)*, i32 (i32, i32*)** %209, align 8
  %211 = load %struct.priv*, %struct.priv** %4, align 8
  %212 = getelementptr inbounds %struct.priv, %struct.priv* %211, i32 0, i32 2
  %213 = call i32 %210(i32 1, i32* %212)
  %214 = load %struct.priv*, %struct.priv** %4, align 8
  %215 = getelementptr inbounds %struct.priv, %struct.priv* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 0
  store i32 2, i32* %216, align 4
  %217 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 1
  %218 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %219 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %217, align 4
  %222 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 2
  %223 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %224 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %222, align 4
  %227 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 3
  store i32 1, i32* %227, align 4
  %228 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 4
  store i32 1, i32* %228, align 4
  %229 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 5
  store i32 1, i32* %229, align 4
  %230 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 6
  %231 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %232 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ra_find_unorm_format(i32 %233, i32 1, i32 4)
  store i32 %234, i32* %230, align 4
  %235 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %18, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %197
  store i32 -1, i32* %2, align 4
  br label %262

239:                                              ; preds = %197
  %240 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %241 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.priv*, %struct.priv** %4, align 8
  %244 = getelementptr inbounds %struct.priv, %struct.priv* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @ra_create_wrapped_tex(i32 %242, %struct.ra_tex_params* %18, i32 %247)
  %249 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %250 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %249, i32 0, i32 0
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 0
  store i8* %248, i8** %252, align 8
  %253 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %254 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %253, i32 0, i32 0
  %255 = load i8**, i8*** %254, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 0
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %239
  store i32 -1, i32* %2, align 4
  br label %262

260:                                              ; preds = %239
  br label %261

261:                                              ; preds = %260, %190
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %261, %259, %238, %196, %185, %158, %88, %49, %42
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @mp_vdpau_handle_preemption(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mark_vdpau_objects_uninitialized(%struct.ra_hwdec_mapper*) #1

declare dso_local i32 @mapper_uninit(%struct.ra_hwdec_mapper*) #1

declare dso_local i64 @mapper_init(%struct.ra_hwdec_mapper*) #1

declare dso_local i32 @CHECK_VDP_ERROR(%struct.ra_hwdec_mapper*, i8*) #1

declare dso_local i32 @BRAINDEATH(i64) #1

declare dso_local i32 @ra_find_unorm_format(i32, i32, i32) #1

declare dso_local i8* @ra_create_wrapped_tex(i32, %struct.ra_tex_params*, i32) #1

declare dso_local i32 @mp_vdpau_mixer_render(i32, i32*, i32, i32*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
