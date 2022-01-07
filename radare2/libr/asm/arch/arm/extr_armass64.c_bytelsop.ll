; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_bytelsop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_bytelsop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@UT32_MAX = common dso_local global i32 0, align 4
@ARM_REG64 = common dso_local global i32 0, align 4
@ARM_REG32 = common dso_local global i32 0, align 4
@ARM_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @bytelsop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytelsop(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @UT32_MAX, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ARM_REG64, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %258

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ARM_REG32, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %258

37:                                               ; preds = %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ARM_GPR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 15
  %50 = icmp ne i32 %49, 8
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 6823936
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 24
  %65 = or i32 %57, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 29
  %73 = or i32 %65, %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 56
  %81 = shl i32 %80, 13
  %82 = or i32 %73, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %258

93:                                               ; preds = %37
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 4095
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, -256
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %93
  %106 = load i32, i32* @UT32_MAX, align 4
  store i32 %106, i32* %3, align 4
  br label %258

107:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 15
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @countTrailingZeros(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118, %111
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %118, %114
  br label %132

125:                                              ; preds = %107
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %124
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 24
  %141 = or i32 %133, %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 29
  %149 = or i32 %141, %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 56
  %157 = shl i32 %156, 13
  %158 = or i32 %149, %157
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %9, align 4
  store i32 20, i32* %10, align 4
  store i32 8, i32* %11, align 4
  store i32 10, i32* %12, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %132
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  %165 = add nsw i32 4095, %164
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %162, %132
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %222

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %173, %169
  %177 = load i32, i32* %9, align 4
  %178 = and i32 15, %177
  %179 = load i32, i32* %10, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %9, align 4
  %184 = ashr i32 %183, 4
  %185 = and i32 7, %184
  %186 = load i32, i32* %11, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %9, align 4
  %191 = ashr i32 %190, 6
  %192 = and i32 7, %191
  %193 = load i32, i32* %12, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* %6, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %6, align 4
  br label %221

197:                                              ; preds = %173
  %198 = load i32, i32* %9, align 4
  %199 = and i32 15, %198
  %200 = load i32, i32* %10, align 4
  %201 = sub nsw i32 %200, 3
  %202 = shl i32 %199, %201
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %9, align 4
  %206 = ashr i32 %205, 4
  %207 = and i32 7, %206
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 13
  %210 = shl i32 %207, %209
  %211 = load i32, i32* %6, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %9, align 4
  %214 = ashr i32 %213, 7
  %215 = and i32 7, %214
  %216 = load i32, i32* %12, align 4
  %217 = sub nsw i32 %216, 2
  %218 = shl i32 %215, %217
  %219 = load i32, i32* %6, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %197, %176
  br label %256

222:                                              ; preds = %166
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = and i32 15, %226
  %228 = shl i32 %227, 20
  %229 = load i32, i32* %6, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %9, align 4
  %232 = ashr i32 %231, 4
  %233 = and i32 31, %232
  %234 = shl i32 %233, 8
  %235 = load i32, i32* %6, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %6, align 4
  br label %255

237:                                              ; preds = %222
  %238 = load i32, i32* %9, align 4
  %239 = and i32 15, %238
  %240 = shl i32 %239, 18
  %241 = load i32, i32* %6, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %9, align 4
  %244 = ashr i32 %243, 4
  %245 = and i32 3, %244
  %246 = shl i32 %245, 22
  %247 = load i32, i32* %6, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %9, align 4
  %250 = ashr i32 %249, 6
  %251 = and i32 7, %250
  %252 = shl i32 %251, 8
  %253 = load i32, i32* %6, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %237, %225
  br label %256

256:                                              ; preds = %255, %221
  %257 = load i32, i32* %6, align 4
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %256, %105, %54, %35, %23
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i64 @countTrailingZeros(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
