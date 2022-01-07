; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_add_chmap.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_add_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_autoconvert = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i32, i32 }
%struct.mp_chmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_autoconvert_add_chmap(%struct.mp_autoconvert* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca %struct.mp_autoconvert*, align 8
  %4 = alloca %struct.mp_chmap*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.mp_autoconvert* %0, %struct.mp_autoconvert** %3, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %4, align 8
  %6 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %3, align 8
  %7 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 1
  %13 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %14 = call i32 @mp_chmap_sel_add_map(i32* %12, %struct.mp_chmap* %13)
  %15 = load %struct.priv*, %struct.priv** %5, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  ret void
}

declare dso_local i32 @mp_chmap_sel_add_map(i32*, %struct.mp_chmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
