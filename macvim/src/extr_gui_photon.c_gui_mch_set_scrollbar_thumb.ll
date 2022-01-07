; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_set_scrollbar_thumb.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_set_scrollbar_thumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@Pt_ARG_MAXIMUM = common dso_local global i32 0, align 4
@Pt_ARG_SLIDER_SIZE = common dso_local global i32 0, align 4
@Pt_ARG_GAUGE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_set_scrollbar_thumb(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %13
  %15 = load i32, i32* @Pt_ARG_MAXIMUM, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @PtSetArg(i32* %14, i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %20
  %22 = load i32, i32* @Pt_ARG_SLIDER_SIZE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @PtSetArg(i32* %21, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %27
  %29 = load i32, i32* @Pt_ARG_GAUGE_VALUE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @PtSetArg(i32* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %37 = call i32 @PtSetResources(i32 %34, i32 %35, i32* %36)
  ret void
}

declare dso_local i32 @PtSetArg(i32*, i32, i32, i32) #1

declare dso_local i32 @PtSetResources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
