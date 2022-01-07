; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/wanleg/extr_wanleg.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/wanleg/extr_wanleg.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QW = common dso_local global i32 0, align 4
@_GK = common dso_local global i32 0, align 4
@gGK = common dso_local global i32 0, align 4
@ONE = common dso_local global i32 0, align 4
@PAD = common dso_local global i32 0, align 4
@GK50 = common dso_local global i32 0, align 4
@SUB = common dso_local global i32 0, align 4
@SUP = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@DIR = common dso_local global i32 0, align 4
@ETC = common dso_local global i32 0, align 4
@gNUM = common dso_local global i32 0, align 4
@gDIR = common dso_local global i32 0, align 4
@gETC = common dso_local global i32 0, align 4
@_FN = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_BREATHING = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_KNIGHT = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %192 [
    i32 135, label %7
    i32 140, label %17
    i32 129, label %27
    i32 136, label %37
    i32 137, label %47
    i32 139, label %57
    i32 133, label %67
    i32 132, label %80
    i32 138, label %93
    i32 143, label %106
    i32 142, label %119
    i32 128, label %132
    i32 131, label %145
    i32 130, label %158
    i32 141, label %171
    i32 134, label %184
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QW, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %193

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_GK, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %193

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @gGK, align 4
  %35 = call i32 @set_single_persistent_default_layer(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %193

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ONE, align 4
  %45 = call i32 @set_single_persistent_default_layer(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %193

47:                                               ; preds = %2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @PAD, align 4
  %55 = call i32 @set_single_persistent_default_layer(i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  store i32 0, i32* %3, align 4
  br label %193

57:                                               ; preds = %2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @GK50, align 4
  %65 = call i32 @set_single_persistent_default_layer(i32 %64)
  br label %66

66:                                               ; preds = %63, %57
  store i32 0, i32* %3, align 4
  br label %193

67:                                               ; preds = %2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @SUB, align 4
  %75 = call i32 @layer_on(i32 %74)
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @SUB, align 4
  %78 = call i32 @layer_off(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %3, align 4
  br label %193

80:                                               ; preds = %2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @SUP, align 4
  %88 = call i32 @layer_on(i32 %87)
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @SUP, align 4
  %91 = call i32 @layer_off(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %193

93:                                               ; preds = %2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @NUM, align 4
  %101 = call i32 @layer_on(i32 %100)
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @NUM, align 4
  %104 = call i32 @layer_off(i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %3, align 4
  br label %193

106:                                              ; preds = %2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @DIR, align 4
  %114 = call i32 @layer_on(i32 %113)
  br label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @DIR, align 4
  %117 = call i32 @layer_off(i32 %116)
  br label %118

118:                                              ; preds = %115, %112
  store i32 0, i32* %3, align 4
  br label %193

119:                                              ; preds = %2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @ETC, align 4
  %127 = call i32 @layer_on(i32 %126)
  br label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @ETC, align 4
  %130 = call i32 @layer_off(i32 %129)
  br label %131

131:                                              ; preds = %128, %125
  store i32 0, i32* %3, align 4
  br label %193

132:                                              ; preds = %2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @gNUM, align 4
  %140 = call i32 @layer_on(i32 %139)
  br label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @gNUM, align 4
  %143 = call i32 @layer_off(i32 %142)
  br label %144

144:                                              ; preds = %141, %138
  store i32 0, i32* %3, align 4
  br label %193

145:                                              ; preds = %2
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @gDIR, align 4
  %153 = call i32 @layer_on(i32 %152)
  br label %157

154:                                              ; preds = %145
  %155 = load i32, i32* @gDIR, align 4
  %156 = call i32 @layer_off(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  store i32 0, i32* %3, align 4
  br label %193

158:                                              ; preds = %2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* @gETC, align 4
  %166 = call i32 @layer_on(i32 %165)
  br label %170

167:                                              ; preds = %158
  %168 = load i32, i32* @gETC, align 4
  %169 = call i32 @layer_off(i32 %168)
  br label %170

170:                                              ; preds = %167, %164
  store i32 0, i32* %3, align 4
  br label %193

171:                                              ; preds = %2
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* @_FN, align 4
  %179 = call i32 @layer_on(i32 %178)
  br label %183

180:                                              ; preds = %171
  %181 = load i32, i32* @_FN, align 4
  %182 = call i32 @layer_off(i32 %181)
  br label %183

183:                                              ; preds = %180, %177
  store i32 0, i32* %3, align 4
  br label %193

184:                                              ; preds = %2
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %184
  store i32 1, i32* %3, align 4
  br label %193

192:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %191, %183, %170, %157, %144, %131, %118, %105, %92, %79, %66, %56, %46, %36, %26, %16
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
