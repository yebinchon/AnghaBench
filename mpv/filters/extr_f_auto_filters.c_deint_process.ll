; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_deint_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_deint_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.deint_priv* }
%struct.deint_priv = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.mp_filter*, %struct.mp_frame }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_image = type { i64 }
%struct.TYPE_7__ = type { %struct.filter_opts* }
%struct.filter_opts = type { i64 }
%struct.mp_autoconvert = type { %struct.mp_filter* }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"video input required!\0A\00", align 1
@IMGFMT_VDPAU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"deint\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@__const.deint_process.args = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@MP_OUTPUT_CHAIN_VIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vdpaupp\00", align 1
@IMGFMT_D3D11 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"d3d11vpp\00", align 1
@IMGFMT_CUDA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"send_field\00", align 1
@__const.deint_process.args.7 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"yadif_cuda\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"no deinterlace filter available for format %s\0A\00", align 1
@__const.deint_process.args.10 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"yadif\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"creating deinterlacer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @deint_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deint_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.deint_priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.filter_opts*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca [3 x i8*], align 16
  %9 = alloca %struct.mp_filter*, align 8
  %10 = alloca [2 x %struct.mp_filter*], align 16
  %11 = alloca %struct.mp_autoconvert*, align 8
  %12 = alloca [3 x i8*], align 16
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %14 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %13, i32 0, i32 1
  %15 = load %struct.deint_priv*, %struct.deint_priv** %14, align 8
  store %struct.deint_priv* %15, %struct.deint_priv** %3, align 8
  %16 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %17 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %16, i32 0, i32 2
  %18 = call i32 @mp_subfilter_read(%struct.TYPE_6__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %238

21:                                               ; preds = %1
  %22 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %23 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = bitcast %struct.mp_frame* %4 to i8*
  %26 = bitcast %struct.mp_frame* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %28 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %27, i32 0, i32 1
  %31 = load %struct.mp_image*, %struct.mp_image** %30, align 8
  %32 = call i64 @mp_frame_is_signaling(i64 %29, %struct.mp_image* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %36 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %35, i32 0, i32 2
  %37 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %36)
  br label %238

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %45 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %47 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %46)
  br label %238

48:                                               ; preds = %38
  %49 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %50 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %49, i32 0, i32 3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @m_config_cache_update(%struct.TYPE_7__* %51)
  %53 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %54 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.filter_opts*, %struct.filter_opts** %56, align 8
  store %struct.filter_opts* %57, %struct.filter_opts** %5, align 8
  %58 = load %struct.filter_opts*, %struct.filter_opts** %5, align 8
  %59 = getelementptr inbounds %struct.filter_opts, %struct.filter_opts* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %48
  %63 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %64 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %63, i32 0, i32 2
  %65 = call i32 @mp_subfilter_destroy(%struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %62, %48
  %67 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %68 = load %struct.mp_image*, %struct.mp_image** %67, align 8
  store %struct.mp_image* %68, %struct.mp_image** %6, align 8
  %69 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %70 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %73 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %66
  %77 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %78 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.filter_opts*, %struct.filter_opts** %5, align 8
  %81 = getelementptr inbounds %struct.filter_opts, %struct.filter_opts* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %86 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %85, i32 0, i32 2
  %87 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %86)
  br label %238

88:                                               ; preds = %76, %66
  %89 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %90 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %89, i32 0, i32 2
  %91 = call i32 @mp_subfilter_drain_destroy(%struct.TYPE_6__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %238

94:                                               ; preds = %88
  %95 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %96 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.mp_filter*, %struct.mp_filter** %97, align 8
  %99 = icmp ne %struct.mp_filter* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %104 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %107 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.filter_opts*, %struct.filter_opts** %5, align 8
  %109 = getelementptr inbounds %struct.filter_opts, %struct.filter_opts* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %112 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %114 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %94
  %118 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %119 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %118, i32 0, i32 2
  %120 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %119)
  br label %238

121:                                              ; preds = %94
  %122 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %123 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IMGFMT_VDPAU, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = bitcast [3 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %128, i8* align 16 bitcast ([3 x i8*]* @__const.deint_process.args to i8*), i64 24, i1 false)
  %129 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %130 = load i32, i32* @MP_OUTPUT_CHAIN_VIDEO, align 4
  %131 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %132 = call i8* @mp_create_user_filter(%struct.mp_filter* %129, i32 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %131)
  %133 = bitcast i8* %132 to %struct.mp_filter*
  %134 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %135 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store %struct.mp_filter* %133, %struct.mp_filter** %136, align 8
  br label %225

137:                                              ; preds = %121
  %138 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %139 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IMGFMT_D3D11, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %145 = load i32, i32* @MP_OUTPUT_CHAIN_VIDEO, align 4
  %146 = call i8* @mp_create_user_filter(%struct.mp_filter* %144, i32 %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** null)
  %147 = bitcast i8* %146 to %struct.mp_filter*
  %148 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %149 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store %struct.mp_filter* %147, %struct.mp_filter** %150, align 8
  br label %224

151:                                              ; preds = %137
  %152 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %153 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IMGFMT_CUDA, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %158, i8* align 16 bitcast ([3 x i8*]* @__const.deint_process.args.7 to i8*), i64 24, i1 false)
  %159 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %160 = load i32, i32* @MP_OUTPUT_CHAIN_VIDEO, align 4
  %161 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %162 = call i8* @mp_create_user_filter(%struct.mp_filter* %159, i32 %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %161)
  %163 = bitcast i8* %162 to %struct.mp_filter*
  %164 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %165 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store %struct.mp_filter* %163, %struct.mp_filter** %166, align 8
  br label %223

