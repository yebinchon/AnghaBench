; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_create_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i8*, i8*, i32, %struct.obs_source_info }
%struct.TYPE_2__ = type { i32, i32 }
%struct.obs_source_info = type { i64, i32 (i32, %struct.obs_source.0*)*, i32, i32 (i32, i32)*, i32 (i32)*, i32 }
%struct.obs_source.0 = type opaque

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Source ID '%s' not found\00", align 1
@OBS_SOURCE_TYPE_FILTER = common dso_local global i64 0, align 8
@OBS_INVALID_HOTKEY_PAIR_ID = common dso_local global i32 0, align 4
@OBS_INVALID_HOTKEY_ID = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create source '%s'!\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%ssource '%s' (%s) created\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"private \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"source_create\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"obs_source_create failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_source* (i8*, i8*, i32*, i32*, i32, i32)* @obs_source_create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_source* @obs_source_create_internal(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.obs_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.obs_source*, align 8
  %15 = alloca %struct.obs_source_info*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call %struct.obs_source* @bzalloc(i32 104)
  store %struct.obs_source* %16, %struct.obs_source** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.obs_source_info* @get_source_info(i8* %17)
  store %struct.obs_source_info* %18, %struct.obs_source_info** %15, align 8
  %19 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %20 = icmp ne %struct.obs_source_info* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @LOG_ERROR, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 (i32, i8*, ...) @blog(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @bstrdup(i8* %25)
  %27 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %28 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 8
  %30 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %31 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %45

32:                                               ; preds = %6
  %33 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %34 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %33, i32 0, i32 9
  %35 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %36 = bitcast %struct.obs_source_info* %34 to i8*
  %37 = bitcast %struct.obs_source_info* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 48, i1 false)
  %38 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %39 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OBS_SOURCE_TYPE_FILTER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32, i32* @OBS_INVALID_HOTKEY_PAIR_ID, align 4
  %47 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %48 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @OBS_INVALID_HOTKEY_ID, align 8
  %50 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %51 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @OBS_INVALID_HOTKEY_ID, align 8
  %53 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %54 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %57 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @obs_source_init_context(%struct.obs_source* %58, i32* %59, i8* %60, i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %45
  br label %177

66:                                               ; preds = %45
  %67 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %68 = icmp ne %struct.obs_source_info* %67, null
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %71 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %70, i32 0, i32 4
  %72 = load i32 (i32)*, i32 (i32)** %71, align 8
  %73 = icmp ne i32 (i32)* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %76 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %75, i32 0, i32 4
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %79 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %77(i32 %81)
  br label %83

83:                                               ; preds = %74, %69
  %84 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %85 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %84, i32 0, i32 3
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = icmp ne i32 (i32, i32)* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %90 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %89, i32 0, i32 3
  %91 = load i32 (i32, i32)*, i32 (i32, i32)** %90, align 8
  %92 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %93 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %96 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %91(i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %88, %83
  br label %101

101:                                              ; preds = %100, %66
  %102 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %103 = call i32 @obs_source_init(%struct.obs_source* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %177

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %111 = call i32 @obs_source_init_audio_hotkeys(%struct.obs_source* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %114 = icmp ne %struct.obs_source_info* %113, null
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %117 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %116, i32 0, i32 1
  %118 = load i32 (i32, %struct.obs_source.0*)*, i32 (i32, %struct.obs_source.0*)** %117, align 8
  %119 = icmp ne i32 (i32, %struct.obs_source.0*)* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %122 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %121, i32 0, i32 1
  %123 = load i32 (i32, %struct.obs_source.0*)*, i32 (i32, %struct.obs_source.0*)** %122, align 8
  %124 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %125 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %129 = bitcast %struct.obs_source* %128 to %struct.obs_source.0*
  %130 = call i32 %123(i32 %127, %struct.obs_source.0* %129)
  %131 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %132 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  br label %134

134:                                              ; preds = %120, %115, %112
  %135 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %136 = icmp ne %struct.obs_source_info* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.obs_source_info*, %struct.obs_source_info** %15, align 8
  %139 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %138, i32 0, i32 1
  %140 = load i32 (i32, %struct.obs_source.0*)*, i32 (i32, %struct.obs_source.0*)** %139, align 8
  %141 = icmp ne i32 (i32, %struct.obs_source.0*)* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %137, %134
  %143 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %144 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @LOG_ERROR, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 (i32, i8*, ...) @blog(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %148, %142, %137
  %153 = load i32, i32* @LOG_DEBUG, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %158 = load i8*, i8** %9, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 (i32, i8*, ...) @blog(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %157, i8* %158, i8* %159)
  %161 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %162 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %165 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %167 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %152
  %171 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %172 = call i32 @obs_source_dosignal(%struct.obs_source* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* null)
  br label %173

173:                                              ; preds = %170, %152
  %174 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %175 = call i32 @obs_source_init_finalize(%struct.obs_source* %174)
  %176 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  store %struct.obs_source* %176, %struct.obs_source** %7, align 8
  br label %182

177:                                              ; preds = %105, %65
  %178 = load i32, i32* @LOG_ERROR, align 4
  %179 = call i32 (i32, i8*, ...) @blog(i32 %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %180 = load %struct.obs_source*, %struct.obs_source** %14, align 8
  %181 = call i32 @obs_source_destroy(%struct.obs_source* %180)
  store %struct.obs_source* null, %struct.obs_source** %7, align 8
  br label %182

182:                                              ; preds = %177, %173
  %183 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  ret %struct.obs_source* %183
}

declare dso_local %struct.obs_source* @bzalloc(i32) #1

declare dso_local %struct.obs_source_info* @get_source_info(i8*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @bstrdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obs_source_init_context(%struct.obs_source*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @obs_source_init(%struct.obs_source*) #1

declare dso_local i32 @obs_source_init_audio_hotkeys(%struct.obs_source*) #1

declare dso_local i32 @obs_source_dosignal(%struct.obs_source*, i8*, i32*) #1

declare dso_local i32 @obs_source_init_finalize(%struct.obs_source*) #1

declare dso_local i32 @obs_source_destroy(%struct.obs_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
