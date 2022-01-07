; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_enqueue_backward_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_enqueue_backward_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.MPOpts* }
%struct.MPOpts = type { i64, i64 }
%struct.mp_frame = type { i64 }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Reversal queue overflow, discarding frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, i64)* @enqueue_backward_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_backward_frame(%struct.priv* %0, i64 %1) #0 {
  %3 = alloca %struct.mp_frame, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPOpts*, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  %9 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MP_FRAME_EOF, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %2
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.MPOpts*, %struct.MPOpts** %20, align 8
  store %struct.MPOpts* %21, %struct.MPOpts** %6, align 8
  store i64 0, i64* %7, align 8
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 128, label %27
    i32 129, label %31
  ]

27:                                               ; preds = %16
  %28 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %29 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %35

31:                                               ; preds = %16
  %32 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %33 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %16, %31, %27
  %36 = load %struct.priv*, %struct.priv** %4, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = call i32 @MP_ERR(%struct.priv* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @mp_frame_unref(%struct.mp_frame* %3)
  br label %76

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @mp_frame_approx_size(i64 %47)
  %49 = load %struct.priv*, %struct.priv** %4, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %45, %2
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.priv*, %struct.priv** %4, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.priv*, %struct.priv** %4, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i32 [ 0, %63 ], [ %67, %64 ]
  %70 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @MP_TARRAY_INSERT_AT(%struct.priv* %54, i32 %57, i32 %60, i32 %69, i64 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.priv*, %struct.priv** %4, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %68, %41
  ret void
}

declare dso_local i32 @MP_ERR(%struct.priv*, i8*) #1

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local i64 @mp_frame_approx_size(i64) #1

declare dso_local i32 @MP_TARRAY_INSERT_AT(%struct.priv*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
