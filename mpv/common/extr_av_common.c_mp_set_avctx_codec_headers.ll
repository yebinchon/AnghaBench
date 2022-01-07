; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_avctx_codec_headers.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_avctx_codec_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mp_codec_params = type { i32 }

@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_set_avctx_codec_headers(%struct.TYPE_4__* %0, %struct.mp_codec_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.mp_codec_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.mp_codec_params* %1, %struct.mp_codec_params** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mp_codec_params*, %struct.mp_codec_params** %5, align 8
  %17 = call i32* @mp_codec_params_to_av(%struct.mp_codec_params* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @avcodec_parameters_to_context(%struct.TYPE_4__* %22, i32* %23)
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -1, i32 0
  store i32 %27, i32* %9, align 4
  %28 = call i32 @avcodec_parameters_free(i32** %8)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %21
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @mp_codec_params_to_av(%struct.mp_codec_params*) #1

declare dso_local i64 @avcodec_parameters_to_context(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @avcodec_parameters_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
