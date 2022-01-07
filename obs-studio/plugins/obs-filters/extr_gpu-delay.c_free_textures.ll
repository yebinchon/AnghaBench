; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_free_textures.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_free_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_delay_filter_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpu_delay_filter_data*)* @free_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_textures(%struct.gpu_delay_filter_data* %0) #0 {
  %2 = alloca %struct.gpu_delay_filter_data*, align 8
  %3 = alloca %struct.frame, align 4
  store %struct.gpu_delay_filter_data* %0, %struct.gpu_delay_filter_data** %2, align 8
  %4 = call i32 (...) @obs_enter_graphics()
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %7 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %13 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %12, i32 0, i32 0
  %14 = call i32 @circlebuf_pop_front(%struct.TYPE_3__* %13, %struct.frame* %3, i32 4)
  %15 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gs_texrender_destroy(i32 %16)
  br label %5

18:                                               ; preds = %5
  %19 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %20 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %19, i32 0, i32 0
  %21 = call i32 @circlebuf_free(%struct.TYPE_3__* %20)
  %22 = call i32 (...) @obs_leave_graphics()
  ret void
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_3__*, %struct.frame*, i32) #1

declare dso_local i32 @gs_texrender_destroy(i32) #1

declare dso_local i32 @circlebuf_free(%struct.TYPE_3__*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
