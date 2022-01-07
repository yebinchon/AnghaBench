; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, i32, %struct.priv*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.priv = type { i32, i32, i32, i32*, i32, %struct.TYPE_13__*, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, %struct.vdp_functions }
%struct.vdp_functions = type { i32 (i32, i32, i32, i32, i32*)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 (i32, i32, i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32)* }
%struct.TYPE_9__ = type { %struct.priv_owner* }
%struct.priv_owner = type { %struct.TYPE_13__* }

@VDP_INVALID_HANDLE = common dso_local global i32 0, align 4
@IMGFMT_NV12 = common dso_local global i32 0, align 4
@IMGFMT_NV24 = common dso_local global i32 0, align 4
@IMGFMT_420P = common dso_local global i32 0, align 4
@IMGFMT_444P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported format: %s\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@VDP_RGBA_FORMAT_B8G8R8A8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error when calling vdp_output_surface_create\00", align 1
@GL_READ_ONLY = common dso_local global i32 0, align 4
@IMGFMT_RGB0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"After initializing vdpau OpenGL interop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.vdp_functions*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 6
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.priv_owner*, %struct.priv_owner** %14, align 8
  store %struct.priv_owner* %15, %struct.priv_owner** %4, align 8
  %16 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %17 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %16, i32 0, i32 5
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %5, align 8
  %19 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %20 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_11__* @ra_gl_get(i32 %21)
  %23 = load %struct.priv*, %struct.priv** %5, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 9
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %26 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = load %struct.priv*, %struct.priv** %5, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 5
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %29, align 8
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 9
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.priv*, %struct.priv** %5, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 5
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  store %struct.vdp_functions* %36, %struct.vdp_functions** %7, align 8
  %37 = load i32, i32* @VDP_INVALID_HANDLE, align 4
  %38 = load %struct.priv*, %struct.priv** %5, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.priv*, %struct.priv** %5, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 5
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %44 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mp_vdpau_mixer_create(%struct.TYPE_13__* %42, i32 %45)
  %47 = load %struct.priv*, %struct.priv** %5, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.priv*, %struct.priv** %5, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %331

