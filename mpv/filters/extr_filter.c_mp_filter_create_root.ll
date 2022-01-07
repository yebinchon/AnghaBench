; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_create_root.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_create_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32 }
%struct.mpv_global = type { i32 }
%struct.mp_filter_params = type { %struct.mpv_global*, i32* }

@filter_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_filter* @mp_filter_create_root(%struct.mpv_global* %0) #0 {
  %2 = alloca %struct.mpv_global*, align 8
  %3 = alloca %struct.mp_filter_params, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %2, align 8
  %4 = getelementptr inbounds %struct.mp_filter_params, %struct.mp_filter_params* %3, i32 0, i32 0
  %5 = load %struct.mpv_global*, %struct.mpv_global** %2, align 8
  store %struct.mpv_global* %5, %struct.mpv_global** %4, align 8
  %6 = getelementptr inbounds %struct.mp_filter_params, %struct.mp_filter_params* %3, i32 0, i32 1
  store i32* @filter_root, i32** %6, align 8
  %7 = call %struct.mp_filter* @mp_filter_create_with_params(%struct.mp_filter_params* %3)
  ret %struct.mp_filter* %7
}

declare dso_local %struct.mp_filter* @mp_filter_create_with_params(%struct.mp_filter_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
