; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_hal_gpio.c_HAL_GPIO_Init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_hal_gpio.c_HAL_GPIO_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i64 }

@GPIO_NUMBER = common dso_local global i32 0, align 4
@GPIO_MODE_AF_PP = common dso_local global i32 0, align 4
@GPIO_MODE_AF_OD = common dso_local global i32 0, align 4
@GPIO_MODE_ANALOG = common dso_local global i32 0, align 4
@PORT_PCR_MUX_MASK = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT_PP = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT_OD = common dso_local global i32 0, align 4
@PORT_PCR_DSE = common dso_local global i32 0, align 4
@GPIO_SPEED_FREQ_MEDIUM = common dso_local global i64 0, align 8
@PORT_PCR_SRE = common dso_local global i32 0, align 4
@GPIO_OUTPUT_TYPE = common dso_local global i32 0, align 4
@PORT_PCR_ODE = common dso_local global i32 0, align 4
@GPIO_NOPULL = common dso_local global i64 0, align 8
@PORT_PCR_PE = common dso_local global i32 0, align 4
@GPIO_PULLDOWN = common dso_local global i64 0, align 8
@PORT_PCR_PS = common dso_local global i32 0, align 4
@EXTI = common dso_local global %struct.TYPE_12__* null, align 8
@EXTI_MODE = common dso_local global i32 0, align 4
@FALLING_EDGE = common dso_local global i32 0, align 4
@GPIO_MODE_EVT = common dso_local global i32 0, align 4
@GPIO_MODE_IT = common dso_local global i32 0, align 4
@RISING_EDGE = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global %struct.TYPE_11__* null, align 8
@iocurrent = common dso_local global i32 0, align 4
@temp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HAL_GPIO_Init(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @IS_GPIO_PIN(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_GPIO_MODE(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @IS_GPIO_PULL(i64 %20)
  %22 = call i32 @assert_param(i32 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %218, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @GPIO_NUMBER, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %221

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %218

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32* @GPIO_PIN_TO_PORT_PCR(%struct.TYPE_9__* %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GPIO_MODE_AF_PP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GPIO_MODE_AF_OD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %37
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @IS_GPIO_AF(i32 %55)
  %57 = call i32 @assert_param(i32 %56)
  br label %71

58:                                               ; preds = %46
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GPIO_MODE_ANALOG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  store i32 0, i32* %66, align 8
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %52
  %72 = load volatile i32, i32* @PORT_PCR_MUX_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %7, align 8
  %75 = load volatile i32, i32* %74, align 4
  %76 = and i32 %75, %73
  store volatile i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PORT_PCR_MUX(i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load volatile i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store volatile i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %71
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GPIO_MODE_ANALOG, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89, %71
  %96 = load i32, i32* %6, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %89
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @GPIO_MODE_OUTPUT_PP, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %132, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @GPIO_MODE_AF_PP, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @GPIO_MODE_OUTPUT_OD, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @GPIO_MODE_AF_OD, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %177

132:                                              ; preds = %126, %120, %114, %108
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @IS_GPIO_SPEED(i64 %135)
  %137 = call i32 @assert_param(i32 %136)
  %138 = load volatile i32, i32* @PORT_PCR_DSE, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = load volatile i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store volatile i32 %141, i32* %139, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @GPIO_SPEED_FREQ_MEDIUM, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load volatile i32, i32* @PORT_PCR_SRE, align 4
  %149 = xor i32 %148, -1
  %150 = load i32*, i32** %7, align 8
  %151 = load volatile i32, i32* %150, align 4
  %152 = and i32 %151, %149
  store volatile i32 %152, i32* %150, align 4
  br label %158

153:                                              ; preds = %132
  %154 = load volatile i32, i32* @PORT_PCR_SRE, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load volatile i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store volatile i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %147
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @GPIO_OUTPUT_TYPE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load volatile i32, i32* @PORT_PCR_ODE, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load volatile i32, i32* %167, align 4
  %169 = or i32 %168, %166
  store volatile i32 %169, i32* %167, align 4
  br label %176

170:                                              ; preds = %158
  %171 = load volatile i32, i32* @PORT_PCR_ODE, align 4
  %172 = xor i32 %171, -1
  %173 = load i32*, i32** %7, align 8
  %174 = load volatile i32, i32* %173, align 4
  %175 = and i32 %174, %172
  store volatile i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %165
  br label %183

177:                                              ; preds = %126
  %178 = load volatile i32, i32* @PORT_PCR_DSE, align 4
  %179 = xor i32 %178, -1
  %180 = load i32*, i32** %7, align 8
  %181 = load volatile i32, i32* %180, align 4
  %182 = and i32 %181, %179
  store volatile i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %176
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @GPIO_NOPULL, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load volatile i32, i32* @PORT_PCR_PE, align 4
  %191 = xor i32 %190, -1
  %192 = load i32*, i32** %7, align 8
  %193 = load volatile i32, i32* %192, align 4
  %194 = and i32 %193, %191
  store volatile i32 %194, i32* %192, align 4
  br label %217

195:                                              ; preds = %183
  %196 = load volatile i32, i32* @PORT_PCR_PE, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = load volatile i32, i32* %197, align 4
  %199 = or i32 %198, %196
  store volatile i32 %199, i32* %197, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @GPIO_PULLDOWN, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %195
  %206 = load volatile i32, i32* @PORT_PCR_PS, align 4
  %207 = xor i32 %206, -1
  %208 = load i32*, i32** %7, align 8
  %209 = load volatile i32, i32* %208, align 4
  %210 = and i32 %209, %207
  store volatile i32 %210, i32* %208, align 4
  br label %216

211:                                              ; preds = %195
  %212 = load volatile i32, i32* @PORT_PCR_PS, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = load volatile i32, i32* %213, align 4
  %215 = or i32 %214, %212
  store volatile i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %211, %205
  br label %217

217:                                              ; preds = %216, %189
  br label %218

218:                                              ; preds = %217, %36
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %5, align 4
  br label %23

221:                                              ; preds = %23
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_GPIO_PIN(i32) #1

declare dso_local i32 @IS_GPIO_MODE(i32) #1

declare dso_local i32 @IS_GPIO_PULL(i64) #1

declare dso_local i32* @GPIO_PIN_TO_PORT_PCR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @IS_GPIO_AF(i32) #1

declare dso_local i32 @PORT_PCR_MUX(i32) #1

declare dso_local i32 @IS_GPIO_SPEED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
