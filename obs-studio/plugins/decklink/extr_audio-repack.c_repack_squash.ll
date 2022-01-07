; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/decklink/extr_audio-repack.c_repack_squash.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/decklink/extr_audio-repack.c_repack_squash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_repack = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repack_squash(%struct.audio_repack* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_repack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.audio_repack* %0, %struct.audio_repack** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @check_buffer(%struct.audio_repack* %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %20 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %10, align 8
  %27 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %28 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  %41 = ptrtoint i32* %39 to i32
  %42 = call i32 @_mm_load_si128(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @_mm_storeu_si128(i32* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 8, %46
  %48 = load i32*, i32** %11, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %11, align 8
  br label %34

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %18
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @check_buffer(%struct.audio_repack*, i32) #1

declare dso_local i32 @_mm_load_si128(i32) #1

declare dso_local i32 @_mm_storeu_si128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
