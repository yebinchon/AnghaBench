; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swscale.c_mp_sws_filter_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swscale.c_mp_sws_filter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_sws_filter = type { i32, %struct.TYPE_3__*, %struct.mp_filter* }
%struct.TYPE_3__ = type { i32 }
%struct.mp_filter = type { i32, i32, %struct.mp_sws_filter* }

@sws_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_sws_filter* @mp_sws_filter_create(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_sws_filter*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_sws_filter*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %7 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %6, i32* @sws_filter)
  store %struct.mp_filter* %7, %struct.mp_filter** %4, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = icmp ne %struct.mp_filter* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mp_sws_filter* null, %struct.mp_sws_filter** %2, align 8
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %13 = load i32, i32* @MP_PIN_IN, align 4
  %14 = call i32 @mp_filter_add_pin(%struct.mp_filter* %12, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %16 = load i32, i32* @MP_PIN_OUT, align 4
  %17 = call i32 @mp_filter_add_pin(%struct.mp_filter* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %19 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %18, i32 0, i32 2
  %20 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %19, align 8
  store %struct.mp_sws_filter* %20, %struct.mp_sws_filter** %5, align 8
  %21 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %22 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %23 = getelementptr inbounds %struct.mp_sws_filter, %struct.mp_sws_filter* %22, i32 0, i32 2
  store %struct.mp_filter* %21, %struct.mp_filter** %23, align 8
  %24 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %25 = call %struct.TYPE_3__* @mp_sws_alloc(%struct.mp_sws_filter* %24)
  %26 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %27 = getelementptr inbounds %struct.mp_sws_filter, %struct.mp_sws_filter* %26, i32 0, i32 1
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %29 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %32 = getelementptr inbounds %struct.mp_sws_filter, %struct.mp_sws_filter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %36 = getelementptr inbounds %struct.mp_sws_filter, %struct.mp_sws_filter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %39 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_3__* %37, i32 %40)
  %42 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %43 = call i32 @mp_image_pool_new(%struct.mp_sws_filter* %42)
  %44 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %45 = getelementptr inbounds %struct.mp_sws_filter, %struct.mp_sws_filter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  store %struct.mp_sws_filter* %46, %struct.mp_sws_filter** %2, align 8
  br label %47

47:                                               ; preds = %11, %10
  %48 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %2, align 8
  ret %struct.mp_sws_filter* %48
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local %struct.TYPE_3__* @mp_sws_alloc(%struct.mp_sws_filter*) #1

declare dso_local i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mp_image_pool_new(%struct.mp_sws_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
