; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/tsl2561/extr_tsl2561.c_tsl2561CalculateLux.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/tsl2561/extr_tsl2561.c_tsl2561CalculateLux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_tsl2561IntegrationTime = common dso_local global i32 0, align 4
@TSL2561_LUX_CHSCALE_TINT0 = common dso_local global i64 0, align 8
@TSL2561_LUX_CHSCALE_TINT1 = common dso_local global i64 0, align 8
@TSL2561_LUX_CHSCALE = common dso_local global i32 0, align 4
@_tsl2561Gain = common dso_local global i32 0, align 4
@TSL2561_LUX_RATIOSCALE = common dso_local global i32 0, align 4
@tsl2561Package = common dso_local global i64 0, align 8
@TSL2561_PACKAGE_CS = common dso_local global i64 0, align 8
@TSL2561_LUX_K1C = common dso_local global i64 0, align 8
@TSL2561_LUX_B1C = common dso_local global i32 0, align 4
@TSL2561_LUX_M1C = common dso_local global i32 0, align 4
@TSL2561_LUX_K2C = common dso_local global i64 0, align 8
@TSL2561_LUX_B2C = common dso_local global i32 0, align 4
@TSL2561_LUX_M2C = common dso_local global i32 0, align 4
@TSL2561_LUX_K3C = common dso_local global i64 0, align 8
@TSL2561_LUX_B3C = common dso_local global i32 0, align 4
@TSL2561_LUX_M3C = common dso_local global i32 0, align 4
@TSL2561_LUX_K4C = common dso_local global i64 0, align 8
@TSL2561_LUX_B4C = common dso_local global i32 0, align 4
@TSL2561_LUX_M4C = common dso_local global i32 0, align 4
@TSL2561_LUX_K5C = common dso_local global i64 0, align 8
@TSL2561_LUX_B5C = common dso_local global i32 0, align 4
@TSL2561_LUX_M5C = common dso_local global i32 0, align 4
@TSL2561_LUX_K6C = common dso_local global i64 0, align 8
@TSL2561_LUX_B6C = common dso_local global i32 0, align 4
@TSL2561_LUX_M6C = common dso_local global i32 0, align 4
@TSL2561_LUX_K7C = common dso_local global i64 0, align 8
@TSL2561_LUX_B7C = common dso_local global i32 0, align 4
@TSL2561_LUX_M7C = common dso_local global i32 0, align 4
@TSL2561_LUX_K8C = common dso_local global i64 0, align 8
@TSL2561_LUX_B8C = common dso_local global i32 0, align 4
@TSL2561_LUX_M8C = common dso_local global i32 0, align 4
@TSL2561_LUX_K1T = common dso_local global i64 0, align 8
@TSL2561_LUX_B1T = common dso_local global i32 0, align 4
@TSL2561_LUX_M1T = common dso_local global i32 0, align 4
@TSL2561_LUX_K2T = common dso_local global i64 0, align 8
@TSL2561_LUX_B2T = common dso_local global i32 0, align 4
@TSL2561_LUX_M2T = common dso_local global i32 0, align 4
@TSL2561_LUX_K3T = common dso_local global i64 0, align 8
@TSL2561_LUX_B3T = common dso_local global i32 0, align 4
@TSL2561_LUX_M3T = common dso_local global i32 0, align 4
@TSL2561_LUX_K4T = common dso_local global i64 0, align 8
@TSL2561_LUX_B4T = common dso_local global i32 0, align 4
@TSL2561_LUX_M4T = common dso_local global i32 0, align 4
@TSL2561_LUX_K5T = common dso_local global i64 0, align 8
@TSL2561_LUX_B5T = common dso_local global i32 0, align 4
@TSL2561_LUX_M5T = common dso_local global i32 0, align 4
@TSL2561_LUX_K6T = common dso_local global i64 0, align 8
@TSL2561_LUX_B6T = common dso_local global i32 0, align 4
@TSL2561_LUX_M6T = common dso_local global i32 0, align 4
@TSL2561_LUX_K7T = common dso_local global i64 0, align 8
@TSL2561_LUX_B7T = common dso_local global i32 0, align 4
@TSL2561_LUX_M7T = common dso_local global i32 0, align 4
@TSL2561_LUX_K8T = common dso_local global i64 0, align 8
@TSL2561_LUX_B8T = common dso_local global i32 0, align 4
@TSL2561_LUX_M8T = common dso_local global i32 0, align 4
@TSL2561_LUX_LUXSCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tsl2561CalculateLux(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i32, i32* @_tsl2561IntegrationTime, align 4
  switch i32 %14, label %19 [
    i32 128, label %15
    i32 129, label %17
  ]

15:                                               ; preds = %2
  %16 = load i64, i64* @TSL2561_LUX_CHSCALE_TINT0, align 8
  store i64 %16, i64* %5, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load i64, i64* @TSL2561_LUX_CHSCALE_TINT1, align 8
  store i64 %18, i64* %5, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @TSL2561_LUX_CHSCALE, align 4
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %19, %17, %15
  %24 = load i32, i32* @_tsl2561Gain, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = shl i64 %27, 4
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %30, %31
  %33 = load i32, i32* @TSL2561_LUX_CHSCALE, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %32, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = mul i64 %36, %37
  %39 = load i32, i32* @TSL2561_LUX_CHSCALE, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %38, %40
  store i64 %41, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @TSL2561_LUX_RATIOSCALE, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = shl i64 %45, %48
  %50 = load i64, i64* %7, align 8
  %51 = udiv i64 %49, %50
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %44, %29
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  %55 = lshr i64 %54, 1
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* @tsl2561Package, align 8
  %57 = load i64, i64* @TSL2561_PACKAGE_CS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %126

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  %61 = icmp uge i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @TSL2561_LUX_K1C, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @TSL2561_LUX_B1C, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @TSL2561_LUX_M1C, align 4
  store i32 %68, i32* %11, align 4
  br label %125

69:                                               ; preds = %62, %59
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @TSL2561_LUX_K2C, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @TSL2561_LUX_B2C, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @TSL2561_LUX_M2C, align 4
  store i32 %75, i32* %11, align 4
  br label %124

76:                                               ; preds = %69
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @TSL2561_LUX_K3C, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @TSL2561_LUX_B3C, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @TSL2561_LUX_M3C, align 4
  store i32 %82, i32* %11, align 4
  br label %123

83:                                               ; preds = %76
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @TSL2561_LUX_K4C, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @TSL2561_LUX_B4C, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @TSL2561_LUX_M4C, align 4
  store i32 %89, i32* %11, align 4
  br label %122

90:                                               ; preds = %83
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @TSL2561_LUX_K5C, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @TSL2561_LUX_B5C, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @TSL2561_LUX_M5C, align 4
  store i32 %96, i32* %11, align 4
  br label %121

97:                                               ; preds = %90
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @TSL2561_LUX_K6C, align 8
  %100 = icmp ule i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @TSL2561_LUX_B6C, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @TSL2561_LUX_M6C, align 4
  store i32 %103, i32* %11, align 4
  br label %120

104:                                              ; preds = %97
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* @TSL2561_LUX_K7C, align 8
  %107 = icmp ule i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @TSL2561_LUX_B7C, align 4
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* @TSL2561_LUX_M7C, align 4
  store i32 %110, i32* %11, align 4
  br label %119

111:                                              ; preds = %104
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @TSL2561_LUX_K8C, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @TSL2561_LUX_B8C, align 4
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @TSL2561_LUX_M8C, align 4
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %115, %111
  br label %119

119:                                              ; preds = %118, %108
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %87
  br label %123

123:                                              ; preds = %122, %80
  br label %124

124:                                              ; preds = %123, %73
  br label %125

125:                                              ; preds = %124, %66
  br label %193

126:                                              ; preds = %52
  %127 = load i64, i64* %9, align 8
  %128 = icmp uge i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @TSL2561_LUX_K1T, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @TSL2561_LUX_B1T, align 4
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* @TSL2561_LUX_M1T, align 4
  store i32 %135, i32* %11, align 4
  br label %192

136:                                              ; preds = %129, %126
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @TSL2561_LUX_K2T, align 8
  %139 = icmp ule i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @TSL2561_LUX_B2T, align 4
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* @TSL2561_LUX_M2T, align 4
  store i32 %142, i32* %11, align 4
  br label %191

143:                                              ; preds = %136
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* @TSL2561_LUX_K3T, align 8
  %146 = icmp ule i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @TSL2561_LUX_B3T, align 4
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @TSL2561_LUX_M3T, align 4
  store i32 %149, i32* %11, align 4
  br label %190

150:                                              ; preds = %143
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* @TSL2561_LUX_K4T, align 8
  %153 = icmp ule i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @TSL2561_LUX_B4T, align 4
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @TSL2561_LUX_M4T, align 4
  store i32 %156, i32* %11, align 4
  br label %189

157:                                              ; preds = %150
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @TSL2561_LUX_K5T, align 8
  %160 = icmp ule i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* @TSL2561_LUX_B5T, align 4
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* @TSL2561_LUX_M5T, align 4
  store i32 %163, i32* %11, align 4
  br label %188

164:                                              ; preds = %157
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @TSL2561_LUX_K6T, align 8
  %167 = icmp ule i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @TSL2561_LUX_B6T, align 4
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* @TSL2561_LUX_M6T, align 4
  store i32 %170, i32* %11, align 4
  br label %187

171:                                              ; preds = %164
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* @TSL2561_LUX_K7T, align 8
  %174 = icmp ule i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* @TSL2561_LUX_B7T, align 4
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* @TSL2561_LUX_M7T, align 4
  store i32 %177, i32* %11, align 4
  br label %186

178:                                              ; preds = %171
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* @TSL2561_LUX_K8T, align 8
  %181 = icmp ugt i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* @TSL2561_LUX_B8T, align 4
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* @TSL2561_LUX_M8T, align 4
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %182, %178
  br label %186

186:                                              ; preds = %185, %175
  br label %187

187:                                              ; preds = %186, %168
  br label %188

188:                                              ; preds = %187, %161
  br label %189

189:                                              ; preds = %188, %154
  br label %190

190:                                              ; preds = %189, %147
  br label %191

191:                                              ; preds = %190, %140
  br label %192

192:                                              ; preds = %191, %133
  br label %193

193:                                              ; preds = %192, %125
  %194 = load i64, i64* %7, align 8
  %195 = load i32, i32* %10, align 4
  %196 = zext i32 %195 to i64
  %197 = mul i64 %194, %196
  %198 = load i64, i64* %6, align 8
  %199 = load i32, i32* %11, align 4
  %200 = zext i32 %199 to i64
  %201 = mul i64 %198, %200
  %202 = sub i64 %197, %201
  store i64 %202, i64* %12, align 8
  %203 = load i64, i64* %12, align 8
  %204 = icmp ult i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %193
  store i64 0, i64* %12, align 8
  br label %206

206:                                              ; preds = %205, %193
  %207 = load i32, i32* @TSL2561_LUX_LUXSCALE, align 4
  %208 = sub nsw i32 %207, 1
  %209 = shl i32 1, %208
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %12, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %12, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load i32, i32* @TSL2561_LUX_LUXSCALE, align 4
  %215 = zext i32 %214 to i64
  %216 = lshr i64 %213, %215
  store i64 %216, i64* %13, align 8
  %217 = load i64, i64* %13, align 8
  ret i64 %217
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
