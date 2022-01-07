; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_get_input_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_get_input_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.audio_mix* }
%struct.audio_mix = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.audio_input* }
%struct.audio_input = type { i64, i8* }

@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64, i8*)* @audio_get_input_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @audio_get_input_idx(%struct.TYPE_5__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.audio_mix*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.audio_input*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.audio_mix*, %struct.audio_mix** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %15, i64 %16
  store %struct.audio_mix* %17, %struct.audio_mix** %10, align 8
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %46, %4
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.audio_mix*, %struct.audio_mix** %10, align 8
  %21 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load %struct.audio_mix*, %struct.audio_mix** %10, align 8
  %27 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.audio_input*, %struct.audio_input** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %29, i64 %30
  store %struct.audio_input* %31, %struct.audio_input** %12, align 8
  %32 = load %struct.audio_input*, %struct.audio_input** %12, align 8
  %33 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.audio_input*, %struct.audio_input** %12, align 8
  %39 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %5, align 8
  br label %51

45:                                               ; preds = %37, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load i64, i64* @DARRAY_INVALID, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
