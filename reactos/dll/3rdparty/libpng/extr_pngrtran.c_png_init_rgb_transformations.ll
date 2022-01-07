; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_init_rgb_transformations.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_init_rgb_transformations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }

@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@PNG_COMPOSE = common dso_local global i32 0, align 4
@PNG_BACKGROUND_EXPAND = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_ENCODE_ALPHA = common dso_local global i32 0, align 4
@PNG_EXPAND = common dso_local global i32 0, align 4
@PNG_EXPAND_tRNS = common dso_local global i32 0, align 4
@PNG_FLAG_OPTIMIZE_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @png_init_rgb_transformations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_init_rgb_transformations(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @PNG_COMPOSE, align 4
  %24 = load i32, i32* @PNG_BACKGROUND_EXPAND, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %22, %19
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
