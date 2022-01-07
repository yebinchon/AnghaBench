; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_gpu_copy_surfaces.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_gpu_copy_surfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i8***, i32 }
%struct.obs_video_info = type { i32, i32 }
%struct.video_output_info = type { i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@GS_R8 = common dso_local global i32 0, align 4
@GS_R8G8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_video_info*, i64)* @obs_init_gpu_copy_surfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_gpu_copy_surfaces(%struct.obs_video_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.obs_video_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.obs_core_video*, align 8
  %7 = alloca %struct.video_output_info*, align 8
  store %struct.obs_video_info* %0, %struct.obs_video_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.obs_core_video* %9, %struct.obs_core_video** %6, align 8
  %10 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %11 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %14 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GS_R8, align 4
  %17 = call i8* @gs_stagesurface_create(i32 %12, i32 %15, i32 %16)
  %18 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %19 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %18, i32 0, i32 0
  %20 = load i8***, i8**** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8**, i8*** %20, i64 %21
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %17, i8** %24, align 8
  %25 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %26 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %25, i32 0, i32 0
  %27 = load i8***, i8**** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8**, i8*** %27, i64 %28
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %184

35:                                               ; preds = %2
  %36 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %37 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.video_output_info* @video_output_get_info(i32 %38)
  store %struct.video_output_info* %39, %struct.video_output_info** %7, align 8
  %40 = load %struct.video_output_info*, %struct.video_output_info** %7, align 8
  %41 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %182 [
    i32 130, label %43
    i32 128, label %100
    i32 129, label %129
  ]

43:                                               ; preds = %35
  %44 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %45 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 2
  %48 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %49 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 2
  %52 = load i32, i32* @GS_R8, align 4
  %53 = call i8* @gs_stagesurface_create(i32 %47, i32 %51, i32 %52)
  %54 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %55 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %54, i32 0, i32 0
  %56 = load i8***, i8**** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i8**, i8*** %56, i64 %57
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* %53, i8** %60, align 8
  %61 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %62 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %61, i32 0, i32 0
  %63 = load i8***, i8**** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8**, i8*** %63, i64 %64
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %184

71:                                               ; preds = %43
  %72 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %73 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  %76 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %77 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 2
  %80 = load i32, i32* @GS_R8, align 4
  %81 = call i8* @gs_stagesurface_create(i32 %75, i32 %79, i32 %80)
  %82 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %83 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %82, i32 0, i32 0
  %84 = load i8***, i8**** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i8**, i8*** %84, i64 %85
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  store i8* %81, i8** %88, align 8
  %89 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %90 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %89, i32 0, i32 0
  %91 = load i8***, i8**** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds i8**, i8*** %91, i64 %92
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %184

99:                                               ; preds = %71
  br label %183

100:                                              ; preds = %35
  %101 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %102 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 2
  %105 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %106 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 2
  %109 = load i32, i32* @GS_R8G8, align 4
  %110 = call i8* @gs_stagesurface_create(i32 %104, i32 %108, i32 %109)
  %111 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %112 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %111, i32 0, i32 0
  %113 = load i8***, i8**** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i8**, i8*** %113, i64 %114
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* %110, i8** %117, align 8
  %118 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %119 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %118, i32 0, i32 0
  %120 = load i8***, i8**** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds i8**, i8*** %120, i64 %121
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %184

128:                                              ; preds = %100
  br label %183

129:                                              ; preds = %35
  %130 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %131 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %134 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @GS_R8, align 4
  %137 = call i8* @gs_stagesurface_create(i32 %132, i32 %135, i32 %136)
  %138 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %139 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %138, i32 0, i32 0
  %140 = load i8***, i8**** %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds i8**, i8*** %140, i64 %141
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  store i8* %137, i8** %144, align 8
  %145 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %146 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %145, i32 0, i32 0
  %147 = load i8***, i8**** %146, align 8
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds i8**, i8*** %147, i64 %148
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %184

155:                                              ; preds = %129
  %156 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %157 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %160 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @GS_R8, align 4
  %163 = call i8* @gs_stagesurface_create(i32 %158, i32 %161, i32 %162)
  %164 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %165 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %164, i32 0, i32 0
  %166 = load i8***, i8**** %165, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds i8**, i8*** %166, i64 %167
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 2
  store i8* %163, i8** %170, align 8
  %171 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %172 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %171, i32 0, i32 0
  %173 = load i8***, i8**** %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds i8**, i8*** %173, i64 %174
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 2
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %184

181:                                              ; preds = %155
  br label %183

182:                                              ; preds = %35
  br label %183

183:                                              ; preds = %182, %181, %128, %99
  store i32 1, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %180, %154, %127, %98, %70, %34
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i8* @gs_stagesurface_create(i32, i32, i32) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
