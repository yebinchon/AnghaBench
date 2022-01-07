; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_remove_encoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_remove_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.obs_encoder**, %struct.obs_encoder* }
%struct.obs_encoder = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"obs_output_remove_encoder\00", align 1
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_output_remove_encoder(%struct.obs_output* %0, %struct.obs_encoder* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.obs_encoder*, align 8
  %5 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store %struct.obs_encoder* %1, %struct.obs_encoder** %4, align 8
  %6 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %7 = call i32 @obs_output_valid(%struct.obs_output* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %12 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %11, i32 0, i32 1
  %13 = load %struct.obs_encoder*, %struct.obs_encoder** %12, align 8
  %14 = load %struct.obs_encoder*, %struct.obs_encoder** %4, align 8
  %15 = icmp eq %struct.obs_encoder* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %18 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %17, i32 0, i32 1
  store %struct.obs_encoder* null, %struct.obs_encoder** %18, align 8
  br label %44

19:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %26 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %25, i32 0, i32 0
  %27 = load %struct.obs_encoder**, %struct.obs_encoder*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.obs_encoder*, %struct.obs_encoder** %27, i64 %28
  %30 = load %struct.obs_encoder*, %struct.obs_encoder** %29, align 8
  %31 = load %struct.obs_encoder*, %struct.obs_encoder** %4, align 8
  %32 = icmp eq %struct.obs_encoder* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %35 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %34, i32 0, i32 0
  %36 = load %struct.obs_encoder**, %struct.obs_encoder*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.obs_encoder*, %struct.obs_encoder** %36, i64 %37
  store %struct.obs_encoder* null, %struct.obs_encoder** %38, align 8
  br label %39

39:                                               ; preds = %33, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %20

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %9, %43, %16
  ret void
}

declare dso_local i32 @obs_output_valid(%struct.obs_output*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
