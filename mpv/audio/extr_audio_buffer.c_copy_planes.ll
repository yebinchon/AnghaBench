; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_audio_buffer.c_copy_planes.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_audio_buffer.c_copy_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_audio_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_audio_buffer*, i32**, i32, i32**, i32, i32)* @copy_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_planes(%struct.mp_audio_buffer* %0, i32** %1, i32 %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mp_audio_buffer*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mp_audio_buffer* %0, %struct.mp_audio_buffer** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %60

17:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %30, i64 %36
  %38 = load i32**, i32*** %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %43, i64 %49
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %7, align 8
  %53 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = call i32 @memmove(i8* %37, i8* %50, i32 %55)
  br label %57

57:                                               ; preds = %24
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %18

60:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
