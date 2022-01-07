; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_make_frames_per_second.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_make_frames_per_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_frames_per_second = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i8*)* @make_frames_per_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_frames_per_second(i64 %0, i8* %1) #0 {
  %3 = alloca %struct.media_frames_per_second, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast %struct.media_frames_per_second* %3 to i64*
  store i64 %0, i64* %6, align 4
  store i8* %1, i8** %4, align 8
  %7 = call i32* (...) @obs_data_create()
  store i32* %7, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds %struct.media_frames_per_second, %struct.media_frames_per_second* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @obs_data_set_double(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds %struct.media_frames_per_second, %struct.media_frames_per_second* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @obs_data_set_double(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @obs_data_set_string(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %10
  %24 = load i32*, i32** %5, align 8
  ret i32* %24
}

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i32 @obs_data_set_double(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
