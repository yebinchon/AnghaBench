; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/kifinnsson/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/kifinnsson/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@is_lgui_active = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@lgui_timer = common dso_local global i32 0, align 4
@KC_LEFT = common dso_local global i32 0, align 4
@KC_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %193 [
    i32 130, label %7
    i32 144, label %17
    i32 140, label %27
    i32 139, label %37
    i32 138, label %47
    i32 137, label %57
    i32 136, label %67
    i32 135, label %77
    i32 134, label %87
    i32 133, label %97
    i32 143, label %107
    i32 142, label %117
    i32 141, label %127
    i32 132, label %137
    i32 131, label %147
    i32 129, label %157
    i32 128, label %175
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %16

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15, %13
  store i32 0, i32* %3, align 4
  br label %194

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  store i32 0, i32* %3, align 4
  br label %194

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %33
  store i32 0, i32* %3, align 4
  br label %194

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %43
  store i32 0, i32* %3, align 4
  br label %194

47:                                               ; preds = %2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  store i32 0, i32* %3, align 4
  br label %194

57:                                               ; preds = %2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %63
  store i32 0, i32* %3, align 4
  br label %194

67:                                               ; preds = %2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %73
  store i32 0, i32* %3, align 4
  br label %194

77:                                               ; preds = %2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %83
  store i32 0, i32* %3, align 4
  br label %194

87:                                               ; preds = %2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %93
  store i32 0, i32* %3, align 4
  br label %194

97:                                               ; preds = %2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %106

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %103
  store i32 0, i32* %3, align 4
  br label %194

107:                                              ; preds = %2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %116

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %113
  store i32 0, i32* %3, align 4
  br label %194

117:                                              ; preds = %2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %126

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %123
  store i32 0, i32* %3, align 4
  br label %194

127:                                              ; preds = %2
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %133
  store i32 0, i32* %3, align 4
  br label %194

137:                                              ; preds = %2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %146

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %143
  store i32 0, i32* %3, align 4
  br label %194

147:                                              ; preds = %2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = call i32 @SEND_STRING(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %156

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %153
  store i32 0, i32* %3, align 4
  br label %194

157:                                              ; preds = %2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load i32, i32* @is_lgui_active, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  store i32 1, i32* @is_lgui_active, align 4
  %167 = load i32, i32* @KC_LGUI, align 4
  %168 = call i32 @register_code(i32 %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = call i32 (...) @timer_read()
  store i32 %170, i32* @lgui_timer, align 4
  %171 = load i32, i32* @KC_LEFT, align 4
  %172 = call i32 @tap_code(i32 %171)
  br label %174

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %169
  store i32 0, i32* %3, align 4
  br label %194

175:                                              ; preds = %2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %175
  %182 = load i32, i32* @is_lgui_active, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  store i32 1, i32* @is_lgui_active, align 4
  %185 = load i32, i32* @KC_LGUI, align 4
  %186 = call i32 @register_code(i32 %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = call i32 (...) @timer_read()
  store i32 %188, i32* @lgui_timer, align 4
  %189 = load i32, i32* @KC_RIGHT, align 4
  %190 = call i32 @tap_code(i32 %189)
  br label %192

191:                                              ; preds = %175
  br label %192

192:                                              ; preds = %191, %187
  store i32 0, i32* %3, align 4
  br label %194

193:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %192, %174, %156, %146, %136, %126, %116, %106, %96, %86, %76, %66, %56, %46, %36, %26, %16
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @tap_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
