; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_perform_backward_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_perform_backward_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.demux_stream* }
%struct.demux_stream = type { i32, i32, %struct.TYPE_5__*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [46 x i8] c"triggering backward seek to get more packets\0A\00", align 1
@SEEK_SATAN = common dso_local global i32 0, align 4
@SEEK_HR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @perform_backward_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_backward_seek(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.demux_stream*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  %6 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %6, double* %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %10 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %15 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.demux_stream*, %struct.demux_stream** %21, align 8
  store %struct.demux_stream* %22, %struct.demux_stream** %5, align 8
  %23 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %24 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %13
  %28 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %29 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %27
  %33 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %34 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %39 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %44 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %46 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %51 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %53 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %58 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %42, %37, %32, %27, %13
  %60 = load double, double* %3, align 8
  %61 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %62 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call double @MP_PTS_MIN(double %60, i32 %63)
  store double %64, double* %3, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %7

68:                                               ; preds = %7
  %69 = load double, double* %3, align 8
  %70 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %71 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call double @MP_PTS_OR_DEF(double %69, i32 %74)
  store double %75, double* %3, align 8
  %76 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %77 = call i32 @MP_VERBOSE(%struct.demux_internal* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %79 = load double, double* %3, align 8
  %80 = load i32, i32* @SEEK_SATAN, align 4
  %81 = load i32, i32* @SEEK_HR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @queue_seek(%struct.demux_internal* %78, double %79, i32 %82, i32 0)
  %84 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %85 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %87 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %86, i32 0, i32 2
  %88 = call i32 @pthread_mutex_unlock(i32* %87)
  %89 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %90 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %89, i32 0, i32 2
  %91 = call i32 @pthread_mutex_lock(i32* %90)
  ret void
}

declare dso_local double @MP_PTS_MIN(double, i32) #1

declare dso_local double @MP_PTS_OR_DEF(double, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*) #1

declare dso_local i32 @queue_seek(%struct.demux_internal*, double, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
