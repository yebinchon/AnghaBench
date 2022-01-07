; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_lavc.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_lavc.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.priv* }
%struct.priv = type { i32 }

@STREAM_VIDEO = common dso_local global i32 0, align 4
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
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @STREAM_VIDEO, align 4
  %12 = load %struct.vo*, %struct.vo** %3, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @encoder_context_alloc(i32 %10, i32 %11, i32 %14)
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @talloc_steal(%struct.priv* %24, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @encoder_context_alloc(i32, i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
