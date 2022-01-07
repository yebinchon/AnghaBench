; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-video-decoder.c_queue_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-video-decoder.c_queue_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.ff_frame = type { double, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_decoder*, i32*, double)* @queue_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_frame(%struct.ff_decoder* %0, i32* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ff_decoder*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.ff_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.ff_decoder* %0, %struct.ff_decoder** %5, align 8
  store i32* %1, i32** %6, align 8
  store double %2, double* %7, align 8
  %11 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %12 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %11, i32 0, i32 0
  %13 = call i32 @ff_circular_queue_wait_write(i32* %12)
  %14 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %15 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

19:                                               ; preds = %3
  %20 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %21 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %20, i32 0, i32 0
  %22 = call %struct.ff_frame* @ff_circular_queue_peek_write(i32* %21)
  store %struct.ff_frame* %22, %struct.ff_frame** %8, align 8
  %23 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %24 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %10, align 8
  %26 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %27 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %19
  %31 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %32 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %30
  %41 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %42 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %40
  %51 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %52 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br label %60

60:                                               ; preds = %50, %40, %30, %19
  %61 = phi i1 [ true, %40 ], [ true, %30 ], [ true, %19 ], [ %59, %50 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %64 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %69 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %68, i32 0, i32 2
  %70 = call i32 @av_frame_free(%struct.TYPE_5__** %69)
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i32*, i32** %6, align 8
  %73 = call %struct.TYPE_5__* @av_frame_clone(i32* %72)
  %74 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %75 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %74, i32 0, i32 2
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %75, align 8
  %76 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %77 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ff_clock_retain(i32 %78)
  %80 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %81 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %86 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %87 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ff_callbacks_frame_initialize(%struct.ff_frame* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %71
  %91 = load double, double* %7, align 8
  %92 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %93 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %92, i32 0, i32 0
  store double %91, double* %93, align 8
  %94 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  %95 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %94, i32 0, i32 0
  %96 = load %struct.ff_frame*, %struct.ff_frame** %8, align 8
  %97 = call i32 @ff_circular_queue_advance_write(i32* %95, %struct.ff_frame* %96)
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %90, %18
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @ff_circular_queue_wait_write(i32*) #1

declare dso_local %struct.ff_frame* @ff_circular_queue_peek_write(i32*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_5__**) #1

declare dso_local %struct.TYPE_5__* @av_frame_clone(i32*) #1

declare dso_local i32 @ff_clock_retain(i32) #1

declare dso_local i32 @ff_callbacks_frame_initialize(%struct.ff_frame*, i32) #1

declare dso_local i32 @ff_circular_queue_advance_write(i32*, %struct.ff_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
