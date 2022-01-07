; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_tap_dance.c_dance_uply_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_tap_dance.c_dance_uply_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@upltap_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@active_layer = common dso_local global i32 0, align 4
@_UL = common dso_local global i32 0, align 4
@_BL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_uply_finished(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @cur_dance(i32* %5)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @upltap_state, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @upltap_state, i32 0, i32 0), align 4
  switch i32 %7, label %22 [
    i32 128, label %8
    i32 129, label %19
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @active_layer, align 4
  %10 = load i32, i32* @_UL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @_BL, align 4
  %14 = call i32 @layer_switcher_tap(i32 %13)
  br label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @_UL, align 4
  %17 = call i32 @layer_switcher_tap(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @_UL, align 4
  %21 = call i32 @layer_switcher_tap(i32 %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @_BL, align 4
  %24 = call i32 @layer_switcher_tap(i32 %23)
  br label %25

25:                                               ; preds = %22, %19, %18
  ret void
}

declare dso_local i32 @cur_dance(i32*) #1

declare dso_local i32 @layer_switcher_tap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
