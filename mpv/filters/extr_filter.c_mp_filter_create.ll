; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type opaque
%struct.mp_filter_info = type { i32 }
%struct.mp_filter_params = type { %struct.mp_filter_info*, %struct.mp_filter_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %0, %struct.mp_filter_info* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter_info*, align 8
  %5 = alloca %struct.mp_filter_params, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  store %struct.mp_filter_info* %1, %struct.mp_filter_info** %4, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %7 = bitcast %struct.mp_filter* %6 to %struct.mp_filter_info*
  %8 = call i32 @assert(%struct.mp_filter_info* %7)
  %9 = load %struct.mp_filter_info*, %struct.mp_filter_info** %4, align 8
  %10 = call i32 @assert(%struct.mp_filter_info* %9)
  %11 = getelementptr inbounds %struct.mp_filter_params, %struct.mp_filter_params* %5, i32 0, i32 0
  %12 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %13 = bitcast %struct.mp_filter* %12 to %struct.mp_filter_info*
  store %struct.mp_filter_info* %13, %struct.mp_filter_info** %11, align 8
  %14 = getelementptr inbounds %struct.mp_filter_params, %struct.mp_filter_params* %5, i32 0, i32 1
  %15 = load %struct.mp_filter_info*, %struct.mp_filter_info** %4, align 8
  store %struct.mp_filter_info* %15, %struct.mp_filter_info** %14, align 8
  %16 = call %struct.mp_filter_info* @mp_filter_create_with_params(%struct.mp_filter_params* %5)
  %17 = bitcast %struct.mp_filter_info* %16 to %struct.mp_filter*
  ret %struct.mp_filter* %17
}

declare dso_local i32 @assert(%struct.mp_filter_info*) #1

declare dso_local %struct.mp_filter_info* @mp_filter_create_with_params(%struct.mp_filter_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
