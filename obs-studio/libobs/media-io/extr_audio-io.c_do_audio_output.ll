; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_do_audio_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_do_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_output = type { i64, i32, %struct.audio_mix* }
%struct.audio_mix = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.audio_input* }
%struct.audio_input = type { i32, i32 (i32, i64, %struct.audio_data*)* }
%struct.audio_data = type opaque
%struct.audio_data.0 = type { i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_output*, i64, i32, i32)* @do_audio_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_audio_output(%struct.audio_output* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.audio_output*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.audio_mix*, align 8
  %10 = alloca %struct.audio_data.0, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.audio_input*, align 8
  %13 = alloca i64, align 8
  store %struct.audio_output* %0, %struct.audio_output** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %15 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %14, i32 0, i32 2
  %16 = load %struct.audio_mix*, %struct.audio_mix** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %16, i64 %17
  store %struct.audio_mix* %18, %struct.audio_mix** %9, align 8
  %19 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %20 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.audio_mix*, %struct.audio_mix** %9, align 8
  %23 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %77, %4
  %27 = load i64, i64* %11, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %26
  %30 = load %struct.audio_mix*, %struct.audio_mix** %9, align 8
  %31 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.audio_input*, %struct.audio_input** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %33, i64 %35
  store %struct.audio_input* %36, %struct.audio_input** %12, align 8
  store i64 0, i64* %13, align 8
  br label %37

37:                                               ; preds = %55, %29
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %40 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.audio_mix*, %struct.audio_mix** %9, align 8
  %45 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds %struct.audio_data.0, %struct.audio_data.0* %10, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* %50, i32** %54, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %37

58:                                               ; preds = %37
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.audio_data.0, %struct.audio_data.0* %10, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.audio_data.0, %struct.audio_data.0* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.audio_input*, %struct.audio_input** %12, align 8
  %64 = call i64 @resample_audio_output(%struct.audio_input* %63, %struct.audio_data.0* %10)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.audio_input*, %struct.audio_input** %12, align 8
  %68 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %67, i32 0, i32 1
  %69 = load i32 (i32, i64, %struct.audio_data*)*, i32 (i32, i64, %struct.audio_data*)** %68, align 8
  %70 = load %struct.audio_input*, %struct.audio_input** %12, align 8
  %71 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = bitcast %struct.audio_data.0* %10 to %struct.audio_data*
  %75 = call i32 %69(i32 %72, i64 %73, %struct.audio_data* %74)
  br label %76

76:                                               ; preds = %66, %58
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %11, align 8
  br label %26

80:                                               ; preds = %26
  %81 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %82 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %81, i32 0, i32 1
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @resample_audio_output(%struct.audio_input*, %struct.audio_data.0*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
