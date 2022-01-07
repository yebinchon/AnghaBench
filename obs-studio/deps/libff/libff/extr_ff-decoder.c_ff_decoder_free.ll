; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32, i32, %struct.TYPE_3__, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8** }
%struct.ff_frame = type { i32, i32, %struct.TYPE_3__, i32, i32*, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_decoder_free(%struct.ff_decoder* %0) #0 {
  %2 = alloca %struct.ff_decoder*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_frame*, align 8
  store %struct.ff_decoder* %0, %struct.ff_decoder** %2, align 8
  %7 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %8 = icmp ne %struct.ff_decoder* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %14 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %13, i32 0, i32 2
  %15 = call i32 @ff_circular_queue_abort(%struct.TYPE_3__* %14)
  %16 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %17 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %16, i32 0, i32 3
  %18 = call i32 @packet_queue_abort(i32* %17)
  %19 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %20 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %19, i32 0, i32 8
  %21 = call i32 @ff_timer_free(i32* %20)
  %22 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %23 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pthread_join(i32 %24, i8** %3)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %74, %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %29 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %26
  %34 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %35 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = bitcast i8* %42 to %struct.ff_frame*
  store %struct.ff_frame* %43, %struct.ff_frame** %6, align 8
  %44 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %45 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %46 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ff_callbacks_frame_free(%struct.ff_frame* %44, i32 %47)
  %49 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %50 = icmp ne %struct.ff_frame* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %33
  %52 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %53 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %58 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @av_frame_unref(i32* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %63 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %68 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %67, i32 0, i32 4
  %69 = call i32 @ff_clock_release(i32** %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.ff_frame*, %struct.ff_frame** %6, align 8
  %72 = call i32 @av_free(%struct.ff_frame* %71)
  br label %73

73:                                               ; preds = %70, %33
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %26

77:                                               ; preds = %26
  %78 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %79 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %78, i32 0, i32 3
  %80 = call i32 @packet_queue_free(i32* %79)
  %81 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %82 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %81, i32 0, i32 2
  %83 = call i32 @ff_circular_queue_free(%struct.TYPE_3__* %82)
  %84 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %85 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @avcodec_close(i32 %86)
  %88 = load %struct.ff_decoder*, %struct.ff_decoder** %2, align 8
  %89 = bitcast %struct.ff_decoder* %88 to %struct.ff_frame*
  %90 = call i32 @av_free(%struct.ff_frame* %89)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ff_circular_queue_abort(%struct.TYPE_3__*) #1

declare dso_local i32 @packet_queue_abort(i32*) #1

declare dso_local i32 @ff_timer_free(i32*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @ff_callbacks_frame_free(%struct.ff_frame*, i32) #1

declare dso_local i32 @av_frame_unref(i32*) #1

declare dso_local i32 @ff_clock_release(i32**) #1

declare dso_local i32 @av_free(%struct.ff_frame*) #1

declare dso_local i32 @packet_queue_free(i32*) #1

declare dso_local i32 @ff_circular_queue_free(%struct.TYPE_3__*) #1

declare dso_local i32 @avcodec_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
