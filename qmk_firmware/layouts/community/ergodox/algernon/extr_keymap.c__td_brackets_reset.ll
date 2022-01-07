; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c__td_brackets_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c__td_brackets_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@CT_LBP = common dso_local global i32 0, align 4
@KC_LBRC = common dso_local global i32 0, align 4
@KC_RBRC = common dso_local global i32 0, align 4
@KC_LPRN = common dso_local global i32 0, align 4
@KC_RPRN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @_td_brackets_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_td_brackets_reset(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @CT_LBP, align 4
  %14 = call i64 @TD(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @KC_LBRC, align 4
  %18 = call i32 @unregister_code16(i32 %17)
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @KC_RBRC, align 4
  %21 = call i32 @unregister_code16(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @CT_LBP, align 4
  %33 = call i64 @TD(i32 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @KC_LPRN, align 4
  %37 = call i32 @unregister_code16(i32 %36)
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @KC_RPRN, align 4
  %40 = call i32 @unregister_code16(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %42, %22
  ret void
}

declare dso_local i64 @TD(i32) #1

declare dso_local i32 @unregister_code16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
