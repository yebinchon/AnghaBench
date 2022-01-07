; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_get_callback_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_get_callback_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.encoder_callback* }
%struct.encoder_callback = type { void (i8*, %struct.encoder_packet*)*, i8* }
%struct.encoder_packet = type opaque
%struct.encoder_packet.0 = type opaque

@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.obs_encoder*, void (i8*, %struct.encoder_packet.0*)*, i8*)* @get_callback_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_callback_idx(%struct.obs_encoder* %0, void (i8*, %struct.encoder_packet.0*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.obs_encoder*, align 8
  %6 = alloca void (i8*, %struct.encoder_packet.0*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.encoder_callback*, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %5, align 8
  store void (i8*, %struct.encoder_packet.0*)* %1, void (i8*, %struct.encoder_packet.0*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %19 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.encoder_callback*, %struct.encoder_callback** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %21, i64 %22
  store %struct.encoder_callback* %23, %struct.encoder_callback** %9, align 8
  %24 = load %struct.encoder_callback*, %struct.encoder_callback** %9, align 8
  %25 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %24, i32 0, i32 0
  %26 = load void (i8*, %struct.encoder_packet*)*, void (i8*, %struct.encoder_packet*)** %25, align 8
  %27 = load void (i8*, %struct.encoder_packet.0*)*, void (i8*, %struct.encoder_packet.0*)** %6, align 8
  %28 = bitcast void (i8*, %struct.encoder_packet.0*)* %27 to void (i8*, %struct.encoder_packet*)*
  %29 = icmp eq void (i8*, %struct.encoder_packet*)* %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load %struct.encoder_callback*, %struct.encoder_callback** %9, align 8
  %32 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %4, align 8
  br label %44

38:                                               ; preds = %30, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load i64, i64* @DARRAY_INVALID, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
