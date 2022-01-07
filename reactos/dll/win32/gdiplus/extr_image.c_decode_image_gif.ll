; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_image_gif.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_image_gif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@GUID_ContainerFormatGif = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@gif_metadata_reader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__**)* @decode_image_gif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_image_gif(i32* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @initialize_decoder_wic(i32* %10, i32* @GUID_ContainerFormatGif, i32** %6)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @Ok, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %3, align 8
  br label %55

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @IWICBitmapDecoder_GetFrameCount(i32* %18, i32* %7)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @hresult_to_status(i32 %24)
  store i64 %25, i64* %3, align 8
  br label %55

26:                                               ; preds = %17
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @gif_metadata_reader, align 4
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %33 = call i64 @decode_frame_wic(i32* %27, i32 %30, i32 0, i32 %31, %struct.TYPE_4__** %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @IWICBitmapDecoder_Release(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @Ok, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %3, align 8
  br label %55

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @heap_free(i32* %48)
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %44, %41
  %54 = load i64, i64* @Ok, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %53, %39, %23, %15
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @initialize_decoder_wic(i32*, i32*, i32**) #1

declare dso_local i32 @IWICBitmapDecoder_GetFrameCount(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @hresult_to_status(i32) #1

declare dso_local i64 @decode_frame_wic(i32*, i32, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @IWICBitmapDecoder_Release(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
