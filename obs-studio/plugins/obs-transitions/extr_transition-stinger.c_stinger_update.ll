; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_stinger_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_stinger_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stinger_info = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"local_file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ffmpeg_source\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"transition_point\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tp_type\00", align 1
@TIMING_FRAME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"audio_monitoring\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"audio_fade_style\00", align 1
@mix_a_fade_in_out = common dso_local global i32 0, align 4
@mix_b_fade_in_out = common dso_local global i32 0, align 4
@mix_a_cross_fade = common dso_local global i32 0, align 4
@mix_b_cross_fade = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @stinger_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stinger_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stinger_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.stinger_info*
  store %struct.stinger_info* %10, %struct.stinger_info** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @obs_data_get_string(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = call i32* (...) @obs_data_create()
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @obs_data_set_string(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %18 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @obs_source_release(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @obs_source_create_private(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %21)
  %23 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %24 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @obs_data_release(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @obs_data_get_int(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 %28, i64* %8, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @obs_data_get_int(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i64, i64* @TIMING_FRAME, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %35 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %37 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load i64, i64* %8, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %44 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  br label %51

45:                                               ; preds = %2
  %46 = load i64, i64* %8, align 8
  %47 = mul nsw i64 %46, 1000000
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %50 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @obs_data_get_int(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %54 = trunc i64 %53 to i32
  %55 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %56 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %58 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %61 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @obs_source_set_monitoring_type(i32 %59, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i64 @obs_data_get_int(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %66 = trunc i64 %65 to i32
  %67 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %68 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %70 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %72 [
    i32 128, label %73
    i32 129, label %80
  ]

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %51, %72
  %74 = load i32, i32* @mix_a_fade_in_out, align 4
  %75 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %76 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @mix_b_fade_in_out, align 4
  %78 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %79 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %87

80:                                               ; preds = %51
  %81 = load i32, i32* @mix_a_cross_fade, align 4
  %82 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %83 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @mix_b_cross_fade, align 4
  %85 = load %struct.stinger_info*, %struct.stinger_info** %5, align 8
  %86 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %73
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @obs_source_release(i32) #1

declare dso_local i32 @obs_source_create_private(i8*, i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @obs_source_set_monitoring_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
