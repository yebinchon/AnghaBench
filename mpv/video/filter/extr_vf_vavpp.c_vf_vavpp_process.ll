; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_vf_vavpp_process.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_vf_vavpp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mp_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @vf_vavpp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf_vavpp_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = call i32 @update_pipeline(%struct.mp_filter* %8)
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mp_refqueue_execute_reinit(i32 %12)
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mp_refqueue_can_output(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mp_refqueue_should_deint(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.mp_image* @mp_refqueue_get(i32 %35, i32 0)
  store %struct.mp_image* %36, %struct.mp_image** %4, align 8
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %41 = call i32 @mp_image_new_ref(%struct.mp_image* %40)
  %42 = call i32 @mp_refqueue_write_out_pin(i32 %39, i32 %41)
  br label %50

43:                                               ; preds = %26
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %48 = call i32 @render(%struct.mp_filter* %47)
  %49 = call i32 @mp_refqueue_write_out_pin(i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %19, %43, %32
  ret void
}

declare dso_local i32 @update_pipeline(%struct.mp_filter*) #1

declare dso_local i32 @mp_refqueue_execute_reinit(i32) #1

declare dso_local i32 @mp_refqueue_can_output(i32) #1

declare dso_local i32 @mp_refqueue_should_deint(i32) #1

declare dso_local %struct.mp_image* @mp_refqueue_get(i32, i32) #1

declare dso_local i32 @mp_refqueue_write_out_pin(i32, i32) #1

declare dso_local i32 @mp_image_new_ref(%struct.mp_image*) #1

declare dso_local i32 @render(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
