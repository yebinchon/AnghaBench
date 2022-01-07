; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_gpu_conversion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_gpu_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i32, i8**, i32, i32 }
%struct.obs_video_info = type { i64, i32, i32 }
%struct.video_output_info = type { i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"GPU conversion not available for format: %u\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"NV12 texture support not available\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"NV12 texture support enabled\00", align 1
@GS_R8 = common dso_local global i32 0, align 4
@GS_RENDER_TARGET = common dso_local global i32 0, align 4
@GS_R8G8 = common dso_local global i32 0, align 4
@GS_SHARED_KM_TEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_video_info*)* @obs_init_gpu_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_gpu_conversion(%struct.obs_video_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_video_info*, align 8
  %4 = alloca %struct.obs_core_video*, align 8
  %5 = alloca %struct.video_output_info*, align 8
  store %struct.obs_video_info* %0, %struct.obs_video_info** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.obs_core_video* %7, %struct.obs_core_video** %4, align 8
  %8 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %9 = call i32 @calc_gpu_conversion_sizes(%struct.obs_video_info* %8)
  %10 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %11 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @gs_nv12_available()
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %20 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %22 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @LOG_INFO, align 4
  %27 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %28 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32, i8*, ...) @blog(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %33 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %35 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @LOG_INFO, align 4
  %37 = call i32 (i32, i8*, ...) @blog(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %178

38:                                               ; preds = %17
  %39 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %40 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @LOG_INFO, align 4
  %45 = call i32 (i32, i8*, ...) @blog(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @LOG_INFO, align 4
  %48 = call i32 (i32, i8*, ...) @blog(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %51 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %54 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GS_R8, align 4
  %57 = load i32, i32* @GS_RENDER_TARGET, align 4
  %58 = call i8* @gs_texture_create(i32 %52, i32 %55, i32 %56, i32 1, i32* null, i32 %57)
  %59 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %60 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %58, i8** %62, align 8
  %63 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %64 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.video_output_info* @video_output_get_info(i32 %65)
  store %struct.video_output_info* %66, %struct.video_output_info** %5, align 8
  %67 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %68 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %160 [
    i32 130, label %70
    i32 128, label %109
    i32 129, label %125
  ]

70:                                               ; preds = %49
  %71 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %72 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %73, 2
  %75 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %76 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* @GS_R8, align 4
  %80 = load i32, i32* @GS_RENDER_TARGET, align 4
  %81 = call i8* @gs_texture_create(i32 %74, i32 %78, i32 %79, i32 1, i32* null, i32 %80)
  %82 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %83 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %82, i32 0, i32 2
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8* %81, i8** %85, align 8
  %86 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %87 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 2
  %90 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %91 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  %94 = load i32, i32* @GS_R8, align 4
  %95 = load i32, i32* @GS_RENDER_TARGET, align 4
  %96 = call i8* @gs_texture_create(i32 %89, i32 %93, i32 %94, i32 1, i32* null, i32 %95)
  %97 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %98 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  store i8* %96, i8** %100, align 8
  %101 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %102 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %101, i32 0, i32 2
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %178

108:                                              ; preds = %70
  br label %161

109:                                              ; preds = %49
  %110 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %111 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 2
  %114 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %115 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 2
  %118 = load i32, i32* @GS_R8G8, align 4
  %119 = load i32, i32* @GS_RENDER_TARGET, align 4
  %120 = call i8* @gs_texture_create(i32 %113, i32 %117, i32 %118, i32 1, i32* null, i32 %119)
  %121 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %122 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* %120, i8** %124, align 8
  br label %161

125:                                              ; preds = %49
  %126 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %127 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %130 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @GS_R8, align 4
  %133 = load i32, i32* @GS_RENDER_TARGET, align 4
  %134 = call i8* @gs_texture_create(i32 %128, i32 %131, i32 %132, i32 1, i32* null, i32 %133)
  %135 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %136 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %135, i32 0, i32 2
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  store i8* %134, i8** %138, align 8
  %139 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %140 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %143 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @GS_R8, align 4
  %146 = load i32, i32* @GS_RENDER_TARGET, align 4
  %147 = call i8* @gs_texture_create(i32 %141, i32 %144, i32 %145, i32 1, i32* null, i32 %146)
  %148 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %149 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %148, i32 0, i32 2
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 2
  store i8* %147, i8** %151, align 8
  %152 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %153 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %152, i32 0, i32 2
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 2
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %178

159:                                              ; preds = %125
  br label %161

160:                                              ; preds = %49
  br label %161

161:                                              ; preds = %160, %159, %109, %108
  %162 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %163 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %162, i32 0, i32 2
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %178

169:                                              ; preds = %161
  %170 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %171 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %170, i32 0, i32 2
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 1
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %178

177:                                              ; preds = %169
  store i32 1, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %176, %168, %158, %107, %25
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @calc_gpu_conversion_sizes(%struct.obs_video_info*) #1

declare dso_local i32 @gs_nv12_available(...) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i8* @gs_texture_create(i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
