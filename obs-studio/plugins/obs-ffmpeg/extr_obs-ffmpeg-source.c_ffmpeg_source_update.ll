; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"is_local_file\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"local_file\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"looping\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"close_when_inactive\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"input_format\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"hw_decode\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"clear_on_media_end\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"restart_on_activate\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"color_range\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"buffering_mb\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"speed_percent\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @ffmpeg_source_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_source_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ffmpeg_source*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ffmpeg_source*
  store %struct.ffmpeg_source* %11, %struct.ffmpeg_source** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @obs_data_get_bool(i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %16 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %15, i32 0, i32 14
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bfree(i32* %17)
  %19 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %19, i32 0, i32 13
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @bfree(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @obs_data_get_string(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @obs_data_get_bool(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %33 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @obs_data_get_bool(i32* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %38 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %50

39:                                               ; preds = %2
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @obs_data_get_string(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %7, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @obs_data_get_string(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %8, align 8
  %46 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %47 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %49 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %25
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = call i32* @bstrdup(i8* %54)
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32* [ %55, %53 ], [ null, %56 ]
  %59 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %60 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %59, i32 0, i32 14
  store i32* %58, i32** %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = call i32* @bstrdup(i8* %64)
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32* [ %65, %63 ], [ null, %66 ]
  %69 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %70 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %69, i32 0, i32 13
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @obs_data_get_bool(i32* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %74 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %73, i32 0, i32 12
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i8* @obs_data_get_bool(i32* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %78 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @obs_data_get_bool(i32* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %82 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @obs_data_get_int(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %85 = trunc i64 %84 to i32
  %86 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %87 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @obs_data_get_int(i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %90 = trunc i64 %89 to i32
  %91 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %92 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = call i64 @obs_data_get_int(i32* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %95 = trunc i64 %94 to i32
  %96 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %97 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i8* @obs_data_get_bool(i32* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %103 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %104 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %106 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %114, label %109

109:                                              ; preds = %67
  %110 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %111 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 200
  br i1 %113, label %114, label %117

114:                                              ; preds = %109, %67
  %115 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %116 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %115, i32 0, i32 4
  store i32 100, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %119 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %124 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %123, i32 0, i32 9
  %125 = call i32 @mp_media_free(i32* %124)
  %126 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %127 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %126, i32 0, i32 6
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %122, %117
  %129 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %130 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @obs_source_active(i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %134 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %128
  %141 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %142 = call i32 @ffmpeg_source_open(%struct.ffmpeg_source* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @dump_source_info(%struct.ffmpeg_source* %144, i8* %145, i8* %146)
  %148 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %149 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %143
  %156 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %157 = call i32 @ffmpeg_source_start(%struct.ffmpeg_source* %156)
  br label %158

158:                                              ; preds = %155, %152
  ret void
}

declare dso_local i8* @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i64 @obs_data_get_string(i32*, i8*) #1

declare dso_local i32* @bstrdup(i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @mp_media_free(i32*) #1

declare dso_local i32 @obs_source_active(i32) #1

declare dso_local i32 @ffmpeg_source_open(%struct.ffmpeg_source*) #1

declare dso_local i32 @dump_source_info(%struct.ffmpeg_source*, i8*, i8*) #1

declare dso_local i32 @ffmpeg_source_start(%struct.ffmpeg_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
