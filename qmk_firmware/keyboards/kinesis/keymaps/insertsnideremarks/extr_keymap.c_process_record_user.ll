; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kinesis/keymaps/insertsnideremarks/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kinesis/keymaps/insertsnideremarks/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_COLEMAK = common dso_local global i64 0, align 8
@_QWERTY = common dso_local global i64 0, align 8
@_NUMBERS = common dso_local global i64 0, align 8
@_NUMBERS2 = common dso_local global i64 0, align 8
@_FUNCTION = common dso_local global i64 0, align 8
@_FUNCTION2 = common dso_local global i64 0, align 8
@_NUMPAD = common dso_local global i64 0, align 8
@_COLEMAKGM = common dso_local global i64 0, align 8
@_QWERTYGM = common dso_local global i64 0, align 8
@_ADJUST = common dso_local global i64 0, align 8
@_ADJUST2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %131 [
    i32 131, label %7
    i32 129, label %38
    i32 130, label %69
    i32 128, label %100
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load i64, i64* @_COLEMAK, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @default_layer_set(i64 %15)
  %17 = load i64, i64* @_QWERTY, align 8
  %18 = call i32 @layer_off(i64 %17)
  %19 = load i64, i64* @_NUMBERS, align 8
  %20 = call i32 @layer_off(i64 %19)
  %21 = load i64, i64* @_NUMBERS2, align 8
  %22 = call i32 @layer_off(i64 %21)
  %23 = load i64, i64* @_FUNCTION, align 8
  %24 = call i32 @layer_off(i64 %23)
  %25 = load i64, i64* @_FUNCTION2, align 8
  %26 = call i32 @layer_off(i64 %25)
  %27 = load i64, i64* @_NUMPAD, align 8
  %28 = call i32 @layer_off(i64 %27)
  %29 = load i64, i64* @_COLEMAKGM, align 8
  %30 = call i32 @layer_off(i64 %29)
  %31 = load i64, i64* @_QWERTYGM, align 8
  %32 = call i32 @layer_off(i64 %31)
  %33 = load i64, i64* @_ADJUST, align 8
  %34 = call i32 @layer_off(i64 %33)
  %35 = load i64, i64* @_ADJUST2, align 8
  %36 = call i32 @layer_off(i64 %35)
  br label %37

37:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %132

38:                                               ; preds = %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = load i64, i64* @_QWERTY, align 8
  %46 = shl i64 1, %45
  %47 = call i32 @default_layer_set(i64 %46)
  %48 = load i64, i64* @_COLEMAK, align 8
  %49 = call i32 @layer_off(i64 %48)
  %50 = load i64, i64* @_NUMBERS, align 8
  %51 = call i32 @layer_off(i64 %50)
  %52 = load i64, i64* @_NUMBERS2, align 8
  %53 = call i32 @layer_off(i64 %52)
  %54 = load i64, i64* @_FUNCTION, align 8
  %55 = call i32 @layer_off(i64 %54)
  %56 = load i64, i64* @_FUNCTION2, align 8
  %57 = call i32 @layer_off(i64 %56)
  %58 = load i64, i64* @_NUMPAD, align 8
  %59 = call i32 @layer_off(i64 %58)
  %60 = load i64, i64* @_COLEMAKGM, align 8
  %61 = call i32 @layer_off(i64 %60)
  %62 = load i64, i64* @_QWERTYGM, align 8
  %63 = call i32 @layer_off(i64 %62)
  %64 = load i64, i64* @_ADJUST, align 8
  %65 = call i32 @layer_off(i64 %64)
  %66 = load i64, i64* @_ADJUST2, align 8
  %67 = call i32 @layer_off(i64 %66)
  br label %68

68:                                               ; preds = %44, %38
  store i32 0, i32* %3, align 4
  br label %132

69:                                               ; preds = %2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load i64, i64* @_COLEMAKGM, align 8
  %77 = shl i64 1, %76
  %78 = call i32 @default_layer_set(i64 %77)
  %79 = load i64, i64* @_QWERTY, align 8
  %80 = call i32 @layer_off(i64 %79)
  %81 = load i64, i64* @_COLEMAK, align 8
  %82 = call i32 @layer_off(i64 %81)
  %83 = load i64, i64* @_NUMBERS, align 8
  %84 = call i32 @layer_off(i64 %83)
  %85 = load i64, i64* @_NUMBERS2, align 8
  %86 = call i32 @layer_off(i64 %85)
  %87 = load i64, i64* @_FUNCTION, align 8
  %88 = call i32 @layer_off(i64 %87)
  %89 = load i64, i64* @_FUNCTION2, align 8
  %90 = call i32 @layer_off(i64 %89)
  %91 = load i64, i64* @_NUMPAD, align 8
  %92 = call i32 @layer_off(i64 %91)
  %93 = load i64, i64* @_QWERTYGM, align 8
  %94 = call i32 @layer_off(i64 %93)
  %95 = load i64, i64* @_ADJUST, align 8
  %96 = call i32 @layer_off(i64 %95)
  %97 = load i64, i64* @_ADJUST2, align 8
  %98 = call i32 @layer_off(i64 %97)
  br label %99

99:                                               ; preds = %75, %69
  store i32 0, i32* %3, align 4
  br label %132

100:                                              ; preds = %2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %100
  %107 = load i64, i64* @_QWERTYGM, align 8
  %108 = shl i64 1, %107
  %109 = call i32 @default_layer_set(i64 %108)
  %110 = load i64, i64* @_QWERTY, align 8
  %111 = call i32 @layer_off(i64 %110)
  %112 = load i64, i64* @_COLEMAK, align 8
  %113 = call i32 @layer_off(i64 %112)
  %114 = load i64, i64* @_NUMBERS, align 8
  %115 = call i32 @layer_off(i64 %114)
  %116 = load i64, i64* @_NUMBERS2, align 8
  %117 = call i32 @layer_off(i64 %116)
  %118 = load i64, i64* @_FUNCTION, align 8
  %119 = call i32 @layer_off(i64 %118)
  %120 = load i64, i64* @_FUNCTION2, align 8
  %121 = call i32 @layer_off(i64 %120)
  %122 = load i64, i64* @_NUMPAD, align 8
  %123 = call i32 @layer_off(i64 %122)
  %124 = load i64, i64* @_COLEMAKGM, align 8
  %125 = call i32 @layer_off(i64 %124)
  %126 = load i64, i64* @_ADJUST, align 8
  %127 = call i32 @layer_off(i64 %126)
  %128 = load i64, i64* @_ADJUST2, align 8
  %129 = call i32 @layer_off(i64 %128)
  br label %130

130:                                              ; preds = %106, %100
  store i32 0, i32* %3, align 4
  br label %132

131:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %130, %99, %68, %37
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @default_layer_set(i64) #1

declare dso_local i32 @layer_off(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
