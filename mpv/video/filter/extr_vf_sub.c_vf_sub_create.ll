; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_sub.c_vf_sub_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_sub.c_vf_sub_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@vf_sub_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"This filter is deprecated and will be removed (no replacement)\0A\00", align 1
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_filter* (%struct.mp_filter*, i8*)* @vf_sub_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_filter* @vf_sub_create(%struct.mp_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %8, i32* @vf_sub_filter)
  store %struct.mp_filter* %9, %struct.mp_filter** %6, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %11 = icmp ne %struct.mp_filter* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @talloc_free(i8* %13)
  store %struct.mp_filter* null, %struct.mp_filter** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %17 = call i32 @MP_WARN(%struct.mp_filter* %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %19 = load i32, i32* @MP_PIN_IN, align 4
  %20 = call i32 @mp_filter_add_pin(%struct.mp_filter* %18, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %22 = load i32, i32* @MP_PIN_OUT, align 4
  %23 = call i32 @mp_filter_add_pin(%struct.mp_filter* %21, i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %25 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %24, i32 0, i32 0
  %26 = load %struct.priv*, %struct.priv** %25, align 8
  store %struct.priv* %26, %struct.priv** %7, align 8
  %27 = load %struct.priv*, %struct.priv** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @talloc_steal(%struct.priv* %27, i8* %28)
  %30 = load %struct.priv*, %struct.priv** %7, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.priv*, %struct.priv** %7, align 8
  %33 = call i32 @mp_image_pool_new(%struct.priv* %32)
  %34 = load %struct.priv*, %struct.priv** %7, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  store %struct.mp_filter* %36, %struct.mp_filter** %3, align 8
  br label %37

37:                                               ; preds = %15, %12
  %38 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  ret %struct.mp_filter* %38
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i32 @talloc_steal(%struct.priv*, i8*) #1

declare dso_local i32 @mp_image_pool_new(%struct.priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
