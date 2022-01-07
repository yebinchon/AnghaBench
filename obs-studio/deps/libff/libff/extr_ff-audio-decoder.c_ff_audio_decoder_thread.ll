; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-audio-decoder.c_ff_audio_decoder_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-audio-decoder.c_ff_audio_decoder_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32, i32*, i32 }
%struct.ff_packet = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_audio_decoder_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ff_decoder*, align 8
  %4 = alloca %struct.ff_packet, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ff_decoder*
  store %struct.ff_decoder* %10, %struct.ff_decoder** %3, align 8
  %11 = bitcast %struct.ff_packet* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = call i32* (...) @av_frame_alloc()
  store i32* %12, i32** %6, align 8
  br label %13

13:                                               ; preds = %46, %29, %1
  %14 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @decode_frame(%struct.ff_decoder* %20, %struct.ff_packet* %4, i32* %21, i32* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %49

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %31 = call i32 @av_free_packet(i32* %30)
  br label %13

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call double @ff_decoder_get_best_effort_pts(%struct.ff_decoder* %37, i32* %38)
  store double %39, double* %8, align 8
  %40 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load double, double* %8, align 8
  %43 = call i32 @queue_frame(%struct.ff_decoder* %40, i32* %41, double %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @av_frame_unref(i32* %44)
  br label %46

46:                                               ; preds = %36, %33
  %47 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %48 = call i32 @av_free_packet(i32* %47)
  br label %13

49:                                               ; preds = %25, %13
  %50 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %51 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %55, i32 0, i32 1
  %57 = call i32 @ff_clock_release(i32** %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = call i32 @av_frame_free(i32** %6)
  %60 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @av_frame_alloc(...) #2

declare dso_local i32 @decode_frame(%struct.ff_decoder*, %struct.ff_packet*, i32*, i32*) #2

declare dso_local i32 @av_free_packet(i32*) #2

declare dso_local double @ff_decoder_get_best_effort_pts(%struct.ff_decoder*, i32*) #2

declare dso_local i32 @queue_frame(%struct.ff_decoder*, i32*, double) #2

declare dso_local i32 @av_frame_unref(i32*) #2

declare dso_local i32 @ff_clock_release(i32**) #2

declare dso_local i32 @av_frame_free(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
