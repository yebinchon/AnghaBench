; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_audio_buffer.c_mp_audio_buffer_reinit_fmt.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_audio_buffer.c_mp_audio_buffer_reinit_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_audio_buffer = type { i32, i32, i32, i32, %struct.mp_chmap, i64, i64, i32* }
%struct.mp_chmap = type { i32 }

@MP_NUM_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_audio_buffer_reinit_fmt(%struct.mp_audio_buffer* %0, i32 %1, %struct.mp_chmap* %2, i32 %3) #0 {
  %5 = alloca %struct.mp_audio_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_chmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mp_audio_buffer* %0, %struct.mp_audio_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mp_chmap* %2, %struct.mp_chmap** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %22, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @TA_FREEP(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %29, i32 0, i32 4
  %31 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %32 = bitcast %struct.mp_chmap* %30 to i8*
  %33 = bitcast %struct.mp_chmap* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @af_fmt_to_bytes(i32 %43)
  %45 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @af_fmt_is_planar(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %25
  %55 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %70

61:                                               ; preds = %25
  %62 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.mp_audio_buffer, %struct.mp_audio_buffer* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %61, %54
  ret void
}

declare dso_local i32 @TA_FREEP(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @af_fmt_to_bytes(i32) #1

declare dso_local i64 @af_fmt_is_planar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
