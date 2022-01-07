; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_add_codecs.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_add_codecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder_list = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_decoder_list*, i32, i32)* @add_codecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_codecs(%struct.mp_decoder_list* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_decoder_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.mp_decoder_list* %0, %struct.mp_decoder_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  br label %9

9:                                                ; preds = %42, %3
  %10 = call %struct.TYPE_4__* @av_codec_iterate(i8** %7)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %43

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = call i32 @av_codec_is_decoder(%struct.TYPE_4__* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23, %19
  %30 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mp_codec_from_av_codec_id(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mp_add_decoder(%struct.mp_decoder_list* %30, i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %29, %23, %14
  br label %9

43:                                               ; preds = %13
  ret void
}

declare dso_local %struct.TYPE_4__* @av_codec_iterate(i8**) #1

declare dso_local i32 @av_codec_is_decoder(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_add_decoder(%struct.mp_decoder_list*, i32, i32, i32) #1

declare dso_local i32 @mp_codec_from_av_codec_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
