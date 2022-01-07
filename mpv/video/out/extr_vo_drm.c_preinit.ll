; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { double, i32, %struct.TYPE_12__*, i32, %struct.priv* }
%struct.TYPE_12__ = type { double, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.priv = type { i32, double, %struct.TYPE_13__, i64, %struct.TYPE_11__*, %struct.TYPE_15__*, i64, i64, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { double, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32 }

@DRM_EVENT_CONTEXT_VERSION = common dso_local global i32 0, align 4
@drm_pflip_cb = common dso_local global i32 0, align 4
@acquire_vt = common dso_local global i32 0, align 4
@release_vt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Failed to set up VT switcher. Terminal switching will be unavailable.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to create KMS.\0A\00", align 1
@DRM_OPTS_FORMAT_XRGB2101010 = common dso_local global i64 0, align 8
@IMGFMT_XRGB2101010 = common dso_local global i32 0, align 4
@IMGFMT_XRGB8888 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to set up buffers.\0A\00", align 1
@DRM_CAP_DUMB_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Card \22%d\22 does not support dumb buffers.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot set CRTC: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Monitor pixel aspect: %g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 4
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = call %struct.TYPE_14__* @mp_sws_alloc(%struct.vo* %9)
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 12
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %12, align 8
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 12
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 12
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = load %struct.vo*, %struct.vo** %3, align 8
  %24 = getelementptr inbounds %struct.vo, %struct.vo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_14__* %22, i32 %25)
  %27 = load i32, i32* @DRM_EVENT_CONTEXT_VERSION, align 4
  %28 = load %struct.priv*, %struct.priv** %4, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32* @drm_pflip_cb, i32** %33, align 8
  %34 = load %struct.priv*, %struct.priv** %4, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 9
  %36 = load %struct.vo*, %struct.vo** %3, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @vt_switcher_init(i32* %35, i32 %38)
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 10
  store i64 %39, i64* %41, align 8
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %1
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 9
  %49 = load i32, i32* @acquire_vt, align 4
  %50 = load %struct.vo*, %struct.vo** %3, align 8
  %51 = call i32 @vt_switcher_acquire(i32* %48, i32 %49, %struct.vo* %50)
  %52 = load %struct.priv*, %struct.priv** %4, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 9
  %54 = load i32, i32* @release_vt, align 4
  %55 = load %struct.vo*, %struct.vo** %3, align 8
  %56 = call i32 @vt_switcher_release(i32* %53, i32 %54, %struct.vo* %55)
  br label %60

57:                                               ; preds = %1
  %58 = load %struct.vo*, %struct.vo** %3, align 8
  %59 = call i32 @MP_WARN(%struct.vo* %58, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.vo*, %struct.vo** %3, align 8
  %62 = getelementptr inbounds %struct.vo, %struct.vo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vo*, %struct.vo** %3, align 8
  %65 = getelementptr inbounds %struct.vo, %struct.vo* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vo*, %struct.vo** %3, align 8
  %72 = getelementptr inbounds %struct.vo, %struct.vo* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.TYPE_15__* @kms_create(i32 %63, i32 %70, i32 %77, i32 0, i32 0, i32 0)
  %79 = load %struct.priv*, %struct.priv** %4, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 5
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %80, align 8
  %81 = load %struct.priv*, %struct.priv** %4, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 5
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %60
  %86 = load %struct.vo*, %struct.vo** %3, align 8
  %87 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %224

88:                                               ; preds = %60
  %89 = load %struct.vo*, %struct.vo** %3, align 8
  %90 = getelementptr inbounds %struct.vo, %struct.vo* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DRM_OPTS_FORMAT_XRGB2101010, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.priv*, %struct.priv** %4, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 0
  store i32 30, i32* %100, align 8
  %101 = load i32, i32* @IMGFMT_XRGB2101010, align 4
  %102 = load %struct.priv*, %struct.priv** %4, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  br label %110

104:                                              ; preds = %88
  %105 = load %struct.priv*, %struct.priv** %4, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 0
  store i32 24, i32* %106, align 8
  %107 = load i32, i32* @IMGFMT_XRGB8888, align 4
  %108 = load %struct.priv*, %struct.priv** %4, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.vo*, %struct.vo** %3, align 8
  %112 = getelementptr inbounds %struct.vo, %struct.vo* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.priv*, %struct.priv** %4, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 6
  store i64 %115, i64* %117, align 8
  %118 = load %struct.priv*, %struct.priv** %4, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  %122 = load %struct.priv*, %struct.priv** %4, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  %124 = load %struct.vo*, %struct.vo** %3, align 8
  %125 = call i32 @fb_setup_buffers(%struct.vo* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %110
  %128 = load %struct.vo*, %struct.vo** %3, align 8
  %129 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %224

130:                                              ; preds = %110
  %131 = load %struct.priv*, %struct.priv** %4, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 5
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DRM_CAP_DUMB_BUFFER, align 4
  %137 = call i64 @drmGetCap(i32 %135, i32 %136, i32* %5)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %130
  %140 = load %struct.vo*, %struct.vo** %3, align 8
  %141 = load %struct.priv*, %struct.priv** %4, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 5
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %224

147:                                              ; preds = %130
  %148 = load %struct.priv*, %struct.priv** %4, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load double, double* %152, align 8
  %154 = load %struct.priv*, %struct.priv** %4, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 1
  store double %153, double* %155, align 8
  %156 = load %struct.priv*, %struct.priv** %4, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.priv*, %struct.priv** %4, align 8
  %163 = getelementptr inbounds %struct.priv, %struct.priv* %162, i32 0, i32 3
  store i64 %161, i64* %163, align 8
  %164 = load %struct.vo*, %struct.vo** %3, align 8
  %165 = call i32 @crtc_setup(%struct.vo* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %147
  %168 = load %struct.vo*, %struct.vo** %3, align 8
  %169 = load i32, i32* @errno, align 4
  %170 = call i32 @mp_strerror(i32 %169)
  %171 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %224

172:                                              ; preds = %147
  %173 = load %struct.vo*, %struct.vo** %3, align 8
  %174 = getelementptr inbounds %struct.vo, %struct.vo* %173, i32 0, i32 2
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load double, double* %176, align 8
  %178 = fcmp une double %177, 0.000000e+00
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = load %struct.priv*, %struct.priv** %4, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 1
  %182 = load double, double* %181, align 8
  %183 = load %struct.priv*, %struct.priv** %4, align 8
  %184 = getelementptr inbounds %struct.priv, %struct.priv* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = sitofp i64 %185 to double
  %187 = fdiv double %182, %186
  %188 = load %struct.vo*, %struct.vo** %3, align 8
  %189 = getelementptr inbounds %struct.vo, %struct.vo* %188, i32 0, i32 2
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load double, double* %191, align 8
  %193 = fdiv double %187, %192
  %194 = load %struct.vo*, %struct.vo** %3, align 8
  %195 = getelementptr inbounds %struct.vo, %struct.vo* %194, i32 0, i32 0
  store double %193, double* %195, align 8
  br label %206

196:                                              ; preds = %172
  %197 = load %struct.vo*, %struct.vo** %3, align 8
  %198 = getelementptr inbounds %struct.vo, %struct.vo* %197, i32 0, i32 2
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sdiv i32 1, %201
  %203 = sitofp i32 %202 to double
  %204 = load %struct.vo*, %struct.vo** %3, align 8
  %205 = getelementptr inbounds %struct.vo, %struct.vo* %204, i32 0, i32 0
  store double %203, double* %205, align 8
  br label %206

206:                                              ; preds = %196, %179
  %207 = load %struct.vo*, %struct.vo** %3, align 8
  %208 = getelementptr inbounds %struct.vo, %struct.vo* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.vo*, %struct.vo** %3, align 8
  %211 = getelementptr inbounds %struct.vo, %struct.vo* %210, i32 0, i32 0
  %212 = load double, double* %211, align 8
  %213 = fptosi double %212 to i32
  %214 = call i32 @mp_verbose(i32 %209, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %213)
  %215 = load %struct.priv*, %struct.priv** %4, align 8
  %216 = getelementptr inbounds %struct.priv, %struct.priv* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  store i64 0, i64* %217, align 8
  %218 = load %struct.priv*, %struct.priv** %4, align 8
  %219 = getelementptr inbounds %struct.priv, %struct.priv* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  store i32 -1, i32* %220, align 8
  %221 = load %struct.priv*, %struct.priv** %4, align 8
  %222 = getelementptr inbounds %struct.priv, %struct.priv* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  store i32 -1, i32* %223, align 4
  store i32 0, i32* %2, align 4
  br label %227

224:                                              ; preds = %167, %139, %127, %85
  %225 = load %struct.vo*, %struct.vo** %3, align 8
  %226 = call i32 @uninit(%struct.vo* %225)
  store i32 -1, i32* %2, align 4
  br label %227

227:                                              ; preds = %224, %206
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.TYPE_14__* @mp_sws_alloc(%struct.vo*) #1

declare dso_local i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @vt_switcher_init(i32*, i32) #1

declare dso_local i32 @vt_switcher_acquire(i32*, i32, %struct.vo*) #1

declare dso_local i32 @vt_switcher_release(i32*, i32, %struct.vo*) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*) #1

declare dso_local %struct.TYPE_15__* @kms_create(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*, ...) #1

declare dso_local i32 @fb_setup_buffers(%struct.vo*) #1

declare dso_local i64 @drmGetCap(i32, i32, i32*) #1

declare dso_local i32 @crtc_setup(%struct.vo*) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i32 @mp_verbose(i32, i8*, i32) #1

declare dso_local i32 @uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
