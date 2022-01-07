; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jj40/keymaps/ajp10304/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jj40/keymaps/ajp10304/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_MLWR = common dso_local global i32 0, align 4
@_MRSE = common dso_local global i32 0, align 4
@_FUNC = common dso_local global i32 0, align 4
@_MFNC = common dso_local global i32 0, align 4
@_FUNC2 = common dso_local global i32 0, align 4
@_MFNC2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = call i32 @process_record_dynamic_macro(i32 %6, %struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %151

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %150 [
    i32 129, label %13
    i32 134, label %24
    i32 128, label %45
    i32 131, label %66
    i32 130, label %91
    i32 133, label %116
    i32 132, label %133
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i64, i64* @_QWERTY, align 8
  %21 = shl i64 1, %20
  %22 = call i32 @persistant_default_layer_set(i64 %21)
  br label %23

23:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %151

24:                                               ; preds = %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @_LOWER, align 4
  %32 = call i32 @layer_on(i32 %31)
  %33 = load i32, i32* @_LOWER, align 4
  %34 = load i32, i32* @_RAISE, align 4
  %35 = load i32, i32* @_ADJUST, align 4
  %36 = call i32 @update_tri_layer(i32 %33, i32 %34, i32 %35)
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @_LOWER, align 4
  %39 = call i32 @layer_off(i32 %38)
  %40 = load i32, i32* @_LOWER, align 4
  %41 = load i32, i32* @_RAISE, align 4
  %42 = load i32, i32* @_ADJUST, align 4
  %43 = call i32 @update_tri_layer(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  store i32 0, i32* %3, align 4
  br label %151

45:                                               ; preds = %11
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @_RAISE, align 4
  %53 = call i32 @layer_on(i32 %52)
  %54 = load i32, i32* @_LOWER, align 4
  %55 = load i32, i32* @_RAISE, align 4
  %56 = load i32, i32* @_ADJUST, align 4
  %57 = call i32 @update_tri_layer(i32 %54, i32 %55, i32 %56)
  br label %65

58:                                               ; preds = %45
  %59 = load i32, i32* @_RAISE, align 4
  %60 = call i32 @layer_off(i32 %59)
  %61 = load i32, i32* @_LOWER, align 4
  %62 = load i32, i32* @_RAISE, align 4
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %51
  store i32 0, i32* %3, align 4
  br label %151

66:                                               ; preds = %11
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i32, i32* @_LOWER, align 4
  %74 = call i32 @layer_on(i32 %73)
  %75 = load i32, i32* @_MLWR, align 4
  %76 = call i32 @layer_on(i32 %75)
  %77 = load i32, i32* @_LOWER, align 4
  %78 = load i32, i32* @_RAISE, align 4
  %79 = load i32, i32* @_ADJUST, align 4
  %80 = call i32 @update_tri_layer(i32 %77, i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %66
  %82 = load i32, i32* @_LOWER, align 4
  %83 = call i32 @layer_off(i32 %82)
  %84 = load i32, i32* @_MLWR, align 4
  %85 = call i32 @layer_off(i32 %84)
  %86 = load i32, i32* @_LOWER, align 4
  %87 = load i32, i32* @_RAISE, align 4
  %88 = load i32, i32* @_ADJUST, align 4
  %89 = call i32 @update_tri_layer(i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %72
  store i32 0, i32* %3, align 4
  br label %151

91:                                               ; preds = %11
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i32, i32* @_RAISE, align 4
  %99 = call i32 @layer_on(i32 %98)
  %100 = load i32, i32* @_MRSE, align 4
  %101 = call i32 @layer_on(i32 %100)
  %102 = load i32, i32* @_LOWER, align 4
  %103 = load i32, i32* @_RAISE, align 4
  %104 = load i32, i32* @_ADJUST, align 4
  %105 = call i32 @update_tri_layer(i32 %102, i32 %103, i32 %104)
  br label %115

106:                                              ; preds = %91
  %107 = load i32, i32* @_RAISE, align 4
  %108 = call i32 @layer_off(i32 %107)
  %109 = load i32, i32* @_MRSE, align 4
  %110 = call i32 @layer_off(i32 %109)
  %111 = load i32, i32* @_LOWER, align 4
  %112 = load i32, i32* @_RAISE, align 4
  %113 = load i32, i32* @_ADJUST, align 4
  %114 = call i32 @update_tri_layer(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %97
  store i32 0, i32* %3, align 4
  br label %151

116:                                              ; preds = %11
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* @_FUNC, align 4
  %124 = call i32 @layer_on(i32 %123)
  %125 = load i32, i32* @_MFNC, align 4
  %126 = call i32 @layer_on(i32 %125)
  br label %132

127:                                              ; preds = %116
  %128 = load i32, i32* @_FUNC, align 4
  %129 = call i32 @layer_off(i32 %128)
  %130 = load i32, i32* @_MFNC, align 4
  %131 = call i32 @layer_off(i32 %130)
  br label %132

132:                                              ; preds = %127, %122
  store i32 0, i32* %3, align 4
  br label %151

133:                                              ; preds = %11
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @_FUNC2, align 4
  %141 = call i32 @layer_on(i32 %140)
  %142 = load i32, i32* @_MFNC2, align 4
  %143 = call i32 @layer_on(i32 %142)
  br label %149

144:                                              ; preds = %133
  %145 = load i32, i32* @_FUNC2, align 4
  %146 = call i32 @layer_off(i32 %145)
  %147 = load i32, i32* @_MFNC2, align 4
  %148 = call i32 @layer_off(i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  store i32 0, i32* %3, align 4
  br label %151

150:                                              ; preds = %11
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %149, %132, %115, %90, %65, %44, %23, %10
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @persistant_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
