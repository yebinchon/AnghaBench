; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/mjt/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/mjt/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@key_timer = common dso_local global i32 0, align 4
@LONGPRESS_DELAY = common dso_local global i32 0, align 4
@MPLY = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@MNXT = common dso_local global i32 0, align 4
@APP = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
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
  switch i32 %8, label %79 [
    i32 128, label %9
    i32 129, label %32
    i32 130, label %55
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 (...) @timer_read()
  store i32 %16, i32* @key_timer, align 4
  br label %31

17:                                               ; preds = %9
  %18 = load i32, i32* @key_timer, align 4
  %19 = call i32 @timer_elapsed(i32 %18)
  %20 = load i32, i32* @LONGPRESS_DELAY, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @MPLY, align 4
  %24 = call i32 @T(i32 %23)
  %25 = load i32, i32* @END, align 4
  %26 = call i32* @MACRO(i32 %24, i32 %25)
  store i32* %26, i32** %4, align 8
  br label %81

27:                                               ; preds = %17
  %28 = call i32 @T(i32 128)
  %29 = load i32, i32* @END, align 4
  %30 = call i32* @MACRO(i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %81

31:                                               ; preds = %15
  br label %79

32:                                               ; preds = %3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (...) @timer_read()
  store i32 %39, i32* @key_timer, align 4
  br label %54

40:                                               ; preds = %32
  %41 = load i32, i32* @key_timer, align 4
  %42 = call i32 @timer_elapsed(i32 %41)
  %43 = load i32, i32* @LONGPRESS_DELAY, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @MNXT, align 4
  %47 = call i32 @T(i32 %46)
  %48 = load i32, i32* @END, align 4
  %49 = call i32* @MACRO(i32 %47, i32 %48)
  store i32* %49, i32** %4, align 8
  br label %81

50:                                               ; preds = %40
  %51 = call i32 @T(i32 129)
  %52 = load i32, i32* @END, align 4
  %53 = call i32* @MACRO(i32 %51, i32 %52)
  store i32* %53, i32** %4, align 8
  br label %81

54:                                               ; preds = %38
  br label %79

55:                                               ; preds = %3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (...) @timer_read()
  store i32 %62, i32* @key_timer, align 4
  br label %78

63:                                               ; preds = %55
  %64 = load i32, i32* @key_timer, align 4
  %65 = call i32 @timer_elapsed(i32 %64)
  %66 = load i32, i32* @LONGPRESS_DELAY, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @APP, align 4
  %70 = call i32 @T(i32 %69)
  %71 = load i32, i32* @END, align 4
  %72 = call i32* @MACRO(i32 %70, i32 %71)
  store i32* %72, i32** %4, align 8
  br label %81

73:                                               ; preds = %63
  %74 = load i32, i32* @ESC, align 4
  %75 = call i32 @T(i32 %74)
  %76 = load i32, i32* @END, align 4
  %77 = call i32* @MACRO(i32 %75, i32 %76)
  store i32* %77, i32** %4, align 8
  br label %81

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %3, %78, %54, %31
  %80 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %79, %73, %68, %50, %45, %27, %22
  %82 = load i32*, i32** %4, align 8
  ret i32* %82
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32* @MACRO(i32, i32) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
