; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, i32, %struct.priv*, %struct.TYPE_4__* }
%struct.priv = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@vo_tct_conf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 2
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.vo*, %struct.vo** %2, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 3
  %14 = load %struct.priv*, %struct.priv** %13, align 8
  store %struct.priv* %14, %struct.priv** %3, align 8
  %15 = load %struct.vo*, %struct.vo** %2, align 8
  %16 = load %struct.vo*, %struct.vo** %2, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mp_get_config_group(%struct.vo* %15, i32 %18, i32* @vo_tct_conf)
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.vo*, %struct.vo** %2, align 8
  %23 = call %struct.TYPE_5__* @mp_sws_alloc(%struct.vo* %22)
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.vo*, %struct.vo** %2, align 8
  %27 = getelementptr inbounds %struct.vo, %struct.vo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.vo*, %struct.vo** %2, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_5__* %35, i32 %38)
  ret i32 0
}

declare dso_local i32 @mp_get_config_group(%struct.vo*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @mp_sws_alloc(%struct.vo*) #1

declare dso_local i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
