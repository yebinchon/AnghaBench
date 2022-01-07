; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_headers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*)* @send_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_headers(%struct.rtmp_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %3, align 8
  %6 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %7 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  store i64 0, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %4, align 8
  %11 = trunc i64 %9 to i32
  %12 = call i32 @send_audio_header(%struct.rtmp_stream* %8, i32 %11, i32* %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %17 = call i32 @send_video_header(%struct.rtmp_stream* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = trunc i64 %26 to i32
  %29 = call i32 @send_audio_header(%struct.rtmp_stream* %25, i32 %28, i32* %5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %34

32:                                               ; preds = %24
  br label %21

33:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31, %19, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @send_audio_header(%struct.rtmp_stream*, i32, i32*) #1

declare dso_local i32 @send_video_header(%struct.rtmp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
