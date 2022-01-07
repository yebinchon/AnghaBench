; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_init_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.main_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.audio_params = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"file name\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"video track count\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"audio track count\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid number of video tracks\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid number of audio tracks\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Must have at least 1 audio track or 1 video track\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"video codec\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"video bitrate\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"video width\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"video height\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"video fps num\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"video fps den\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"audio codec\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"muxer settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***, %struct.main_params*, %struct.audio_params**)* @init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_params(i32* %0, i8*** %1, %struct.main_params* %2, %struct.audio_params** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.main_params*, align 8
  %9 = alloca %struct.audio_params**, align 8
  %10 = alloca %struct.audio_params*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store %struct.main_params* %2, %struct.main_params** %8, align 8
  store %struct.audio_params** %3, %struct.audio_params*** %9, align 8
  store %struct.audio_params* null, %struct.audio_params** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8***, i8**** %7, align 8
  %14 = load %struct.main_params*, %struct.main_params** %8, align 8
  %15 = getelementptr inbounds %struct.main_params, %struct.main_params* %14, i32 0, i32 10
  %16 = call i32 @get_opt_str(i32* %12, i8*** %13, i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %172

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i8***, i8**** %7, align 8
  %22 = load %struct.main_params*, %struct.main_params** %8, align 8
  %23 = getelementptr inbounds %struct.main_params, %struct.main_params* %22, i32 0, i32 0
  %24 = call i32 @get_opt_int(i32* %20, i8*** %21, i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %172

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i8***, i8**** %7, align 8
  %30 = load %struct.main_params*, %struct.main_params** %8, align 8
  %31 = getelementptr inbounds %struct.main_params, %struct.main_params* %30, i32 0, i32 1
  %32 = call i32 @get_opt_int(i32* %28, i8*** %29, i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %172

35:                                               ; preds = %27
  %36 = load %struct.main_params*, %struct.main_params** %8, align 8
  %37 = getelementptr inbounds %struct.main_params, %struct.main_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.main_params*, %struct.main_params** %8, align 8
  %42 = getelementptr inbounds %struct.main_params, %struct.main_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %35
  %46 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

47:                                               ; preds = %40
  %48 = load %struct.main_params*, %struct.main_params** %8, align 8
  %49 = getelementptr inbounds %struct.main_params, %struct.main_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

54:                                               ; preds = %47
  %55 = load %struct.main_params*, %struct.main_params** %8, align 8
  %56 = getelementptr inbounds %struct.main_params, %struct.main_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.main_params*, %struct.main_params** %8, align 8
  %61 = getelementptr inbounds %struct.main_params, %struct.main_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

66:                                               ; preds = %59, %54
  %67 = load %struct.main_params*, %struct.main_params** %8, align 8
  %68 = getelementptr inbounds %struct.main_params, %struct.main_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %120

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i8***, i8**** %7, align 8
  %74 = load %struct.main_params*, %struct.main_params** %8, align 8
  %75 = getelementptr inbounds %struct.main_params, %struct.main_params* %74, i32 0, i32 9
  %76 = call i32 @get_opt_str(i32* %72, i8*** %73, i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %172

79:                                               ; preds = %71
  %80 = load i32*, i32** %6, align 8
  %81 = load i8***, i8**** %7, align 8
  %82 = load %struct.main_params*, %struct.main_params** %8, align 8
  %83 = getelementptr inbounds %struct.main_params, %struct.main_params* %82, i32 0, i32 2
  %84 = call i32 @get_opt_int(i32* %80, i8*** %81, i32* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %172

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = load i8***, i8**** %7, align 8
  %90 = load %struct.main_params*, %struct.main_params** %8, align 8
  %91 = getelementptr inbounds %struct.main_params, %struct.main_params* %90, i32 0, i32 3
  %92 = call i32 @get_opt_int(i32* %88, i8*** %89, i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %172

95:                                               ; preds = %87
  %96 = load i32*, i32** %6, align 8
  %97 = load i8***, i8**** %7, align 8
  %98 = load %struct.main_params*, %struct.main_params** %8, align 8
  %99 = getelementptr inbounds %struct.main_params, %struct.main_params* %98, i32 0, i32 4
  %100 = call i32 @get_opt_int(i32* %96, i8*** %97, i32* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %172

103:                                              ; preds = %95
  %104 = load i32*, i32** %6, align 8
  %105 = load i8***, i8**** %7, align 8
  %106 = load %struct.main_params*, %struct.main_params** %8, align 8
  %107 = getelementptr inbounds %struct.main_params, %struct.main_params* %106, i32 0, i32 5
  %108 = call i32 @get_opt_int(i32* %104, i8*** %105, i32* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %172

111:                                              ; preds = %103
  %112 = load i32*, i32** %6, align 8
  %113 = load i8***, i8**** %7, align 8
  %114 = load %struct.main_params*, %struct.main_params** %8, align 8
  %115 = getelementptr inbounds %struct.main_params, %struct.main_params* %114, i32 0, i32 6
  %116 = call i32 @get_opt_int(i32* %112, i8*** %113, i32* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %172

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %66
  %121 = load %struct.main_params*, %struct.main_params** %8, align 8
  %122 = getelementptr inbounds %struct.main_params, %struct.main_params* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %120
  %126 = load i32*, i32** %6, align 8
  %127 = load i8***, i8**** %7, align 8
  %128 = load %struct.main_params*, %struct.main_params** %8, align 8
  %129 = getelementptr inbounds %struct.main_params, %struct.main_params* %128, i32 0, i32 8
  %130 = call i32 @get_opt_str(i32* %126, i8*** %127, i32* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %172

133:                                              ; preds = %125
  %134 = load %struct.main_params*, %struct.main_params** %8, align 8
  %135 = getelementptr inbounds %struct.main_params, %struct.main_params* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 4, %137
  %139 = trunc i64 %138 to i32
  %140 = call %struct.audio_params* @calloc(i32 1, i32 %139)
  store %struct.audio_params* %140, %struct.audio_params** %10, align 8
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %160, %133
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.main_params*, %struct.main_params** %8, align 8
  %144 = getelementptr inbounds %struct.main_params, %struct.main_params* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %141
  %148 = load %struct.audio_params*, %struct.audio_params** %10, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %148, i64 %150
  %152 = load i32*, i32** %6, align 8
  %153 = load i8***, i8**** %7, align 8
  %154 = call i32 @get_audio_params(%struct.audio_params* %151, i32* %152, i8*** %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %147
  %157 = load %struct.audio_params*, %struct.audio_params** %10, align 8
  %158 = call i32 @free(%struct.audio_params* %157)
  store i32 0, i32* %5, align 4
  br label %172

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %141

163:                                              ; preds = %141
  br label %164

164:                                              ; preds = %163, %120
  %165 = load %struct.audio_params*, %struct.audio_params** %10, align 8
  %166 = load %struct.audio_params**, %struct.audio_params*** %9, align 8
  store %struct.audio_params* %165, %struct.audio_params** %166, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i8***, i8**** %7, align 8
  %169 = load %struct.main_params*, %struct.main_params** %8, align 8
  %170 = getelementptr inbounds %struct.main_params, %struct.main_params* %169, i32 0, i32 7
  %171 = call i32 @get_opt_str(i32* %167, i8*** %168, i32* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %172

172:                                              ; preds = %164, %156, %132, %118, %110, %102, %94, %86, %78, %64, %52, %45, %34, %26, %18
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @get_opt_str(i32*, i8***, i32*, i8*) #1

declare dso_local i32 @get_opt_int(i32*, i8***, i32*, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local %struct.audio_params* @calloc(i32, i32) #1

declare dso_local i32 @get_audio_params(%struct.audio_params*, i32*, i8***) #1

declare dso_local i32 @free(%struct.audio_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
