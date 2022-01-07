; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_check_interval.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_check_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_delay_filter_data = type { i64 }
%struct.obs_video_info = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpu_delay_filter_data*)* @check_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_interval(%struct.gpu_delay_filter_data* %0) #0 {
  %2 = alloca %struct.gpu_delay_filter_data*, align 8
  %3 = alloca %struct.obs_video_info, align 8
  %4 = alloca i64, align 8
  store %struct.gpu_delay_filter_data* %0, %struct.gpu_delay_filter_data** %2, align 8
  %5 = bitcast %struct.obs_video_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = call i32 @obs_get_video_info(%struct.obs_video_info* %3)
  %7 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %3, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = mul i64 %8, 1000000000
  %10 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = udiv i64 %9, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %15 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @update_interval(%struct.gpu_delay_filter_data* %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @obs_get_video_info(%struct.obs_video_info*) #2

declare dso_local i32 @update_interval(%struct.gpu_delay_filter_data*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
