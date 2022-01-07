; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_frame_count.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_frame_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_4__*, %struct.demuxer* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { double }
%struct.demuxer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*)* @get_frame_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frame_count(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 1
  %9 = load %struct.demuxer*, %struct.demuxer** %8, align 8
  store %struct.demuxer* %9, %struct.demuxer** %4, align 8
  %10 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %11 = icmp ne %struct.demuxer* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %40

19:                                               ; preds = %13
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = call double @get_time_length(%struct.MPContext* %20)
  store double %21, double* %5, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  store double %28, double* %6, align 8
  %29 = load double, double* %5, align 8
  %30 = fcmp olt double %29, 0.000000e+00
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load double, double* %6, align 8
  %33 = fcmp ole double %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %19
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %31
  %36 = load double, double* %5, align 8
  %37 = load double, double* %6, align 8
  %38 = fmul double %36, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %34, %18, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local double @get_time_length(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
