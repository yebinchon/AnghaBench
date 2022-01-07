; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/jacwib/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/jacwib/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_MQWERTY = common dso_local global i64 0, align 8
@_MLOWER = common dso_local global i32 0, align 4
@_MRAISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %113 [
    i32 129, label %7
    i32 133, label %18
    i32 128, label %39
    i32 131, label %60
    i32 132, label %71
    i32 130, label %92
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @_LOWER, align 4
  %26 = call i32 @layer_on(i32 %25)
  %27 = load i32, i32* @_LOWER, align 4
  %28 = load i32, i32* @_RAISE, align 4
  %29 = load i32, i32* @_ADJUST, align 4
  %30 = call i32 @update_tri_layer(i32 %27, i32 %28, i32 %29)
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @_LOWER, align 4
  %33 = call i32 @layer_off(i32 %32)
  %34 = load i32, i32* @_LOWER, align 4
  %35 = load i32, i32* @_RAISE, align 4
  %36 = load i32, i32* @_ADJUST, align 4
  %37 = call i32 @update_tri_layer(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %114

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @_RAISE, align 4
  %47 = call i32 @layer_on(i32 %46)
  %48 = load i32, i32* @_LOWER, align 4
  %49 = load i32, i32* @_RAISE, align 4
  %50 = load i32, i32* @_ADJUST, align 4
  %51 = call i32 @update_tri_layer(i32 %48, i32 %49, i32 %50)
  br label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @_RAISE, align 4
  %54 = call i32 @layer_off(i32 %53)
  %55 = load i32, i32* @_LOWER, align 4
  %56 = load i32, i32* @_RAISE, align 4
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @update_tri_layer(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  store i32 0, i32* %3, align 4
  br label %114

60:                                               ; preds = %2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* @_MQWERTY, align 8
  %68 = shl i64 1, %67
  %69 = call i32 @persistent_default_layer_set(i64 %68)
  br label %70

70:                                               ; preds = %66, %60
  store i32 0, i32* %3, align 4
  br label %114

71:                                               ; preds = %2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @_MLOWER, align 4
  %79 = call i32 @layer_on(i32 %78)
  %80 = load i32, i32* @_MLOWER, align 4
  %81 = load i32, i32* @_MRAISE, align 4
  %82 = load i32, i32* @_ADJUST, align 4
  %83 = call i32 @update_tri_layer(i32 %80, i32 %81, i32 %82)
  br label %91

84:                                               ; preds = %71
  %85 = load i32, i32* @_MLOWER, align 4
  %86 = call i32 @layer_off(i32 %85)
  %87 = load i32, i32* @_MLOWER, align 4
  %88 = load i32, i32* @_MRAISE, align 4
  %89 = load i32, i32* @_ADJUST, align 4
  %90 = call i32 @update_tri_layer(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  store i32 0, i32* %3, align 4
  br label %114

92:                                               ; preds = %2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* @_MRAISE, align 4
  %100 = call i32 @layer_on(i32 %99)
  %101 = load i32, i32* @_MLOWER, align 4
  %102 = load i32, i32* @_MRAISE, align 4
  %103 = load i32, i32* @_ADJUST, align 4
  %104 = call i32 @update_tri_layer(i32 %101, i32 %102, i32 %103)
  br label %112

105:                                              ; preds = %92
  %106 = load i32, i32* @_MRAISE, align 4
  %107 = call i32 @layer_off(i32 %106)
  %108 = load i32, i32* @_MLOWER, align 4
  %109 = load i32, i32* @_MRAISE, align 4
  %110 = load i32, i32* @_ADJUST, align 4
  %111 = call i32 @update_tri_layer(i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %98
  store i32 0, i32* %3, align 4
  br label %114

113:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %112, %91, %70, %59, %38, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
