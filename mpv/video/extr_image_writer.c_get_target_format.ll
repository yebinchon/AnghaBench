; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_image_writer.c_get_target_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_image_writer.c_get_target_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_writer_ctx = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.AVCodec = type { i32 }

@IMGFMT_RGB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_writer_ctx*)* @get_target_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_target_format(%struct.image_writer_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_writer_ctx*, align 8
  %4 = alloca %struct.AVCodec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_writer_ctx* %0, %struct.image_writer_ctx** %3, align 8
  %7 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.AVCodec* @avcodec_find_encoder(i32 %11)
  store %struct.AVCodec* %12, %struct.AVCodec** %4, align 8
  %13 = load %struct.AVCodec*, %struct.AVCodec** %4, align 8
  %14 = icmp ne %struct.AVCodec* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.AVCodec*, %struct.AVCodec** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_encoder_format(%struct.AVCodec* %21, i32 %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = load %struct.AVCodec*, %struct.AVCodec** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @get_encoder_format(%struct.AVCodec* %32, i32 %33, i32 1)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %16
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %38, %15
  %42 = load i32, i32* @IMGFMT_RGB0, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.AVCodec* @avcodec_find_encoder(i32) #1

declare dso_local i32 @get_encoder_format(%struct.AVCodec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
