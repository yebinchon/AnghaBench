; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_format_change_continue.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_format_change_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_autoconvert = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_autoconvert_format_change_continue(%struct.mp_autoconvert* %0) #0 {
  %2 = alloca %struct.mp_autoconvert*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.mp_autoconvert* %0, %struct.mp_autoconvert** %2, align 8
  %4 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %2, align 8
  %5 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %2, align 8
  %19 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @mp_filter_wakeup(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @mp_filter_wakeup(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
