; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_get_bitmaps.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_get_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.mp_subtitle_opts*, %struct.sd_lavc_priv* }
%struct.mp_subtitle_opts = type { i32, double, i64, i64, i64, i64 }
%struct.sd_lavc_priv = type { double, i64, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.sub_bitmap* }
%struct.TYPE_4__ = type { double, i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.sub_bitmap = type { i32, float, float, float }
%struct.mp_osd_res = type { i64, i64, i64, i64 }
%struct.sub_bitmaps = type { i32, %struct.sub_bitmap*, i32, i32, i32, i32, i32 }
%struct.sub = type { i32, i64, i32, i32, i32, i32, i32, %struct.sub_bitmap* }

@SUBBITMAP_RGBA = common dso_local global i32 0, align 4
@AV_CODEC_ID_DVD_SUBTITLE = common dso_local global i64 0, align 8
@AV_CODEC_ID_HDMV_PGS_SUBTITLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, %struct.mp_osd_res*, i32, double, %struct.sub_bitmaps*)* @get_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_bitmaps(%struct.sd* %0, %struct.mp_osd_res* byval(%struct.mp_osd_res) align 8 %1, i32 %2, double %3, %struct.sub_bitmaps* %4) #0 {
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.sub_bitmaps*, align 8
  %10 = alloca %struct.sd_lavc_priv*, align 8
  %11 = alloca %struct.mp_subtitle_opts*, align 8
  %12 = alloca %struct.sub*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sub_bitmap*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sub_bitmap*, align 8
  %23 = alloca float, align 4
  store %struct.sd* %0, %struct.sd** %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  store %struct.sub_bitmaps* %4, %struct.sub_bitmaps** %9, align 8
  %24 = load %struct.sd*, %struct.sd** %6, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %25, align 8
  store %struct.sd_lavc_priv* %26, %struct.sd_lavc_priv** %10, align 8
  %27 = load %struct.sd*, %struct.sd** %6, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %28, align 8
  store %struct.mp_subtitle_opts* %29, %struct.mp_subtitle_opts** %11, align 8
  %30 = load double, double* %8, align 8
  %31 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %32 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %31, i32 0, i32 0
  store double %30, double* %32, align 8
  %33 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %34 = load double, double* %8, align 8
  %35 = call %struct.sub* @get_current(%struct.sd_lavc_priv* %33, double %34)
  store %struct.sub* %35, %struct.sub** %12, align 8
  %36 = load %struct.sub*, %struct.sub** %12, align 8
  %37 = icmp ne %struct.sub* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  br label %351

