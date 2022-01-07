; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jd45/keymaps/justin/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jd45/keymaps/justin/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENT = common dso_local global i32 0, align 4
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
  switch i32 %8, label %81 [
    i32 130, label %9
    i32 129, label %33
    i32 128, label %57
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = call i32 @I(i32 0)
  %17 = call i32 @T(i32 1)
  %18 = call i32 @T(i32 2)
  %19 = call i32 @T(i32 3)
  %20 = call i32 @T(i32 4)
  %21 = call i32 @T(i32 5)
  %22 = call i32 @T(i32 6)
  %23 = call i32 @T(i32 7)
  %24 = call i32 @T(i32 8)
  %25 = load i32, i32* @ENT, align 4
  %26 = call i32 @T(i32 %25)
  %27 = load i32, i32* @END, align 4
  %28 = call i32* @MACRO(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %26, i32 %27)
  br label %31

29:                                               ; preds = %9
  %30 = load i32*, i32** @MACRO_NONE, align 8
  br label %31

31:                                               ; preds = %29, %15
  %32 = phi i32* [ %28, %15 ], [ %30, %29 ]
  store i32* %32, i32** %4, align 8
  br label %83

33:                                               ; preds = %3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = call i32 @I(i32 0)
  %41 = call i32 @T(i32 1)
  %42 = call i32 @T(i32 2)
  %43 = call i32 @T(i32 3)
  %44 = call i32 @T(i32 4)
  %45 = call i32 @T(i32 5)
  %46 = call i32 @T(i32 6)
  %47 = call i32 @T(i32 7)
  %48 = call i32 @T(i32 8)
  %49 = load i32, i32* @ENT, align 4
  %50 = call i32 @T(i32 %49)
  %51 = load i32, i32* @END, align 4
  %52 = call i32* @MACRO(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %50, i32 %51)
  br label %55

53:                                               ; preds = %33
  %54 = load i32*, i32** @MACRO_NONE, align 8
  br label %55

55:                                               ; preds = %53, %39
  %56 = phi i32* [ %52, %39 ], [ %54, %53 ]
  store i32* %56, i32** %4, align 8
  br label %83

57:                                               ; preds = %3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = call i32 @I(i32 0)
  %65 = call i32 @T(i32 1)
  %66 = call i32 @T(i32 2)
  %67 = call i32 @T(i32 3)
  %68 = call i32 @T(i32 4)
  %69 = call i32 @T(i32 5)
  %70 = call i32 @T(i32 6)
  %71 = call i32 @T(i32 7)
  %72 = call i32 @T(i32 8)
  %73 = load i32, i32* @ENT, align 4
  %74 = call i32 @T(i32 %73)
  %75 = load i32, i32* @END, align 4
  %76 = call i32* @MACRO(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %74, i32 %75)
  br label %79

77:                                               ; preds = %57
  %78 = load i32*, i32** @MACRO_NONE, align 8
  br label %79

79:                                               ; preds = %77, %63
  %80 = phi i32* [ %76, %63 ], [ %78, %77 ]
  store i32* %80, i32** %4, align 8
  br label %83

81:                                               ; preds = %3
  %82 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %82, i32** %4, align 8
  br label %83

83:                                               ; preds = %81, %79, %55, %31
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I(i32) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
