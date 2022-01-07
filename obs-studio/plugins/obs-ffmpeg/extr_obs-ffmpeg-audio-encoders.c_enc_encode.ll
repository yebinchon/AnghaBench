; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_enc_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_enc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_frame = type { i32* }
%struct.encoder_packet = type { i32 }
%struct.enc_encoder = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.encoder_frame*, %struct.encoder_packet*, i32*)* @enc_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_encode(i8* %0, %struct.encoder_frame* %1, %struct.encoder_packet* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.encoder_frame*, align 8
  %7 = alloca %struct.encoder_packet*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.enc_encoder*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.encoder_frame* %1, %struct.encoder_frame** %6, align 8
  store %struct.encoder_packet* %2, %struct.encoder_packet** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.enc_encoder*
  store %struct.enc_encoder* %12, %struct.enc_encoder** %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %36, %4
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.enc_encoder*, %struct.enc_encoder** %9, align 8
  %16 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.enc_encoder*, %struct.enc_encoder** %9, align 8
  %21 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.encoder_frame*, %struct.encoder_frame** %6, align 8
  %27 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.enc_encoder*, %struct.enc_encoder** %9, align 8
  %33 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memcpy(i32 %25, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.enc_encoder*, %struct.enc_encoder** %9, align 8
  %41 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @do_encode(%struct.enc_encoder* %40, %struct.encoder_packet* %41, i32* %42)
  ret i32 %43
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @do_encode(%struct.enc_encoder*, %struct.encoder_packet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
