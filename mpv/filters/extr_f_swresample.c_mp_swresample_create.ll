; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_mp_swresample_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_mp_swresample_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_swresample = type { double, %struct.mp_filter* }
%struct.mp_filter = type { i32, i32, %struct.priv* }
%struct.priv = type { double, %struct.mp_swresample, i8*, i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_resample_opts = type { i32 }

@swresample_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@resample_conf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_swresample* @mp_swresample_create(%struct.mp_filter* %0, %struct.mp_resample_opts* %1) #0 {
  %3 = alloca %struct.mp_swresample*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_resample_opts*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_resample_opts* %1, %struct.mp_resample_opts** %5, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %8, i32* @swresample_filter)
  store %struct.mp_filter* %9, %struct.mp_filter** %6, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %11 = icmp ne %struct.mp_filter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mp_swresample* null, %struct.mp_swresample** %3, align 8
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %15 = load i32, i32* @MP_PIN_IN, align 4
  %16 = call i32 @mp_filter_add_pin(%struct.mp_filter* %14, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %18 = load i32, i32* @MP_PIN_OUT, align 4
  %19 = call i32 @mp_filter_add_pin(%struct.mp_filter* %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %21 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %20, i32 0, i32 2
  %22 = load %struct.priv*, %struct.priv** %21, align 8
  store %struct.priv* %22, %struct.priv** %7, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %24 = load %struct.priv*, %struct.priv** %7, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.mp_swresample, %struct.mp_swresample* %25, i32 0, i32 1
  store %struct.mp_filter* %23, %struct.mp_filter** %26, align 8
  %27 = load %struct.priv*, %struct.priv** %7, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.mp_swresample, %struct.mp_swresample* %28, i32 0, i32 0
  store double 1.000000e+00, double* %29, align 8
  %30 = load %struct.priv*, %struct.priv** %7, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  store double 1.000000e+00, double* %31, align 8
  %32 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %33 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.priv*, %struct.priv** %7, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mp_resample_opts*, %struct.mp_resample_opts** %5, align 8
  %38 = icmp ne %struct.mp_resample_opts* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %13
  %40 = load %struct.priv*, %struct.priv** %7, align 8
  %41 = load %struct.mp_resample_opts*, %struct.mp_resample_opts** %5, align 8
  %42 = call %struct.TYPE_3__* @talloc_dup(%struct.priv* %40, %struct.mp_resample_opts* %41)
  %43 = load %struct.priv*, %struct.priv** %7, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 4
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %44, align 8
  %45 = load %struct.priv*, %struct.priv** %7, align 8
  %46 = load %struct.priv*, %struct.priv** %7, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mp_dup_str_array(%struct.priv* %45, i32 %50)
  %52 = load %struct.priv*, %struct.priv** %7, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  br label %64

56:                                               ; preds = %13
  %57 = load %struct.priv*, %struct.priv** %7, align 8
  %58 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %59 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_3__* @mp_get_config_group(%struct.priv* %57, i32 %60, i32* @resample_conf)
  %62 = load %struct.priv*, %struct.priv** %7, align 8
  %63 = getelementptr inbounds %struct.priv, %struct.priv* %62, i32 0, i32 4
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %63, align 8
  br label %64

64:                                               ; preds = %56, %39
  %65 = load %struct.priv*, %struct.priv** %7, align 8
  %66 = call i8* @mp_aframe_pool_create(%struct.priv* %65)
  %67 = load %struct.priv*, %struct.priv** %7, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.priv*, %struct.priv** %7, align 8
  %70 = call i8* @mp_aframe_pool_create(%struct.priv* %69)
  %71 = load %struct.priv*, %struct.priv** %7, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.priv*, %struct.priv** %7, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 1
  store %struct.mp_swresample* %74, %struct.mp_swresample** %3, align 8
  br label %75

75:                                               ; preds = %64, %12
  %76 = load %struct.mp_swresample*, %struct.mp_swresample** %3, align 8
  ret %struct.mp_swresample* %76
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local %struct.TYPE_3__* @talloc_dup(%struct.priv*, %struct.mp_resample_opts*) #1

declare dso_local i32 @mp_dup_str_array(%struct.priv*, i32) #1

declare dso_local %struct.TYPE_3__* @mp_get_config_group(%struct.priv*, i32, i32*) #1

declare dso_local i8* @mp_aframe_pool_create(%struct.priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
