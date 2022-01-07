; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_fixed_aframe_size_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_fixed_aframe_size_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.fixed_aframe_size_priv* }
%struct.fixed_aframe_size_priv = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @fixed_aframe_size_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixed_aframe_size_reset(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.fixed_aframe_size_priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %4, i32 0, i32 0
  %6 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %5, align 8
  store %struct.fixed_aframe_size_priv* %6, %struct.fixed_aframe_size_priv** %3, align 8
  %7 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %7, i32 0, i32 2
  %9 = call i32 @TA_FREEP(i32* %8)
  %10 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %11 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %10, i32 0, i32 1
  %12 = call i32 @TA_FREEP(i32* %11)
  %13 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %14 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

declare dso_local i32 @TA_FREEP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
