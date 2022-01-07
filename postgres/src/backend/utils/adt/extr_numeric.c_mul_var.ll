; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_mul_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_mul_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i64, i32 }

@NUMERIC_POS = common dso_local global i32 0, align 4
@NUMERIC_NEG = common dso_local global i32 0, align 4
@DEC_DIGITS = common dso_local global i32 0, align 4
@MUL_GUARD_DIGITS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@NBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @mul_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mul_var(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %25, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %6, align 8
  br label %38

38:                                               ; preds = %34, %4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %17, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %19, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %20, align 8
  %51 = load i32, i32* %17, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53, %38
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = call i32 @zero_var(%struct.TYPE_9__* %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %288

62:                                               ; preds = %53
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @NUMERIC_POS, align 4
  store i32 %71, i32* %10, align 4
  br label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @NUMERIC_NEG, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @DEC_DIGITS, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* @DEC_DIGITS, align 4
  %94 = sdiv i32 %92, %93
  %95 = add nsw i32 %88, %94
  %96 = load i32, i32* @MUL_GUARD_DIGITS, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @Min(i32 %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 3
  br i1 %102, label %103, label %109

103:                                              ; preds = %74
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = call i32 @zero_var(%struct.TYPE_9__* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %288

109:                                              ; preds = %74
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i64 @palloc0(i32 %113)
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %116 = load i32, i32* %17, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 3
  %120 = call i32 @Min(i32 %117, i32 %119)
  store i32 %120, i32* %23, align 4
  br label %121

121:                                              ; preds = %224, %109
  %122 = load i32, i32* %23, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %227

124:                                              ; preds = %121
  %125 = load i32*, i32** %19, align 8
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %26, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %224

133:                                              ; preds = %124
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @INT_MAX, align 4
  %139 = load i32, i32* @INT_MAX, align 4
  %140 = load i32, i32* @NBASE, align 4
  %141 = sdiv i32 %139, %140
  %142 = sub nsw i32 %138, %141
  %143 = load i32, i32* @NBASE, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sdiv i32 %142, %144
  %146 = icmp sgt i32 %137, %145
  br i1 %146, label %147, label %190

147:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %22, align 4
  br label %150

150:                                              ; preds = %180, %147
  %151 = load i32, i32* %22, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %150
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %22, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %158, %159
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @NBASE, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %153
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* @NBASE, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @NBASE, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %16, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %16, align 4
  br label %174

173:                                              ; preds = %153
  store i32 0, i32* %14, align 4
  br label %174

174:                                              ; preds = %173, %164
  %175 = load i32, i32* %16, align 4
  %176 = load i32*, i32** %13, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %22, align 4
  br label %150

183:                                              ; preds = %150
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @Assert(i32 %186)
  %188 = load i32, i32* %26, align 4
  %189 = add nsw i32 1, %188
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %183, %133
  %191 = load i32, i32* %18, align 4
  %192 = sub nsw i32 %191, 1
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %23, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sub nsw i32 %195, 3
  %197 = call i32 @Min(i32 %192, i32 %196)
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* %24, align 4
  %200 = add nsw i32 %198, %199
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %22, align 4
  br label %202

202:                                              ; preds = %220, %190
  %203 = load i32, i32* %24, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %202
  %206 = load i32, i32* %26, align 4
  %207 = load i32*, i32** %20, align 8
  %208 = load i32, i32* %24, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %206, %211
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %22, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %22, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %212
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %205
  %221 = load i32, i32* %24, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %24, align 4
  br label %202

223:                                              ; preds = %202
  br label %224

224:                                              ; preds = %223, %132
  %225 = load i32, i32* %23, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %23, align 4
  br label %121

227:                                              ; preds = %121
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @alloc_var(%struct.TYPE_9__* %228, i32 %229)
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  store i32* %233, i32** %21, align 8
  store i32 0, i32* %14, align 4
  %234 = load i32, i32* %9, align 4
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %22, align 4
  br label %236

236:                                              ; preds = %266, %227
  %237 = load i32, i32* %22, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %269

239:                                              ; preds = %236
  %240 = load i32*, i32** %13, align 8
  %241 = load i32, i32* %22, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* @NBASE, align 4
  %249 = icmp sge i32 %247, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %239
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* @NBASE, align 4
  %253 = sdiv i32 %251, %252
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* @NBASE, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %16, align 4
  %258 = sub nsw i32 %257, %256
  store i32 %258, i32* %16, align 4
  br label %260

259:                                              ; preds = %239
  store i32 0, i32* %14, align 4
  br label %260

260:                                              ; preds = %259, %250
  %261 = load i32, i32* %16, align 4
  %262 = load i32*, i32** %21, align 8
  %263 = load i32, i32* %22, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %261, i32* %265, align 4
  br label %266

266:                                              ; preds = %260
  %267 = load i32, i32* %22, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %22, align 4
  br label %236

269:                                              ; preds = %236
  %270 = load i32, i32* %14, align 4
  %271 = icmp eq i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @Assert(i32 %272)
  %274 = load i32*, i32** %13, align 8
  %275 = call i32 @pfree(i32* %274)
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 4
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 3
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i32 @round_var(%struct.TYPE_9__* %283, i32 %284)
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %287 = call i32 @strip_var(%struct.TYPE_9__* %286)
  br label %288

288:                                              ; preds = %269, %103, %56
  ret void
}

declare dso_local i32 @zero_var(%struct.TYPE_9__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @alloc_var(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @round_var(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @strip_var(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
