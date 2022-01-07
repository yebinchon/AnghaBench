; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/decklink/extr_audio-repack.c_audio_repack_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/decklink/extr_audio-repack.c_audio_repack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_repack = type { i32, i32, i32, i32* }

@__const.audio_repack_init._audio_repack_ch = private unnamed_addr constant [8 x i32] [i32 3, i32 4, i32 5, i32 6, i32 5, i32 6, i32 8, i32 8], align 16
@repack_squash = common dso_local global i32 0, align 4
@repack_mode_8to5ch_swap = common dso_local global i64 0, align 8
@repack_mode_8to6ch_swap = common dso_local global i64 0, align 8
@repack_mode_8ch_swap = common dso_local global i64 0, align 8
@repack_squash_swap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audio_repack_init(%struct.audio_repack* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_repack*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  store %struct.audio_repack* %0, %struct.audio_repack** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %10 = call i32 @memset(%struct.audio_repack* %9, i32 0, i32 24)
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 16
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([8 x i32]* @__const.audio_repack_init._audio_repack_ch to i8*), i64 32, i1 false)
  %16 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %17 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %16, i32 0, i32 0
  store i32 16, i32* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %23 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 8, %26
  %28 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %29 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %31 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %30, i32 0, i32 3
  store i32* @repack_squash, i32** %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @repack_mode_8to5ch_swap, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %14
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @repack_mode_8to6ch_swap, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @repack_mode_8ch_swap, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35, %14
  %44 = load %struct.audio_repack*, %struct.audio_repack** %5, align 8
  %45 = getelementptr inbounds %struct.audio_repack, %struct.audio_repack* %44, i32 0, i32 3
  store i32* @repack_squash_swap, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %39
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.audio_repack*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
