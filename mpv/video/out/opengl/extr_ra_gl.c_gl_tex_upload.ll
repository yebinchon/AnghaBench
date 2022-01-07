; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_upload.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i64 }
%struct.ra_tex_upload_params = type { i8*, i32, %struct.mp_rect*, i64, i64, %struct.ra_buf*, %struct.ra_tex* }
%struct.mp_rect = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.ra_buf = type { %struct.TYPE_7__, %struct.ra_buf_gl* }
%struct.TYPE_7__ = type { i64 }
%struct.ra_buf_gl = type { i32, i32 }
%struct.ra_tex = type { %struct.TYPE_6__, %struct.ra_tex_gl* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.ra_tex_gl = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32)* }

@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@GL_SYNC_GPU_COMMANDS_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_tex_upload_params*)* @gl_tex_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_tex_upload(%struct.ra* %0, %struct.ra_tex_upload_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_tex_upload_params*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.ra_tex*, align 8
  %8 = alloca %struct.ra_buf*, align 8
  %9 = alloca %struct.ra_tex_gl*, align 8
  %10 = alloca %struct.ra_buf_gl*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mp_rect, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_tex_upload_params* %1, %struct.ra_tex_upload_params** %5, align 8
  %13 = load %struct.ra*, %struct.ra** %4, align 8
  %14 = call %struct.TYPE_8__* @ra_gl_get(%struct.ra* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %16 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %15, i32 0, i32 6
  %17 = load %struct.ra_tex*, %struct.ra_tex** %16, align 8
  store %struct.ra_tex* %17, %struct.ra_tex** %7, align 8
  %18 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %19 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %18, i32 0, i32 5
  %20 = load %struct.ra_buf*, %struct.ra_buf** %19, align 8
  store %struct.ra_buf* %20, %struct.ra_buf** %8, align 8
  %21 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %22 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %21, i32 0, i32 1
  %23 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %22, align 8
  store %struct.ra_tex_gl* %23, %struct.ra_tex_gl** %9, align 8
  %24 = load %struct.ra_buf*, %struct.ra_buf** %8, align 8
  %25 = icmp ne %struct.ra_buf* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.ra_buf*, %struct.ra_buf** %8, align 8
  %28 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %27, i32 0, i32 1
  %29 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %28, align 8
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi %struct.ra_buf_gl* [ %29, %26 ], [ null, %30 ]
  store %struct.ra_buf_gl* %32, %struct.ra_buf_gl** %10, align 8
  %33 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %34 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %39 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %38, i32 0, i32 5
  %40 = load %struct.ra_buf*, %struct.ra_buf** %39, align 8
  %41 = icmp ne %struct.ra_buf* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %44 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %31
  %49 = phi i1 [ true, %31 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.ra*, %struct.ra** %4, align 8
  %53 = getelementptr inbounds %struct.ra, %struct.ra* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %58 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %57, i32 0, i32 5
  %59 = load %struct.ra_buf*, %struct.ra_buf** %58, align 8
  %60 = icmp ne %struct.ra_buf* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.ra*, %struct.ra** %4, align 8
  %63 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %64 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %63, i32 0, i32 5
  %65 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %66 = call i32 @ra_tex_upload_pbo(%struct.ra* %62, i32* %64, %struct.ra_tex_upload_params* %65)
  store i32 %66, i32* %3, align 4
  br label %276

67:                                               ; preds = %56, %48
  %68 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %69 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %11, align 8
  %71 = load %struct.ra_buf*, %struct.ra_buf** %8, align 8
  %72 = icmp ne %struct.ra_buf* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %75, align 8
  %77 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %78 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %10, align 8
  %79 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %76(i32 %77, i32 %80)
  %82 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %83 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %73, %67
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32 (i32, i32)*, i32 (i32, i32)** %88, align 8
  %90 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %91 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %94 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %89(i32 %92, i32 %95)
  %97 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %98 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %86
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 7
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = icmp ne i32 (i32, i32)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 7
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %111 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 %109(i32 %112, i32 0)
  br label %114

114:                                              ; preds = %106, %101, %86
  %115 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %116 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %238 [
    i32 1, label %119
    i32 2, label %141
    i32 3, label %200
  ]

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load i32 (i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i8*)** %121, align 8
  %123 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %124 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %127 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %130 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %134 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %137 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 %122(i32 %125, i32 0, i32 %128, i32 %132, i32 0, i32 %135, i32 %138, i8* %139)
  br label %238

141:                                              ; preds = %114
  %142 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 2
  %145 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %146 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %144, align 8
  %150 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 3
  %151 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %152 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %150, align 8
  %156 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 4
  store i32 0, i32* %156, align 8
  %157 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 5
  store i32 0, i32* %157, align 4
  %158 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 6
  store i32 0, i32* %158, align 8
  %159 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 7
  store i32 0, i32* %159, align 4
  %160 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %161 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %160, i32 0, i32 2
  %162 = load %struct.mp_rect*, %struct.mp_rect** %161, align 8
  %163 = icmp ne %struct.mp_rect* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %141
  %165 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %166 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %165, i32 0, i32 2
  %167 = load %struct.mp_rect*, %struct.mp_rect** %166, align 8
  %168 = bitcast %struct.mp_rect* %12 to i8*
  %169 = bitcast %struct.mp_rect* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 48, i1 false)
  br label %170

170:                                              ; preds = %164, %141
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %173 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %176 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %179 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %11, align 8
  %182 = load %struct.ra_tex_upload_params*, %struct.ra_tex_upload_params** %5, align 8
  %183 = getelementptr inbounds %struct.ra_tex_upload_params, %struct.ra_tex_upload_params* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %190, %192
  %194 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %12, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %195, %197
  %199 = call i32 @gl_upload_tex(%struct.TYPE_8__* %171, i32 %174, i32 %177, i32 %180, i8* %181, i32 %184, i64 %186, i64 %188, i64 %193, i64 %198)
  br label %238

200:                                              ; preds = %114
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 4
  %203 = load i32 (i32, i32)*, i32 (i32, i32)** %202, align 8
  %204 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %205 = call i32 %203(i32 %204, i32 1)
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 5
  %208 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*)** %207, align 8
  %209 = load i32, i32* @GL_TEXTURE_3D, align 4
  %210 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %211 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %214 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %218 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %222 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %226 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %229 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 %208(i32 %209, i32 0, i32 %212, i32 %216, i32 %220, i32 %224, i32 0, i32 %227, i32 %230, i8* %231)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 4
  %235 = load i32 (i32, i32)*, i32 (i32, i32)** %234, align 8
  %236 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %237 = call i32 %235(i32 %236, i32 4)
  br label %238

238:                                              ; preds = %114, %200, %170, %119
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  %241 = load i32 (i32, i32)*, i32 (i32, i32)** %240, align 8
  %242 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %243 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 %241(i32 %244, i32 0)
  %246 = load %struct.ra_buf*, %struct.ra_buf** %8, align 8
  %247 = icmp ne %struct.ra_buf* %246, null
  br i1 %247, label %248, label %275

248:                                              ; preds = %238
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i32 (i32, i32)*, i32 (i32, i32)** %250, align 8
  %252 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %253 = call i32 %251(i32 %252, i32 0)
  %254 = load %struct.ra_buf*, %struct.ra_buf** %8, align 8
  %255 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %248
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i32 (i32)*, i32 (i32)** %261, align 8
  %263 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %10, align 8
  %264 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 %262(i32 %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32 (i32, i32)*, i32 (i32, i32)** %268, align 8
  %270 = load i32, i32* @GL_SYNC_GPU_COMMANDS_COMPLETE, align 4
  %271 = call i32 %269(i32 %270, i32 0)
  %272 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %10, align 8
  %273 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %259, %248
  br label %275

275:                                              ; preds = %274, %238
  store i32 1, i32* %3, align 4
  br label %276

276:                                              ; preds = %275, %61
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.TYPE_8__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ra_tex_upload_pbo(%struct.ra*, i32*, %struct.ra_tex_upload_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gl_upload_tex(%struct.TYPE_8__*, i32, i32, i32, i8*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
