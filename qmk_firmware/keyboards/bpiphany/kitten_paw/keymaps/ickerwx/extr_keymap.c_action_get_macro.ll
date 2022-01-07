; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LSFT = common dso_local global i32 0, align 4
@EQL = common dso_local global i32 0, align 4
@RALT = common dso_local global i32 0, align 4
@SPC = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %46 [
    i32 128, label %9
    i32 129, label %30
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, i32* @LSFT, align 4
  %17 = call i32 @D(i32 %16)
  %18 = load i32, i32* @EQL, align 4
  %19 = call i32 @T(i32 %18)
  %20 = load i32, i32* @RALT, align 4
  %21 = call i32 @U(i32 %20)
  %22 = load i32, i32* @SPC, align 4
  %23 = call i32 @T(i32 %22)
  %24 = load i32, i32* @END, align 4
  %25 = call i32* (i32, i32, i32, ...) @MACRO(i32 %17, i32 %19, i32 %21, i32 %23, i32 %24)
  br label %28

26:                                               ; preds = %9
  %27 = load i32*, i32** @MACRO_NONE, align 8
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i32* [ %25, %15 ], [ %27, %26 ]
  store i32* %29, i32** %4, align 8
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = call i32 @T(i32 128)
  %38 = load i32, i32* @SPC, align 4
  %39 = call i32 @T(i32 %38)
  %40 = load i32, i32* @END, align 4
  %41 = call i32* (i32, i32, i32, ...) @MACRO(i32 %37, i32 %39, i32 %40)
  br label %44

42:                                               ; preds = %30
  %43 = load i32*, i32** @MACRO_NONE, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32* [ %41, %36 ], [ %43, %42 ]
  store i32* %45, i32** %4, align 8
  br label %48

46:                                               ; preds = %3
  %47 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %44, %28
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32* @MACRO(i32, i32, i32, ...) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
