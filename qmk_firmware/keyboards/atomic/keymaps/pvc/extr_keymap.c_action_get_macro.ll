; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/atomic/keymaps/pvc/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/atomic/keymaps/pvc/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@LAYER_QWERTY = common dso_local global i64 0, align 8
@LAYER_UPPER = common dso_local global i32 0, align 4
@LAYER_LOWER = common dso_local global i32 0, align 4
@LAYER_ADJUST = common dso_local global i32 0, align 4
@LAYER_FUNCTION = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8
@LAYER_MOUSE = common dso_local global i32 0, align 4
@TEMPO_DEFAULT = common dso_local global i32 0, align 4
@TIMBRE_12 = common dso_local global i32 0, align 4
@TIMBRE_25 = common dso_local global i32 0, align 4
@TIMBRE_50 = common dso_local global i32 0, align 4
@TIMBRE_75 = common dso_local global i32 0, align 4
@TIMBRE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %199 [
    i32 147, label %8
    i32 146, label %17
    i32 145, label %26
    i32 144, label %35
    i32 143, label %44
    i32 142, label %53
    i32 141, label %62
    i32 140, label %71
    i32 139, label %80
    i32 149, label %89
    i32 150, label %98
    i32 151, label %107
    i32 152, label %116
    i32 136, label %125
    i32 128, label %136
    i32 138, label %159
    i32 148, label %182
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %8
  br label %200

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  br label %200

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  br label %200

35:                                               ; preds = %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  br label %200

44:                                               ; preds = %3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  br label %200

53:                                               ; preds = %3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  br label %200

62:                                               ; preds = %3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  br label %200

71:                                               ; preds = %3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %71
  br label %200

80:                                               ; preds = %3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 @uprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %80
  br label %200

89:                                               ; preds = %3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 (...) @breathing_toggle()
  br label %97

97:                                               ; preds = %95, %89
  br label %200

98:                                               ; preds = %3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (...) @breathing_period_inc()
  br label %106

106:                                              ; preds = %104, %98
  br label %200

107:                                              ; preds = %3
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 (...) @breathing_period_dec()
  br label %115

115:                                              ; preds = %113, %107
  br label %200

116:                                              ; preds = %3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (...) @breathing_period_default()
  br label %124

124:                                              ; preds = %122, %116
  br label %200

125:                                              ; preds = %3
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i64, i64* @LAYER_QWERTY, align 8
  %133 = shl i64 1, %132
  %134 = call i32 @persistent_default_layer_set(i64 %133)
  br label %135

135:                                              ; preds = %131, %125
  br label %200

136:                                              ; preds = %3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load i32, i32* @LAYER_UPPER, align 4
  %144 = call i32 @layer_on(i32 %143)
  %145 = call i32 @breathing_period_set(i32 2)
  %146 = call i32 (...) @breathing_pulse()
  %147 = load i32, i32* @LAYER_LOWER, align 4
  %148 = load i32, i32* @LAYER_UPPER, align 4
  %149 = load i32, i32* @LAYER_ADJUST, align 4
  %150 = call i32 @update_tri_layer(i32 %147, i32 %148, i32 %149)
  br label %158

151:                                              ; preds = %136
  %152 = load i32, i32* @LAYER_UPPER, align 4
  %153 = call i32 @layer_off(i32 %152)
  %154 = load i32, i32* @LAYER_LOWER, align 4
  %155 = load i32, i32* @LAYER_UPPER, align 4
  %156 = load i32, i32* @LAYER_ADJUST, align 4
  %157 = call i32 @update_tri_layer(i32 %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %151, %142
  br label %200

159:                                              ; preds = %3
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load i32, i32* @LAYER_LOWER, align 4
  %167 = call i32 @layer_on(i32 %166)
  %168 = call i32 @breathing_period_set(i32 2)
  %169 = call i32 (...) @breathing_pulse()
  %170 = load i32, i32* @LAYER_LOWER, align 4
  %171 = load i32, i32* @LAYER_UPPER, align 4
  %172 = load i32, i32* @LAYER_ADJUST, align 4
  %173 = call i32 @update_tri_layer(i32 %170, i32 %171, i32 %172)
  br label %181

174:                                              ; preds = %159
  %175 = load i32, i32* @LAYER_LOWER, align 4
  %176 = call i32 @layer_off(i32 %175)
  %177 = load i32, i32* @LAYER_LOWER, align 4
  %178 = load i32, i32* @LAYER_UPPER, align 4
  %179 = load i32, i32* @LAYER_ADJUST, align 4
  %180 = call i32 @update_tri_layer(i32 %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %174, %165
  br label %200

182:                                              ; preds = %3
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = call i32 @breathing_period_set(i32 3)
  %190 = call i32 (...) @breathing_enable()
  %191 = load i32, i32* @LAYER_FUNCTION, align 4
  %192 = call i32 @layer_on(i32 %191)
  br label %198

193:                                              ; preds = %182
  %194 = call i32 @breathing_period_set(i32 1)
  %195 = call i32 (...) @breathing_self_disable()
  %196 = load i32, i32* @LAYER_FUNCTION, align 4
  %197 = call i32 @layer_off(i32 %196)
  br label %198

198:                                              ; preds = %193, %188
  br label %200

199:                                              ; preds = %3
  br label %200

200:                                              ; preds = %199, %198, %181, %158, %135, %124, %115, %106, %97, %88, %79, %70, %61, %52, %43, %34, %25, %16
  %201 = load i32*, i32** @MACRO_NONE, align 8
  ret i32* %201
}

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32 @breathing_toggle(...) #1

declare dso_local i32 @breathing_period_inc(...) #1

declare dso_local i32 @breathing_period_dec(...) #1

declare dso_local i32 @breathing_period_default(...) #1

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @breathing_period_set(i32) #1

declare dso_local i32 @breathing_pulse(...) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @breathing_enable(...) #1

declare dso_local i32 @breathing_self_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
