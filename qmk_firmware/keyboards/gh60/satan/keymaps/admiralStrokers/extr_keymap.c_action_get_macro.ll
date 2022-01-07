; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/admiralStrokers/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/admiralStrokers/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@key_timer = common dso_local global i32 0, align 4
@LSFT = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@RALT = common dso_local global i32 0, align 4
@RSFT = common dso_local global i32 0, align 4
@LCTL = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
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
  switch i32 %8, label %164 [
    i32 0, label %9
    i32 1, label %41
    i32 2, label %73
    i32 3, label %105
    i32 4, label %137
    i32 5, label %146
    i32 6, label %155
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = call i32 (...) @timer_read()
  store i32 %16, i32* @key_timer, align 4
  %17 = load i32, i32* @LSFT, align 4
  %18 = call i32 @D(i32 %17)
  %19 = load i32, i32* @END, align 4
  %20 = call i32* (i32, i32, ...) @MACRO(i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  br label %166

21:                                               ; preds = %9
  %22 = call i32 (...) @checktime()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @LSFT, align 4
  %26 = call i32 @U(i32 %25)
  %27 = load i32, i32* @RALT, align 4
  %28 = call i32 @D(i32 %27)
  %29 = call i32 @T(i32 7)
  %30 = load i32, i32* @RALT, align 4
  %31 = call i32 @U(i32 %30)
  %32 = load i32, i32* @END, align 4
  %33 = call i32* (i32, i32, ...) @MACRO(i32 %26, i32 %28, i32 %29, i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* @LSFT, align 4
  %36 = call i32 @U(i32 %35)
  %37 = load i32, i32* @END, align 4
  %38 = call i32* (i32, i32, ...) @MACRO(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %24
  %40 = phi i32* [ %33, %24 ], [ %38, %34 ]
  store i32* %40, i32** %4, align 8
  br label %166

41:                                               ; preds = %3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = call i32 (...) @timer_read()
  store i32 %48, i32* @key_timer, align 4
  %49 = load i32, i32* @RSFT, align 4
  %50 = call i32 @D(i32 %49)
  %51 = load i32, i32* @END, align 4
  %52 = call i32* (i32, i32, ...) @MACRO(i32 %50, i32 %51)
  store i32* %52, i32** %4, align 8
  br label %166

53:                                               ; preds = %41
  %54 = call i32 (...) @checktime()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* @RSFT, align 4
  %58 = call i32 @U(i32 %57)
  %59 = load i32, i32* @RALT, align 4
  %60 = call i32 @D(i32 %59)
  %61 = call i32 @T(i32 0)
  %62 = load i32, i32* @RALT, align 4
  %63 = call i32 @U(i32 %62)
  %64 = load i32, i32* @END, align 4
  %65 = call i32* (i32, i32, ...) @MACRO(i32 %58, i32 %60, i32 %61, i32 %63, i32 %64)
  br label %71

66:                                               ; preds = %53
  %67 = load i32, i32* @RSFT, align 4
  %68 = call i32 @U(i32 %67)
  %69 = load i32, i32* @END, align 4
  %70 = call i32* (i32, i32, ...) @MACRO(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = phi i32* [ %65, %56 ], [ %70, %66 ]
  store i32* %72, i32** %4, align 8
  br label %166

73:                                               ; preds = %3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = call i32 (...) @timer_read()
  store i32 %80, i32* @key_timer, align 4
  %81 = load i32, i32* @LCTL, align 4
  %82 = call i32 @D(i32 %81)
  %83 = load i32, i32* @END, align 4
  %84 = call i32* (i32, i32, ...) @MACRO(i32 %82, i32 %83)
  store i32* %84, i32** %4, align 8
  br label %166

85:                                               ; preds = %73
  %86 = call i32 (...) @checktime()
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* @LCTL, align 4
  %90 = call i32 @U(i32 %89)
  %91 = load i32, i32* @RALT, align 4
  %92 = call i32 @D(i32 %91)
  %93 = call i32 @T(i32 8)
  %94 = load i32, i32* @RALT, align 4
  %95 = call i32 @U(i32 %94)
  %96 = load i32, i32* @END, align 4
  %97 = call i32* (i32, i32, ...) @MACRO(i32 %90, i32 %92, i32 %93, i32 %95, i32 %96)
  br label %103

98:                                               ; preds = %85
  %99 = load i32, i32* @LCTL, align 4
  %100 = call i32 @U(i32 %99)
  %101 = load i32, i32* @END, align 4
  %102 = call i32* (i32, i32, ...) @MACRO(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %88
  %104 = phi i32* [ %97, %88 ], [ %102, %98 ]
  store i32* %104, i32** %4, align 8
  br label %166

105:                                              ; preds = %3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = call i32 (...) @timer_read()
  store i32 %112, i32* @key_timer, align 4
  %113 = load i32, i32* @RCTL, align 4
  %114 = call i32 @D(i32 %113)
  %115 = load i32, i32* @END, align 4
  %116 = call i32* (i32, i32, ...) @MACRO(i32 %114, i32 %115)
  store i32* %116, i32** %4, align 8
  br label %166

117:                                              ; preds = %105
  %118 = call i32 (...) @checktime()
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* @RCTL, align 4
  %122 = call i32 @U(i32 %121)
  %123 = load i32, i32* @RALT, align 4
  %124 = call i32 @D(i32 %123)
  %125 = call i32 @T(i32 9)
  %126 = load i32, i32* @RALT, align 4
  %127 = call i32 @U(i32 %126)
  %128 = load i32, i32* @END, align 4
  %129 = call i32* (i32, i32, ...) @MACRO(i32 %122, i32 %124, i32 %125, i32 %127, i32 %128)
  br label %135

130:                                              ; preds = %117
  %131 = load i32, i32* @RCTL, align 4
  %132 = call i32 @U(i32 %131)
  %133 = load i32, i32* @END, align 4
  %134 = call i32* (i32, i32, ...) @MACRO(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %120
  %136 = phi i32* [ %129, %120 ], [ %134, %130 ]
  store i32* %136, i32** %4, align 8
  br label %166

137:                                              ; preds = %3
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %145

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %143
  br label %164

146:                                              ; preds = %3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %154

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %152
  br label %164

155:                                              ; preds = %3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %163

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %161
  br label %164

164:                                              ; preds = %3, %163, %154, %145
  %165 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %165, i32** %4, align 8
  br label %166

166:                                              ; preds = %164, %135, %111, %103, %79, %71, %47, %39, %15
  %167 = load i32*, i32** %4, align 8
  ret i32* %167
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32* @MACRO(i32, i32, ...) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @checktime(...) #1

declare dso_local i32 @U(i32) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
