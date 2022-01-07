; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.priv*, %struct.priv** %3, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @rubberband_delete(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @talloc_free(i32 %19)
  ret void
}

declare dso_local i32 @rubberband_delete(i64) #1

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
