; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_avcodec_threads.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_avcodec_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Could not determine thread count to use, defaulting to 1.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Detected %d logical cores.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Requesting %d threads for decoding.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_set_avcodec_threads(%struct.mp_log* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = call i32 (...) @av_cpu_count()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %15 = call i32 @mp_warn(%struct.mp_log* %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %26

16:                                               ; preds = %9
  %17 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mp_verbose(%struct.mp_log* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MPMIN(i32 %27, i32 16)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mp_verbose(%struct.mp_log* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @av_cpu_count(...) #1

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*) #1

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