54:                                               ; preds = %1
  %55 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %56 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %55, i32 0, i32 2
  %57 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %58 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %57, i32 0, i32 3
  %59 = bitcast %struct.TYPE_10__* %56 to i8*
  %60 = bitcast %struct.TYPE_10__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load %struct.priv*, %struct.priv** %5, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 5
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load %struct.priv*, %struct.priv** %5, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 7
  %66 = call i64 @mp_vdpau_handle_preemption(%struct.TYPE_13__* %63, i32* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %331

69:                                               ; preds = %54
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load %struct.priv*, %struct.priv** %5, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 5
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @BRAINDEATH(i32 %77)
  %79 = load %struct.priv*, %struct.priv** %5, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 5
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %72(i32 %78, i32 %83)
  %85 = load %struct.priv*, %struct.priv** %5, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %88 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IMGFMT_NV12, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %114, label %93

93:                                               ; preds = %69
  %94 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %95 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IMGFMT_NV24, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %114, label %100

100:                                              ; preds = %93
  %101 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %102 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IMGFMT_420P, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %109 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IMGFMT_444P, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %107, %100, %93, %69
  %115 = phi i1 [ true, %100 ], [ true, %93 ], [ true, %69 ], [ %113, %107 ]
  %116 = zext i1 %115 to i32
  %117 = load %struct.priv*, %struct.priv** %5, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.priv*, %struct.priv** %5, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %123 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load i32 (i32, i32*)*, i32 (i32, i32*)** %125, align 8
  %127 = load %struct.priv*, %struct.priv** %5, align 8
  %128 = getelementptr inbounds %struct.priv, %struct.priv* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 %126(i32 4, i32* %129)
  %131 = load %struct.priv*, %struct.priv** %5, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %224

135:                                              ; preds = %114
  %136 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %137 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %9, align 4
  %140 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %141 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.priv*, %struct.priv** %5, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 6
  %146 = call i32 @ra_get_imgfmt_desc(i32 %142, i32 %143, %struct.TYPE_12__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %135
  %149 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @mp_imgfmt_to_name(i32 %150)
  %152 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %151)
  store i32 -1, i32* %2, align 4
  br label %331

153:                                              ; preds = %135
  %154 = load %struct.priv*, %struct.priv** %5, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @IMGFMT_NV24, align 4
  br label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @IMGFMT_NV12, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %166 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %169 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %220, %163
  %172 = load i32, i32* %10, align 4
  %173 = icmp slt i32 %172, 4
  br i1 %173, label %174, label %223

174:                                              ; preds = %171
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i32 (i32, i32)*, i32 (i32, i32)** %176, align 8
  %178 = load i32, i32* @GL_TEXTURE_2D, align 4
  %179 = load %struct.priv*, %struct.priv** %5, align 8
  %180 = getelementptr inbounds %struct.priv, %struct.priv* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 %177(i32 %178, i32 %185)
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %188, align 8
  %190 = load i32, i32* @GL_TEXTURE_2D, align 4
  %191 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %192 = load i32, i32* @GL_NEAREST, align 4
  %193 = call i32 %189(i32 %190, i32 %191, i32 %192)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %195, align 8
  %197 = load i32, i32* @GL_TEXTURE_2D, align 4
  %198 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %199 = load i32, i32* @GL_NEAREST, align 4
  %200 = call i32 %196(i32 %197, i32 %198, i32 %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 3
  %203 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %202, align 8
  %204 = load i32, i32* @GL_TEXTURE_2D, align 4
  %205 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %206 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %207 = call i32 %203(i32 %204, i32 %205, i32 %206)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %209, align 8
  %211 = load i32, i32* @GL_TEXTURE_2D, align 4
  %212 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %213 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %214 = call i32 %210(i32 %211, i32 %212, i32 %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i32 (i32, i32)*, i32 (i32, i32)** %216, align 8
  %218 = load i32, i32* @GL_TEXTURE_2D, align 4
  %219 = call i32 %217(i32 %218, i32 0)
  br label %220

220:                                              ; preds = %174
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %171

223:                                              ; preds = %171
  br label %325

224:                                              ; preds = %114
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = load i32 (i32, i32)*, i32 (i32, i32)** %226, align 8
  %228 = load i32, i32* @GL_TEXTURE_2D, align 4
  %229 = load %struct.priv*, %struct.priv** %5, align 8
  %230 = getelementptr inbounds %struct.priv, %struct.priv* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 %227(i32 %228, i32 %233)
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %236, align 8
  %238 = load i32, i32* @GL_TEXTURE_2D, align 4
  %239 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %240 = load i32, i32* @GL_LINEAR, align 4
  %241 = call i32 %237(i32 %238, i32 %239, i32 %240)
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  %244 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %243, align 8
  %245 = load i32, i32* @GL_TEXTURE_2D, align 4
  %246 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %247 = load i32, i32* @GL_LINEAR, align 4
  %248 = call i32 %244(i32 %245, i32 %246, i32 %247)
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 3
  %251 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %250, align 8
  %252 = load i32, i32* @GL_TEXTURE_2D, align 4
  %253 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %254 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %255 = call i32 %251(i32 %252, i32 %253, i32 %254)
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 3
  %258 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %257, align 8
  %259 = load i32, i32* @GL_TEXTURE_2D, align 4
  %260 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %261 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %262 = call i32 %258(i32 %259, i32 %260, i32 %261)
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = load i32 (i32, i32)*, i32 (i32, i32)** %264, align 8
  %266 = load i32, i32* @GL_TEXTURE_2D, align 4
  %267 = call i32 %265(i32 %266, i32 0)
  %268 = load %struct.vdp_functions*, %struct.vdp_functions** %7, align 8
  %269 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %268, i32 0, i32 0
  %270 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %269, align 8
  %271 = load %struct.priv*, %struct.priv** %5, align 8
  %272 = getelementptr inbounds %struct.priv, %struct.priv* %271, i32 0, i32 5
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @VDP_RGBA_FORMAT_B8G8R8A8, align 4
  %277 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %278 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %282 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.priv*, %struct.priv** %5, align 8
  %286 = getelementptr inbounds %struct.priv, %struct.priv* %285, i32 0, i32 4
  %287 = call i32 %270(i32 %275, i32 %276, i32 %280, i32 %284, i32* %286)
  store i32 %287, i32* %8, align 4
  %288 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %289 = call i32 @CHECK_VDP_ERROR(%struct.ra_hwdec_mapper* %288, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  %292 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %291, align 8
  %293 = load %struct.priv*, %struct.priv** %5, align 8
  %294 = getelementptr inbounds %struct.priv, %struct.priv* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @BRAINDEATH(i32 %295)
  %297 = load i32, i32* @GL_TEXTURE_2D, align 4
  %298 = load %struct.priv*, %struct.priv** %5, align 8
  %299 = getelementptr inbounds %struct.priv, %struct.priv* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 %292(i32 %296, i32 %297, i32 1, i32* %300)
  %302 = load %struct.priv*, %struct.priv** %5, align 8
  %303 = getelementptr inbounds %struct.priv, %struct.priv* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  %304 = load %struct.priv*, %struct.priv** %5, align 8
  %305 = getelementptr inbounds %struct.priv, %struct.priv* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %224
  store i32 -1, i32* %2, align 4
  br label %331

309:                                              ; preds = %224
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i32 (i32, i32)*, i32 (i32, i32)** %311, align 8
  %313 = load %struct.priv*, %struct.priv** %5, align 8
  %314 = getelementptr inbounds %struct.priv, %struct.priv* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @GL_READ_ONLY, align 4
  %317 = call i32 %312(i32 %315, i32 %316)
  %318 = load i32, i32* @IMGFMT_RGB0, align 4
  %319 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %320 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  store i32 %318, i32* %321, align 4
  %322 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %323 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %309, %223
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %327 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %328 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @gl_check_error(%struct.TYPE_11__* %326, i32 %329, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %325, %308, %148, %68, %53
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local %struct.TYPE_11__* @ra_gl_get(i32) #1

declare dso_local i32 @mp_vdpau_mixer_create(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_vdpau_handle_preemption(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @BRAINDEATH(i32) #1

declare dso_local i32 @ra_get_imgfmt_desc(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @mp_imgfmt_to_name(i32) #1

declare dso_local i32 @CHECK_VDP_ERROR(%struct.ra_hwdec_mapper*, i8*) #1

declare dso_local i32 @gl_check_error(%struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