39:                                               ; preds = %5
  %40 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %41 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %42 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %41, i32 0, i32 4
  %43 = load %struct.sub_bitmap*, %struct.sub_bitmap** %42, align 8
  %44 = load %struct.sub*, %struct.sub** %12, align 8
  %45 = getelementptr inbounds %struct.sub, %struct.sub* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @MP_TARRAY_GROW(%struct.sd_lavc_priv* %40, %struct.sub_bitmap* %43, i32 %46)
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %69, %39
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.sub*, %struct.sub** %12, align 8
  %51 = getelementptr inbounds %struct.sub, %struct.sub* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %56 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %55, i32 0, i32 4
  %57 = load %struct.sub_bitmap*, %struct.sub_bitmap** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %57, i64 %59
  %61 = load %struct.sub*, %struct.sub** %12, align 8
  %62 = getelementptr inbounds %struct.sub, %struct.sub* %61, i32 0, i32 7
  %63 = load %struct.sub_bitmap*, %struct.sub_bitmap** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %63, i64 %65
  %67 = bitcast %struct.sub_bitmap* %60 to i8*
  %68 = bitcast %struct.sub_bitmap* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 16, i1 false)
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %74 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %73, i32 0, i32 4
  %75 = load %struct.sub_bitmap*, %struct.sub_bitmap** %74, align 8
  %76 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %77 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %76, i32 0, i32 1
  store %struct.sub_bitmap* %75, %struct.sub_bitmap** %77, align 8
  %78 = load %struct.sub*, %struct.sub** %12, align 8
  %79 = getelementptr inbounds %struct.sub, %struct.sub* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %82 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %84 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sub*, %struct.sub** %12, align 8
  %87 = getelementptr inbounds %struct.sub, %struct.sub* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %92 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %72
  %96 = load %struct.sub*, %struct.sub** %12, align 8
  %97 = getelementptr inbounds %struct.sub, %struct.sub* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %100 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.sub*, %struct.sub** %12, align 8
  %102 = getelementptr inbounds %struct.sub, %struct.sub* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %105 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sub*, %struct.sub** %12, align 8
  %107 = getelementptr inbounds %struct.sub, %struct.sub* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %110 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sub*, %struct.sub** %12, align 8
  %112 = getelementptr inbounds %struct.sub, %struct.sub* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %115 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @SUBBITMAP_RGBA, align 4
  %117 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %118 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  store double 0.000000e+00, double* %14, align 8
  %119 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %120 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AV_CODEC_ID_DVD_SUBTITLE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %95
  %127 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %128 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %126
  %132 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %133 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %137 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = sitofp i64 %139 to double
  %141 = fdiv double %135, %140
  store double %141, double* %15, align 8
  %142 = load double, double* %15, align 8
  %143 = call i64 @isnormal(double %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = load double, double* %15, align 8
  store double %146, double* %14, align 8
  br label %147

147:                                              ; preds = %145, %131
  br label %148

148:                                              ; preds = %147, %126, %95
  %149 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %150 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AV_CODEC_ID_HDMV_PGS_SUBTITLE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store double -1.000000e+00, double* %14, align 8
  br label %157

157:                                              ; preds = %156, %148
  %158 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %159 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %1, i32 0, i32 0
  store i64 0, i64* %163, align 8
  %164 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %1, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %1, i32 0, i32 2
  store i64 0, i64* %165, align 8
  %166 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %1, i32 0, i32 3
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %169 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %168, i32 0, i32 3
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %16, align 4
  %173 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %174 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %173, i32 0, i32 3
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %167
  %181 = load i32, i32* %17, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %180
  %184 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %185 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183, %180, %167
  %189 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %190 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %16, align 4
  %193 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %194 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %17, align 4
  br label %197

197:                                              ; preds = %188, %183
  %198 = load %struct.sub*, %struct.sub** %12, align 8
  %199 = getelementptr inbounds %struct.sub, %struct.sub* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %197
  %204 = load %struct.sub*, %struct.sub** %12, align 8
  %205 = getelementptr inbounds %struct.sub, %struct.sub* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %17, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %203, %197
  %210 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %211 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %16, align 4
  %214 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %10, align 8
  %215 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %17, align 4
  br label %218

218:                                              ; preds = %209, %203
  %219 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %220 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 100
  br i1 %222, label %223, label %272

223:                                              ; preds = %218
  %224 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %225 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %272

228:                                              ; preds = %223
  %229 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %230 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 100, %231
  %233 = sitofp i32 %232 to double
  %234 = fdiv double %233, 1.000000e+02
  %235 = load i32, i32* %17, align 4
  %236 = sitofp i32 %235 to double
  %237 = fmul double %234, %236
  %238 = fptosi double %237 to i32
  store i32 %238, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %239

239:                                              ; preds = %268, %228
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %242 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %271

245:                                              ; preds = %239
  %246 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %247 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %246, i32 0, i32 1
  %248 = load %struct.sub_bitmap*, %struct.sub_bitmap** %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %248, i64 %250
  store %struct.sub_bitmap* %251, %struct.sub_bitmap** %20, align 8
  %252 = load %struct.sub_bitmap*, %struct.sub_bitmap** %20, align 8
  %253 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %17, align 4
  %256 = sdiv i32 %255, 2
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %245
  br label %268

259:                                              ; preds = %245
  %260 = load %struct.sub_bitmap*, %struct.sub_bitmap** %20, align 8
  %261 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %18, align 4
  %264 = sub nsw i32 %262, %263
  %265 = call i32 @MPMAX(i32 %264, i32 0)
  %266 = load %struct.sub_bitmap*, %struct.sub_bitmap** %20, align 8
  %267 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %259, %258
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %19, align 4
  br label %239

271:                                              ; preds = %239
  br label %272

272:                                              ; preds = %271, %223, %218
  %273 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load double, double* %14, align 8
  %277 = call i32 @osd_rescale_bitmaps(%struct.sub_bitmaps* %273, i32 %274, i32 %275, %struct.mp_osd_res* byval(%struct.mp_osd_res) align 8 %1, double %276)
  %278 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %279 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %278, i32 0, i32 1
  %280 = load double, double* %279, align 8
  %281 = fcmp une double %280, 1.000000e+00
  br i1 %281, label %282, label %351

282:                                              ; preds = %272
  %283 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %284 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %351

287:                                              ; preds = %282
  store i32 0, i32* %21, align 4
  br label %288

288:                                              ; preds = %347, %287
  %289 = load i32, i32* %21, align 4
  %290 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %291 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %350

294:                                              ; preds = %288
  %295 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %9, align 8
  %296 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %295, i32 0, i32 1
  %297 = load %struct.sub_bitmap*, %struct.sub_bitmap** %296, align 8
  %298 = load i32, i32* %21, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %297, i64 %299
  store %struct.sub_bitmap* %300, %struct.sub_bitmap** %22, align 8
  %301 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %302 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %301, i32 0, i32 1
  %303 = load double, double* %302, align 8
  %304 = fsub double %303, 1.000000e+00
  %305 = fdiv double %304, 2.000000e+00
  %306 = fptrunc double %305 to float
  store float %306, float* %23, align 4
  %307 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %308 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %307, i32 0, i32 2
  %309 = load float, float* %308, align 4
  %310 = load float, float* %23, align 4
  %311 = fmul float %309, %310
  %312 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %313 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %312, i32 0, i32 1
  %314 = load float, float* %313, align 4
  %315 = fsub float %314, %311
  store float %315, float* %313, align 4
  %316 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %317 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %316, i32 0, i32 3
  %318 = load float, float* %317, align 4
  %319 = load float, float* %23, align 4
  %320 = fmul float %318, %319
  %321 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %322 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = sitofp i32 %323 to float
  %325 = fsub float %324, %320
  %326 = fptosi float %325 to i32
  store i32 %326, i32* %322, align 4
  %327 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %328 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %327, i32 0, i32 2
  %329 = load float, float* %328, align 4
  %330 = load float, float* %23, align 4
  %331 = fmul float %329, %330
  %332 = fmul float %331, 2.000000e+00
  %333 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %334 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %333, i32 0, i32 2
  %335 = load float, float* %334, align 4
  %336 = fadd float %335, %332
  store float %336, float* %334, align 4
  %337 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %338 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %337, i32 0, i32 3
  %339 = load float, float* %338, align 4
  %340 = load float, float* %23, align 4
  %341 = fmul float %339, %340
  %342 = fmul float %341, 2.000000e+00
  %343 = load %struct.sub_bitmap*, %struct.sub_bitmap** %22, align 8
  %344 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %343, i32 0, i32 3
  %345 = load float, float* %344, align 4
  %346 = fadd float %345, %342
  store float %346, float* %344, align 4
  br label %347

347:                                              ; preds = %294
  %348 = load i32, i32* %21, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %21, align 4
  br label %288

350:                                              ; preds = %288
  br label %351

351:                                              ; preds = %38, %350, %282, %272
  ret void
}

declare dso_local %struct.sub* @get_current(%struct.sd_lavc_priv*, double) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.sd_lavc_priv*, %struct.sub_bitmap*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @isnormal(double) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @osd_rescale_bitmaps(%struct.sub_bitmaps*, i32, i32, %struct.mp_osd_res* byval(%struct.mp_osd_res) align 8, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
