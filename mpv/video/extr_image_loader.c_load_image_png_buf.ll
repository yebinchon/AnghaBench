; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_image_loader.c_load_image_png_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_image_loader.c_load_image_png_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AV_CODEC_ID_PNG = common dso_local global i32 0, align 4
@mp_null_log = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @load_image_png_buf(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.mp_image*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mp_image*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @AV_CODEC_ID_PNG, align 4
  %15 = call i32* @avcodec_find_decoder(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.mp_image* null, %struct.mp_image** %4, align 8
  br label %81

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @avcodec_alloc_context3(i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.mp_image* null, %struct.mp_image** %4, align 8
  br label %81

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @avcodec_open2(i32* %26, i32* %27, i32* null)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @avcodec_free_context(i32** %9)
  store %struct.mp_image* null, %struct.mp_image** %4, align 8
  br label %81

32:                                               ; preds = %25
  %33 = call %struct.TYPE_6__* (...) @av_packet_alloc()
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @av_new_packet(%struct.TYPE_6__* %37, i64 %38)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @memcpy(i32 %44, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %41, %36
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = call i32 @avcodec_send_packet(i32* %50, %struct.TYPE_6__* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @avcodec_send_packet(i32* %53, %struct.TYPE_6__* null)
  %55 = call i32 @av_packet_free(%struct.TYPE_6__** %10)
  store %struct.mp_image* null, %struct.mp_image** %11, align 8
  %56 = call i32* (...) @av_frame_alloc()
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %49
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i64 @avcodec_receive_frame(i32* %60, i32* %61)
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = call %struct.mp_image* @mp_image_from_av_frame(i32* %65)
  store %struct.mp_image* %66, %struct.mp_image** %13, align 8
  %67 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %68 = icmp ne %struct.mp_image* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @mp_null_log, align 4
  %73 = call %struct.mp_image* @convert_image(%struct.mp_image* %70, i32 %71, i32* null, i32 %72)
  store %struct.mp_image* %73, %struct.mp_image** %11, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %76 = call i32 @talloc_free(%struct.mp_image* %75)
  br label %77

77:                                               ; preds = %74, %59, %49
  %78 = call i32 @av_frame_free(i32** %12)
  %79 = call i32 @avcodec_free_context(i32** %9)
  %80 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  store %struct.mp_image* %80, %struct.mp_image** %4, align 8
  br label %81

81:                                               ; preds = %77, %30, %24, %18
  %82 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  ret %struct.mp_image* %82
}

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32* @avcodec_alloc_context3(i32*) #1

declare dso_local i64 @avcodec_open2(i32*, i32*, i32*) #1

declare dso_local i32 @avcodec_free_context(i32**) #1

declare dso_local %struct.TYPE_6__* @av_packet_alloc(...) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @avcodec_send_packet(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_6__**) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @avcodec_receive_frame(i32*, i32*) #1

declare dso_local %struct.mp_image* @mp_image_from_av_frame(i32*) #1

declare dso_local %struct.mp_image* @convert_image(%struct.mp_image*, i32, i32*, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
