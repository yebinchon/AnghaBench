; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_reglsop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_reglsop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@UT32_MAX = common dso_local global i32 0, align 4
@ARM_REG32 = common dso_local global i32 0, align 4
@ARM_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @reglsop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reglsop(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @UT32_MAX, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ARM_REG32, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %238

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARM_REG32, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 64
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ARM_GPR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 6823936
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 24
  %54 = or i32 %46, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 29
  %62 = or i32 %54, %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 56
  %70 = shl i32 %69, 13
  %71 = or i32 %62, %70
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %236

81:                                               ; preds = %33
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 256
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, -256
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %81
  %94 = load i32, i32* @UT32_MAX, align 4
  store i32 %94, i32* %3, align 4
  br label %238

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @countTrailingZeros(i32 %102)
  %104 = icmp sge i32 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %101, %98
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 24
  %117 = or i32 %109, %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 29
  %125 = or i32 %117, %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 56
  %133 = shl i32 %132, 13
  %134 = or i32 %125, %133
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %108
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %138, -1
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sub nsw i32 15, %141
  %143 = and i32 15, %142
  %144 = shl i32 %143, 20
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @countTrailingZeros(i32 %147)
  %149 = icmp sgt i32 %148, 3
  br i1 %149, label %150, label %158

150:                                              ; preds = %137
  %151 = load i32, i32* %7, align 4
  %152 = ashr i32 %151, 4
  %153 = sub nsw i32 %152, 1
  %154 = sub nsw i32 31, %153
  %155 = shl i32 %154, 8
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %165

158:                                              ; preds = %137
  %159 = load i32, i32* %7, align 4
  %160 = ashr i32 %159, 4
  %161 = sub nsw i32 31, %160
  %162 = shl i32 %161, 8
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %158, %150
  br label %235

166:                                              ; preds = %108
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ARM_REG32, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %206

176:                                              ; preds = %166
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @countTrailingZeros(i32 %177)
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = load i32, i32* %7, align 4
  %182 = and i32 %181, 63
  %183 = and i32 15, %182
  %184 = shl i32 %183, 20
  %185 = load i32, i32* %6, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %7, align 4
  %188 = ashr i32 %187, 4
  %189 = shl i32 %188, 8
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %200

192:                                              ; preds = %176
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = and i32 255, %195
  %197 = shl i32 %196, 16
  %198 = load i32, i32* %6, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %192, %180
  %201 = load i32, i32* %7, align 4
  %202 = ashr i32 %201, 8
  %203 = shl i32 %202, 8
  %204 = load i32, i32* %6, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %6, align 4
  br label %234

206:                                              ; preds = %166
  %207 = load i32, i32* %7, align 4
  %208 = and i32 %207, 63
  %209 = and i32 15, %208
  %210 = shl i32 %209, 20
  %211 = load i32, i32* %6, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @countTrailingZeros(i32 %213)
  %215 = icmp slt i32 %214, 4
  br i1 %215, label %216, label %222

216:                                              ; preds = %206
  %217 = load i32, i32* %7, align 4
  %218 = ashr i32 %217, 4
  %219 = shl i32 %218, 8
  %220 = load i32, i32* %6, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %6, align 4
  br label %228

222:                                              ; preds = %206
  %223 = load i32, i32* %7, align 4
  %224 = and i32 255, %223
  %225 = shl i32 %224, 15
  %226 = load i32, i32* %6, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %222, %216
  %229 = load i32, i32* %7, align 4
  %230 = ashr i32 %229, 8
  %231 = shl i32 %230, 23
  %232 = load i32, i32* %6, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %228, %200
  br label %235

235:                                              ; preds = %234, %165
  br label %236

236:                                              ; preds = %235, %43
  %237 = load i32, i32* %6, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %93, %18
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @countTrailingZeros(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
