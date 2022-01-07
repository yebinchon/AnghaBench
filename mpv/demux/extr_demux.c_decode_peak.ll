; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_decode_peak.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_decode_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_tags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_tags*, i8*, float*)* @decode_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_peak(%struct.mp_log* %0, %struct.mp_tags* %1, i8* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.mp_tags*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  store %struct.mp_log* %0, %struct.mp_log** %6, align 8
  store %struct.mp_tags* %1, %struct.mp_tags** %7, align 8
  store i8* %2, i8** %8, align 8
  store float* %3, float** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load float*, float** %9, align 8
  store float 1.000000e+00, float* %12, align 4
  %13 = load %struct.mp_tags*, %struct.mp_tags** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @mp_tags_get_str(%struct.mp_tags* %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @decode_float(i8* %20, float* %11)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load float, float* %11, align 4
  %25 = fpext float %24 to double
  %26 = fcmp ole double %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 -1, i32* %5, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load float, float* %11, align 4
  %30 = load float*, float** %9, align 8
  store float %29, float* %30, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %27, %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i8* @mp_tags_get_str(%struct.mp_tags*, i8*) #1

declare dso_local i64 @decode_float(i8*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
