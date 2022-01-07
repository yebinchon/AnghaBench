; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_frame = type { i32 }
%struct.encoder_packet = type { i32 }
%struct.obs_x264 = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"encode failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.encoder_frame*, %struct.encoder_packet*, i32*)* @obs_x264_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_x264_encode(i8* %0, %struct.encoder_frame* %1, %struct.encoder_packet* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.encoder_frame*, align 8
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.obs_x264*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.encoder_frame* %1, %struct.encoder_frame** %7, align 8
  store %struct.encoder_packet* %2, %struct.encoder_packet** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.obs_x264*
  store %struct.obs_x264* %17, %struct.obs_x264** %10, align 8
  %18 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %19 = icmp ne %struct.encoder_frame* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %22 = icmp ne %struct.encoder_packet* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20, %4
  store i32 0, i32* %5, align 4
  br label %59

27:                                               ; preds = %23
  %28 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %29 = icmp ne %struct.encoder_frame* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.obs_x264*, %struct.obs_x264** %10, align 8
  %32 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %33 = call i32 @init_pic_data(%struct.obs_x264* %31, i32* %14, %struct.encoder_frame* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.obs_x264*, %struct.obs_x264** %10, align 8
  %36 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %39 = icmp ne %struct.encoder_frame* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i32* [ %14, %40 ], [ null, %41 ]
  %44 = call i32 @x264_encoder_encode(i32 %37, i32** %11, i32* %12, i32* %43, i32* %15)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.obs_x264*, %struct.obs_x264** %10, align 8
  %55 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @parse_packet(%struct.obs_x264* %54, %struct.encoder_packet* %55, i32* %56, i32 %57, i32* %15)
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %47, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @init_pic_data(%struct.obs_x264*, i32*, %struct.encoder_frame*) #1

declare dso_local i32 @x264_encoder_encode(i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @parse_packet(%struct.obs_x264*, %struct.encoder_packet*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