167:                                              ; preds = %151
  %168 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %169 = call %struct.mp_filter* @mp_bidir_dummy_filter_create(%struct.mp_filter* %168)
  store %struct.mp_filter* %169, %struct.mp_filter** %9, align 8
  %170 = bitcast [2 x %struct.mp_filter*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %170, i8 0, i64 16, i1 false)
  %171 = load %struct.mp_filter*, %struct.mp_filter** %9, align 8
  %172 = call %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter* %171)
  store %struct.mp_autoconvert* %172, %struct.mp_autoconvert** %11, align 8
  %173 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %11, align 8
  %174 = icmp ne %struct.mp_autoconvert* %173, null
  br i1 %174, label %175, label %199

175:                                              ; preds = %167
  %176 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %11, align 8
  %177 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %176, i32 0, i32 0
  %178 = load %struct.mp_filter*, %struct.mp_filter** %177, align 8
  %179 = getelementptr inbounds [2 x %struct.mp_filter*], [2 x %struct.mp_filter*]* %10, i64 0, i64 0
  store %struct.mp_filter* %178, %struct.mp_filter** %179, align 16
  %180 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %11, align 8
  %181 = call i32 @mp_autoconvert_add_all_sw_imgfmts(%struct.mp_autoconvert* %180)
  %182 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %11, align 8
  %183 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %184 = call i32 @mp_autoconvert_probe_input_video(%struct.mp_autoconvert* %182, %struct.mp_image* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %175
  %187 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %188 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %189 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @mp_imgfmt_to_name(i64 %190)
  %192 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %187, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %191)
  %193 = load %struct.mp_filter*, %struct.mp_filter** %9, align 8
  %194 = call i32 @talloc_free(%struct.mp_filter* %193)
  %195 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %196 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %195, i32 0, i32 2
  %197 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %196)
  br label %238

198:                                              ; preds = %175
  br label %199

199:                                              ; preds = %198, %167
  %200 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %200, i8* align 16 bitcast ([3 x i8*]* @__const.deint_process.args.10 to i8*), i64 24, i1 false)
  %201 = load %struct.mp_filter*, %struct.mp_filter** %9, align 8
  %202 = load i32, i32* @MP_OUTPUT_CHAIN_VIDEO, align 4
  %203 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %204 = call i8* @mp_create_user_filter(%struct.mp_filter* %201, i32 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %203)
  %205 = bitcast i8* %204 to %struct.mp_filter*
  %206 = getelementptr inbounds [2 x %struct.mp_filter*], [2 x %struct.mp_filter*]* %10, i64 0, i64 1
  store %struct.mp_filter* %205, %struct.mp_filter** %206, align 8
  %207 = load %struct.mp_filter*, %struct.mp_filter** %9, align 8
  %208 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.mp_filter*, %struct.mp_filter** %9, align 8
  %213 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds [2 x %struct.mp_filter*], [2 x %struct.mp_filter*]* %10, i64 0, i64 0
  %218 = call i32 @mp_chain_filters(i32 %211, i32 %216, %struct.mp_filter** %217, i32 2)
  %219 = load %struct.mp_filter*, %struct.mp_filter** %9, align 8
  %220 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %221 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  store %struct.mp_filter* %219, %struct.mp_filter** %222, align 8
  br label %223

223:                                              ; preds = %199, %157
  br label %224

224:                                              ; preds = %223, %143
  br label %225

225:                                              ; preds = %224, %127
  %226 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %227 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load %struct.mp_filter*, %struct.mp_filter** %228, align 8
  %230 = icmp ne %struct.mp_filter* %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %225
  %232 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %233 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %225
  %235 = load %struct.deint_priv*, %struct.deint_priv** %3, align 8
  %236 = getelementptr inbounds %struct.deint_priv, %struct.deint_priv* %235, i32 0, i32 2
  %237 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %236)
  br label %238

238:                                              ; preds = %234, %186, %117, %93, %84, %43, %34, %20
  ret void
}

declare dso_local i32 @mp_subfilter_read(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_frame_is_signaling(i64, %struct.mp_image*) #1

declare dso_local i32 @mp_subfilter_continue(%struct.TYPE_6__*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*, ...) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

declare dso_local i32 @m_config_cache_update(%struct.TYPE_7__*) #1

declare dso_local i32 @mp_subfilter_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_subfilter_drain_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mp_create_user_filter(%struct.mp_filter*, i32, i8*, i8**) #1

declare dso_local %struct.mp_filter* @mp_bidir_dummy_filter_create(%struct.mp_filter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter*) #1

declare dso_local i32 @mp_autoconvert_add_all_sw_imgfmts(%struct.mp_autoconvert*) #1

declare dso_local i32 @mp_autoconvert_probe_input_video(%struct.mp_autoconvert*, %struct.mp_image*) #1

declare dso_local i32 @mp_imgfmt_to_name(i64) #1

declare dso_local i32 @talloc_free(%struct.mp_filter*) #1

declare dso_local i32 @mp_chain_filters(i32, i32, %struct.mp_filter**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
