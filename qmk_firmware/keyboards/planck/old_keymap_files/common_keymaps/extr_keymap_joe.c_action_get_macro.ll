; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/old_keymap_files/common_keymaps/extr_keymap_joe.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/old_keymap_files/common_keymaps/extr_keymap_joe.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@LSFT = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@SPC = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_5__* %8 to i8*
  %12 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %94 [
    i32 130, label %14
    i32 129, label %45
    i32 128, label %76
  ]

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32, i32* @LSFT, align 4
  %20 = call i32 @D(i32 %19)
  %21 = load i32, i32* @P, align 4
  %22 = call i32 @T(i32 %21)
  %23 = call i32 @T(i32 9)
  %24 = load i32, i32* @SPC, align 4
  %25 = call i32 @T(i32 %24)
  %26 = load i32, i32* @SPC, align 4
  %27 = call i32 @T(i32 %26)
  %28 = call i32 @T(i32 0)
  %29 = load i32, i32* @P, align 4
  %30 = call i32 @T(i32 %29)
  %31 = load i32, i32* @LSFT, align 4
  %32 = call i32 @U(i32 %31)
  %33 = load i32, i32* @LEFT, align 4
  %34 = call i32 @T(i32 %33)
  %35 = load i32, i32* @LEFT, align 4
  %36 = call i32 @T(i32 %35)
  %37 = load i32, i32* @LEFT, align 4
  %38 = call i32 @T(i32 %37)
  %39 = load i32, i32* @END, align 4
  %40 = call i32* (i32, i32, i32, i32, i32, ...) @MACRO(i32 %20, i32 %22, i32 %23, i32 %25, i32 %27, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %39)
  br label %43

41:                                               ; preds = %14
  %42 = load i32*, i32** @MACRO_NONE, align 8
  br label %43

43:                                               ; preds = %41, %18
  %44 = phi i32* [ %40, %18 ], [ %42, %41 ]
  store i32* %44, i32** %4, align 8
  br label %96

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load i32, i32* @LSFT, align 4
  %51 = call i32 @D(i32 %50)
  %52 = call i32 @T(i32 9)
  %53 = load i32, i32* @P, align 4
  %54 = call i32 @T(i32 %53)
  %55 = load i32, i32* @SPC, align 4
  %56 = call i32 @T(i32 %55)
  %57 = load i32, i32* @SPC, align 4
  %58 = call i32 @T(i32 %57)
  %59 = load i32, i32* @P, align 4
  %60 = call i32 @T(i32 %59)
  %61 = call i32 @T(i32 0)
  %62 = load i32, i32* @LSFT, align 4
  %63 = call i32 @U(i32 %62)
  %64 = load i32, i32* @LEFT, align 4
  %65 = call i32 @T(i32 %64)
  %66 = load i32, i32* @LEFT, align 4
  %67 = call i32 @T(i32 %66)
  %68 = load i32, i32* @LEFT, align 4
  %69 = call i32 @T(i32 %68)
  %70 = load i32, i32* @END, align 4
  %71 = call i32* (i32, i32, i32, i32, i32, ...) @MACRO(i32 %51, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69, i32 %70)
  br label %74

72:                                               ; preds = %45
  %73 = load i32*, i32** @MACRO_NONE, align 8
  br label %74

74:                                               ; preds = %72, %49
  %75 = phi i32* [ %71, %49 ], [ %73, %72 ]
  store i32* %75, i32** %4, align 8
  br label %96

76:                                               ; preds = %3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* @LSFT, align 4
  %82 = call i32 @D(i32 %81)
  %83 = load i32, i32* @P, align 4
  %84 = call i32 @T(i32 %83)
  %85 = call i32 @T(i32 0)
  %86 = load i32, i32* @LSFT, align 4
  %87 = call i32 @U(i32 %86)
  %88 = load i32, i32* @END, align 4
  %89 = call i32* (i32, i32, i32, i32, i32, ...) @MACRO(i32 %82, i32 %84, i32 %85, i32 %87, i32 %88)
  br label %92

90:                                               ; preds = %76
  %91 = load i32*, i32** @MACRO_NONE, align 8
  br label %92

92:                                               ; preds = %90, %80
  %93 = phi i32* [ %89, %80 ], [ %91, %90 ]
  store i32* %93, i32** %4, align 8
  br label %96

94:                                               ; preds = %3
  %95 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %94, %92, %74, %43
  %97 = load i32*, i32** %4, align 8
  ret i32* %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, ...) #2

declare dso_local i32 @D(i32) #2

declare dso_local i32 @T(i32) #2

declare dso_local i32 @U(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
