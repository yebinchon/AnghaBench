; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_d_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_d_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i64 }

@SEEK_FACTOR = common dso_local global i32 0, align 4
@STREAM_CTRL_GET_TIME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"seek to: %f\0A\00", align 1
@SEEK_FORCE = common dso_local global i32 0, align 4
@STREAM_CTRL_SEEK_TO_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, double, i32)* @d_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_seek(%struct.TYPE_4__* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv*, align 8
  %8 = alloca double, align 8
  %9 = alloca [2 x double], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %7, align 8
  %13 = load %struct.priv*, %struct.priv** %7, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.priv*, %struct.priv** %7, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load double, double* %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @demux_seek(i32 %20, double %21, i32 %22)
  br label %66

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SEEK_FACTOR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  store double 0.000000e+00, double* %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @STREAM_CTRL_GET_TIME_LENGTH, align 4
  %34 = call i32 @stream_control(i32 %32, i32 %33, double* %8)
  %35 = load double, double* %8, align 8
  %36 = load double, double* %5, align 8
  %37 = fmul double %36, %35
  store double %37, double* %5, align 8
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load double, double* %5, align 8
  %41 = call i32 @MP_VERBOSE(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %40)
  %42 = load %struct.priv*, %struct.priv** %7, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SEEK_FACTOR, align 4
  %46 = load i32, i32* @SEEK_FORCE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @demux_seek(i32 %44, double 0.000000e+00, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @stream_drop_buffers(i32 %51)
  %53 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %54 = load double, double* %5, align 8
  store double %54, double* %53, align 8
  %55 = getelementptr inbounds double, double* %53, i64 1
  %56 = load i32, i32* %6, align 4
  %57 = sitofp i32 %56 to double
  store double %57, double* %55, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @STREAM_CTRL_SEEK_TO_TIME, align 4
  %62 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %63 = call i32 @stream_control(i32 %60, i32 %61, double* %62)
  %64 = load %struct.priv*, %struct.priv** %7, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %38, %17
  ret void
}

declare dso_local i32 @demux_seek(i32, double, i32) #1

declare dso_local i32 @stream_control(i32, i32, double*) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_4__*, i8*, double) #1

declare dso_local i32 @stream_drop_buffers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
