; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_get_win_size.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_get_win_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DEFAULT_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32*, i32*)* @get_win_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_win_size(%struct.vo* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.vo*, %struct.vo** %4, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %7, align 8
  %11 = load i32, i32* @DEFAULT_WIDTH, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @DEFAULT_HEIGHT, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.priv*, %struct.priv** %7, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.priv*, %struct.priv** %7, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.priv*, %struct.priv** %7, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.priv*, %struct.priv** %7, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
