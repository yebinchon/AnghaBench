; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %5 = load %struct.vo*, %struct.vo** %3, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 2
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = call i32 @vo_wayland_init(%struct.vo* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = call %struct.TYPE_3__* @mp_sws_alloc(%struct.vo* %13)
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %16, align 8
  %17 = load %struct.vo*, %struct.vo** %3, align 8
  %18 = getelementptr inbounds %struct.vo, %struct.vo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = getelementptr inbounds %struct.vo, %struct.vo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_3__* %26, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @vo_wayland_init(%struct.vo*) #1

declare dso_local %struct.TYPE_3__* @mp_sws_alloc(%struct.vo*) #1

declare dso_local i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
