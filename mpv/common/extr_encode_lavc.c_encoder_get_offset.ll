; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encoder_get_offset.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encoder_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_context = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { double, double }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @encoder_get_offset(%struct.encoder_context* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.encoder_context*, align 8
  store %struct.encoder_context* %0, %struct.encoder_context** %3, align 8
  %4 = load %struct.encoder_context*, %struct.encoder_context** %3, align 8
  %5 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 129, label %15
  ]

9:                                                ; preds = %1
  %10 = load %struct.encoder_context*, %struct.encoder_context** %3, align 8
  %11 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  store double %14, double* %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.encoder_context*, %struct.encoder_context** %3, align 8
  %17 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  store double %20, double* %2, align 8
  br label %22

21:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %22

22:                                               ; preds = %21, %15, %9
  %23 = load double, double* %2, align 8
  ret double %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
