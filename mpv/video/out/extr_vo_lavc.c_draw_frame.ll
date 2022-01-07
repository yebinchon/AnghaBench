; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_lavc.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_lavc.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.priv* }
%struct.priv = type { i64, %struct.encoder_context* }
%struct.encoder_context = type { %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.encode_lavc_context* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.encode_lavc_context = type { double, double, i32 }
%struct.vo_frame = type { i32, %struct.mp_image**, i64, i64 }
%struct.mp_image = type { double }
%struct.mp_osd_res = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }

@OSD_DRAW_SUB_ONLY = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [65 x i8] c"detected an unexpected discontinuity (pts jumped by %f seconds)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_frame*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.vo* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.encoder_context*, align 8
  %7 = alloca %struct.encode_lavc_context*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.mp_image*, align 8
  %10 = alloca %struct.mp_osd_res, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %17 = load %struct.vo*, %struct.vo** %3, align 8
  %18 = getelementptr inbounds %struct.vo, %struct.vo* %17, i32 0, i32 2
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %5, align 8
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  %22 = load %struct.encoder_context*, %struct.encoder_context** %21, align 8
  store %struct.encoder_context* %22, %struct.encoder_context** %6, align 8
  %23 = load %struct.encoder_context*, %struct.encoder_context** %6, align 8
  %24 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %23, i32 0, i32 2
  %25 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %24, align 8
  store %struct.encode_lavc_context* %25, %struct.encode_lavc_context** %7, align 8
  %26 = load %struct.encoder_context*, %struct.encoder_context** %6, align 8
  %27 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %8, align 8
  %29 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %30 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %2
  %34 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %35 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %40 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33, %2
  br label %204

44:                                               ; preds = %38
  %45 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %46 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %45, i32 0, i32 1
  %47 = load %struct.mp_image**, %struct.mp_image*** %46, align 8
  %48 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %47, i64 0
  %49 = load %struct.mp_image*, %struct.mp_image** %48, align 8
  store %struct.mp_image* %49, %struct.mp_image** %9, align 8
  %50 = load %struct.vo*, %struct.vo** %3, align 8
  %51 = getelementptr inbounds %struct.vo, %struct.vo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @osd_res_from_image_params(i32 %52)
  %54 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.vo*, %struct.vo** %3, align 8
  %56 = getelementptr inbounds %struct.vo, %struct.vo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %59 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load i32, i32* @OSD_DRAW_SUB_ONLY, align 4
  %62 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %63 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @osd_draw_on_image(i32 %57, i32 %64, double %60, i32 %61, %struct.mp_image* %62)
  %66 = load %struct.priv*, %struct.priv** %5, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %44
  br label %204

71:                                               ; preds = %44
  %72 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %73 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %72, i32 0, i32 2
  %74 = call i32 @pthread_mutex_lock(i32* %73)
  %75 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %76 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  store double %77, double* %11, align 8
  %78 = load double, double* %11, align 8
  store double %78, double* %12, align 8
  %79 = load %struct.encoder_context*, %struct.encoder_context** %6, align 8
  %80 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %137, label %85

85:                                               ; preds = %71
  %86 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %87 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = load double, double* @MP_NOPTS_VALUE, align 8
  %90 = fcmp oeq double %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %93 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %92, i32 0, i32 1
  %94 = load double, double* %93, align 8
  %95 = load double, double* %11, align 8
  %96 = fsub double %94, %95
  %97 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %98 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %97, i32 0, i32 0
  store double %96, double* %98, align 8
  br label %131

99:                                               ; preds = %85
  %100 = load double, double* %11, align 8
  %101 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %102 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %101, i32 0, i32 0
  %103 = load double, double* %102, align 8
  %104 = fadd double %100, %103
  %105 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %106 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = fsub double %104, %107
  %109 = call i32 @fabs(double %108)
  %110 = icmp sgt i32 %109, 30
  br i1 %110, label %111, label %130

111:                                              ; preds = %99
  %112 = load %struct.vo*, %struct.vo** %3, align 8
  %113 = load double, double* %11, align 8
  %114 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %115 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %114, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = fadd double %113, %116
  %118 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %119 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %118, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = fsub double %117, %120
  %122 = call i32 @MP_WARN(%struct.vo* %112, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), double %121)
  %123 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %124 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %123, i32 0, i32 1
  %125 = load double, double* %124, align 8
  %126 = load double, double* %11, align 8
  %127 = fsub double %125, %126
  %128 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %129 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %128, i32 0, i32 0
  store double %127, double* %129, align 8
  br label %130

130:                                              ; preds = %111, %99
  br label %131

131:                                              ; preds = %130, %91
  %132 = load double, double* %11, align 8
  %133 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %134 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = fadd double %132, %135
  store double %136, double* %12, align 8
  br label %137

137:                                              ; preds = %131, %71
  %138 = load %struct.encoder_context*, %struct.encoder_context** %6, align 8
  %139 = call i64 @encoder_get_offset(%struct.encoder_context* %138)
  %140 = sitofp i64 %139 to double
  %141 = load double, double* %12, align 8
  %142 = fadd double %141, %140
  store double %142, double* %12, align 8
  %143 = load %struct.encoder_context*, %struct.encoder_context** %6, align 8
  %144 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %172, label %149

149:                                              ; preds = %137
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call double @av_q2d(i32 %152)
  store double %153, double* %13, align 8
  %154 = load double, double* %11, align 8
  %155 = load double, double* %13, align 8
  %156 = fadd double %154, %155
  store double %156, double* %14, align 8
  %157 = load double, double* %14, align 8
  %158 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %159 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %158, i32 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = fadd double %157, %160
  store double %161, double* %15, align 8
  %162 = load double, double* %15, align 8
  %163 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %164 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %163, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = fcmp ogt double %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %149
  %168 = load double, double* %15, align 8
  %169 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %170 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %169, i32 0, i32 1
  store double %168, double* %170, align 8
  br label %171

171:                                              ; preds = %167, %149
  br label %172

172:                                              ; preds = %171, %137
  %173 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %7, align 8
  %174 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %173, i32 0, i32 2
  %175 = call i32 @pthread_mutex_unlock(i32* %174)
  %176 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %177 = call %struct.TYPE_8__* @mp_image_to_av_frame(%struct.mp_image* %176)
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %16, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %179 = icmp ne %struct.TYPE_8__* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %172
  %181 = call i32 (...) @abort() #3
  unreachable

182:                                              ; preds = %172
  %183 = load double, double* %12, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @av_inv_q(i32 %186)
  %188 = call double @av_q2d(i32 %187)
  %189 = fmul double %183, %188
  %190 = call i32 @rint(double %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.encoder_context*, %struct.encoder_context** %6, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %202 = call i32 @encoder_encode(%struct.encoder_context* %200, %struct.TYPE_8__* %201)
  %203 = call i32 @av_frame_free(%struct.TYPE_8__** %16)
  br label %204

204:                                              ; preds = %182, %70, %43
  ret void
}

declare dso_local i32 @osd_res_from_image_params(i32) #1

declare dso_local i32 @osd_draw_on_image(i32, i32, double, i32, %struct.mp_image*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*, double) #1

declare dso_local i64 @encoder_get_offset(%struct.encoder_context*) #1

declare dso_local double @av_q2d(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_8__* @mp_image_to_av_frame(%struct.mp_image*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @rint(double) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @encoder_encode(%struct.encoder_context*, %struct.TYPE_8__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
