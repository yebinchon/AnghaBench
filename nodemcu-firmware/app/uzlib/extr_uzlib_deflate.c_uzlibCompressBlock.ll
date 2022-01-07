; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_deflate.c_uzlibCompressBlock.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_deflate.c_uzlibCompressBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@dynamicTables = common dso_local global %struct.TYPE_4__* null, align 8
@oBuf = common dso_local global %struct.TYPE_3__* null, align 8
@MIN_MATCH = common dso_local global i32 0, align 4
@OFFSET16_MASK = common dso_local global i32 0, align 4
@MAX_MATCH = common dso_local global i32 0, align 4
@MAX_OFFSET = common dso_local global i32 0, align 4
@NULL_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dic: %6x %6x %6x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uzlibCompressBlock(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dynamicTables, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dynamicTables, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dynamicTables, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dynamicTables, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 24, %36
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oBuf, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 @DBG_COUNT(i32 9)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %242, %2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MIN_MATCH, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %245

48:                                               ; preds = %42
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %15, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @OFFSET16_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* @MIN_MATCH, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %15, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %73, %76
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %78, %79
  %81 = load i32, i32* %22, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %23, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %24, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oBuf, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = call i32 @DBG_COUNT(i32 10)
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @MAX_MATCH, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %48
  %98 = load i32, i32* @MAX_MATCH, align 4
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %97, %48
  %100 = load i32, i32* %18, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @MAX_OFFSET, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %105, i32* %112, align 4
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %190, %99
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* @NULL_OFFSET, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 60
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i1 [ false, %113 ], [ %119, %117 ]
  br i1 %121, label %122, label %193

122:                                              ; preds = %120
  %123 = call i32 @DBG_COUNT(i32 11)
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %134

131:                                              ; preds = %122
  %132 = load i32, i32* @OFFSET16_MASK, align 4
  %133 = add nsw i32 %132, 1
  br label %134

134:                                              ; preds = %131, %130
  %135 = phi i32 [ 0, %130 ], [ %133, %131 ]
  %136 = sub nsw i32 %126, %135
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* @MAX_OFFSET, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %193

143:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32* %147, i32** %16, align 8
  br label %148

148:                                              ; preds = %167, %143
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %153, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %148
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %19, align 4
  %163 = icmp slt i32 %161, %162
  br label %164

164:                                              ; preds = %160, %148
  %165 = phi i1 [ false, %148 ], [ %163, %160 ]
  br i1 %165, label %166, label %170

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %148

170:                                              ; preds = %164
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @DBG_ADD_COUNT(i32 12, i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %20, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %176, %170
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* @MAX_OFFSET, align 4
  %185 = sub nsw i32 %184, 1
  %186 = and i32 %183, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %24, align 4
  br label %190

190:                                              ; preds = %181
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %113

193:                                              ; preds = %142, %120
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %227

196:                                              ; preds = %193
  %197 = load i32, i32* %21, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %20, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %199, %196
  %204 = call i32 @DBG_COUNT(i32 14)
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @copy(i32 %205, i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @DBG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %14, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %5, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %226

218:                                              ; preds = %199
  %219 = call i32 @DBG_COUNT(i32 15)
  %220 = load i32*, i32** %15, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 -1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @literal(i32 %222)
  %224 = load i32, i32* %21, align 4
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %20, align 4
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %218, %203
  br label %241

227:                                              ; preds = %193
  %228 = load i32, i32* %21, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = call i32 @DBG_COUNT(i32 16)
  %232 = load i32, i32* %21, align 4
  store i32 %232, i32* %13, align 4
  %233 = load i32, i32* %20, align 4
  store i32 %233, i32* %14, align 4
  br label %240

234:                                              ; preds = %227
  %235 = call i32 @DBG_COUNT(i32 17)
  %236 = load i32*, i32** %15, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @literal(i32 %238)
  br label %240

240:                                              ; preds = %234, %230
  br label %241

241:                                              ; preds = %240, %226
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %5, align 4
  br label %42

245:                                              ; preds = %42
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @copy(i32 %249, i32 %250)
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* %13, align 4
  %255 = call i32 @DBG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %14, align 4
  %257 = sub nsw i32 %256, 1
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %5, align 4
  br label %260

260:                                              ; preds = %248, %245
  br label %261

261:                                              ; preds = %265, %260
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* %4, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = load i32*, i32** %3, align 8
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %5, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @literal(i32 %271)
  br label %261

273:                                              ; preds = %261
  ret void
}

declare dso_local i32 @DBG_COUNT(i32) #1

declare dso_local i32 @DBG_ADD_COUNT(i32, i32) #1

declare dso_local i32 @copy(i32, i32) #1

declare dso_local i32 @DBG_PRINT(i8*, i32, i32, i32) #1

declare dso_local i32 @literal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
