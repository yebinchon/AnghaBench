; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_frame.c_mp_frame_get_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_frame.c_mp_frame_get_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double (i32)* }
%struct.mp_frame = type { i64, i32 }

@frame_handlers = common dso_local global %struct.TYPE_2__* null, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mp_frame_get_pts(i64 %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = bitcast %struct.mp_frame* %4 to { i64, i32 }*
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frame_handlers, align 8
  %9 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load double (i32)*, double (i32)** %12, align 8
  %14 = icmp ne double (i32)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frame_handlers, align 8
  %17 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load double (i32)*, double (i32)** %20, align 8
  %22 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call double %21(i32 %23)
  store double %24, double* %3, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %26, double* %3, align 8
  br label %27

27:                                               ; preds = %25, %15
  %28 = load double, double* %3, align 8
  ret double %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
