; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_rotate_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_rotate_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.rotate_priv* }
%struct.rotate_priv = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.mp_frame }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_image = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mp_stream_info = type { i64 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"video input required!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Video rotation with this format not supported\0A\00", align 1
@M_PI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rotw(%f)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"oh\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"roth(%f)\00", align 1
@MP_OUTPUT_CHAIN_VIDEO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Inserting rotation filter.\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"could not create rotation filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @rotate_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.rotate_priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_stream_info*, align 8
  %8 = alloca double, align 8
  %9 = alloca [7 x i8*], align 16
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %11 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %10, i32 0, i32 0
  %12 = load %struct.rotate_priv*, %struct.rotate_priv** %11, align 8
  store %struct.rotate_priv* %12, %struct.rotate_priv** %3, align 8
  %13 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %13, i32 0, i32 3
  %15 = call i32 @mp_subfilter_read(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %178

18:                                               ; preds = %1
  %19 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = bitcast %struct.mp_frame* %4 to i8*
  %23 = bitcast %struct.mp_frame* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %25 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %24, i32 0, i32 1
  %28 = load %struct.mp_image*, %struct.mp_image** %27, align 8
  %29 = call i64 @mp_frame_is_signaling(i64 %26, %struct.mp_image* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %32, i32 0, i32 3
  %34 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %33)
  br label %178

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %42 = call i32 @MP_ERR(%struct.mp_filter* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %178

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %45 = load %struct.mp_image*, %struct.mp_image** %44, align 8
  store %struct.mp_image* %45, %struct.mp_image** %5, align 8
  %46 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %47 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %43
  %55 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %56 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %67 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %69, i32 0, i32 3
  %71 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %70)
  br label %178

72:                                               ; preds = %54, %43
  %73 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %73, i32 0, i32 3
  %75 = call i32 @mp_subfilter_drain_destroy(%struct.TYPE_6__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %178

78:                                               ; preds = %72
  %79 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %88 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 %90, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %95 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %97 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %100 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %102 = call %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter* %101)
  store %struct.mp_stream_info* %102, %struct.mp_stream_info** %7, align 8
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %78
  %106 = load %struct.mp_stream_info*, %struct.mp_stream_info** %7, align 8
  %107 = icmp ne %struct.mp_stream_info* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.mp_stream_info*, %struct.mp_stream_info** %7, align 8
  %110 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = srem i32 %114, 90
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %78
  %118 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %119 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %118, i32 0, i32 3
  %120 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %119)
  br label %178

121:                                              ; preds = %113, %108, %105
  %122 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %123 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @mp_sws_supports_input(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %129 = call i32 @MP_ERR(%struct.mp_filter* %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %131 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %130, i32 0, i32 3
  %132 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %131)
  br label %178

133:                                              ; preds = %121
  %134 = load i32, i32* %6, align 4
  %135 = sitofp i32 %134 to double
  %136 = fdiv double %135, 3.600000e+02
  %137 = load i32, i32* @M_PI, align 4
  %138 = sitofp i32 %137 to double
  %139 = fmul double %136, %138
  %140 = fmul double %139, 2.000000e+00
  store double %140, double* %8, align 8
  %141 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %141, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  %143 = load double, double* %8, align 8
  %144 = call i8* @mp_tprintf(i32 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %143)
  store i8* %144, i8** %142, align 8
  %145 = getelementptr inbounds i8*, i8** %142, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %145, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load double, double* %8, align 8
  %148 = call i8* @mp_tprintf(i32 30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), double %147)
  store i8* %148, i8** %146, align 8
  %149 = getelementptr inbounds i8*, i8** %146, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %149, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load double, double* %8, align 8
  %152 = call i8* @mp_tprintf(i32 30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), double %151)
  store i8* %152, i8** %150, align 8
  %153 = getelementptr inbounds i8*, i8** %150, i64 1
  store i8* null, i8** %153, align 8
  %154 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %155 = load i32, i32* @MP_OUTPUT_CHAIN_VIDEO, align 4
  %156 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  %157 = call i64 @mp_create_user_filter(%struct.mp_filter* %154, i32 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %156)
  %158 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %159 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  %161 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %162 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %133
  %167 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %168 = call i32 @MP_INFO(%struct.mp_filter* %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %169 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %170 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %169, i32 0, i32 2
  store i32 0, i32* %170, align 8
  br label %174

171:                                              ; preds = %133
  %172 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %173 = call i32 @MP_ERR(%struct.mp_filter* %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.rotate_priv*, %struct.rotate_priv** %3, align 8
  %176 = getelementptr inbounds %struct.rotate_priv, %struct.rotate_priv* %175, i32 0, i32 3
  %177 = call i32 @mp_subfilter_continue(%struct.TYPE_6__* %176)
  br label %178

178:                                              ; preds = %174, %127, %117, %77, %62, %40, %31, %17
  ret void
}

declare dso_local i32 @mp_subfilter_read(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_frame_is_signaling(i64, %struct.mp_image*) #1

declare dso_local i32 @mp_subfilter_continue(%struct.TYPE_6__*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_subfilter_drain_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter*) #1

declare dso_local i32 @mp_sws_supports_input(i64) #1

declare dso_local i8* @mp_tprintf(i32, i8*, double) #1

declare dso_local i64 @mp_create_user_filter(%struct.mp_filter*, i32, i8*, i8**) #1

declare dso_local i32 @MP_INFO(%struct.mp_filter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
