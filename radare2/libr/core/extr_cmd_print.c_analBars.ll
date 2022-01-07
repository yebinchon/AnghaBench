; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_analBars.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_analBars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Error: failed to malloc memory\00", align 1
@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32, i32, i32, i32, i64)* @analBars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @analBars(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32* @calloc(i32 1, i32 %24)
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %6
  %29 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %272

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = call i32* @malloc(i32 %31)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @R_FREE(i32* %36)
  %38 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %272

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 65
  br i1 %41, label %42, label %158

42:                                               ; preds = %39
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  store i64 %48, i64* %18, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.TYPE_16__* @r_core_anal_get_stats(%struct.TYPE_17__* %49, i64 %50, i64 %51, i32 %52)
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %19, align 8
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %149, %42
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %152

58:                                               ; preds = %54
  store i32 0, i32* %20, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %20, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %20, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %20, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %20, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %20, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %20, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @R_MIN(i32 255, i32 %143)
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %58
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %54

152:                                              ; preds = %54
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %154 = call i32 @r_core_anal_stats_free(%struct.TYPE_16__* %153)
  %155 = load i32*, i32** %17, align 8
  %156 = call i32 @free(i32* %155)
  %157 = load i32*, i32** %16, align 8
  store i32* %157, i32** %7, align 8
  br label %272

158:                                              ; preds = %39
  store i32 0, i32* %15, align 4
  br label %159

159:                                              ; preds = %265, %158
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %268

163:                                              ; preds = %159
  %164 = call i64 (...) @r_cons_is_breaked()
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %268

167:                                              ; preds = %163
  %168 = load i64, i64* %13, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %11, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %168, %174
  store i64 %175, i64* %21, align 8
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %261, %167
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %264

180:                                              ; preds = %176
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %181, 97
  br i1 %182, label %183, label %204

183:                                              ; preds = %180
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %21, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = call %struct.TYPE_19__* @r_anal_get_fcn_in(i32 %186, i64 %190, i32 0)
  store %struct.TYPE_19__* %191, %struct.TYPE_19__** %22, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %193 = icmp ne %struct.TYPE_19__* %192, null
  br i1 %193, label %194, label %203

194:                                              ; preds = %183
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @r_list_length(i32 %197)
  %199 = load i32*, i32** %16, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  br label %203

203:                                              ; preds = %194, %183
  br label %261

204:                                              ; preds = %180
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %211 = call %struct.TYPE_18__* @r_core_anal_op(%struct.TYPE_17__* %205, i64 %209, i32 %210)
  store %struct.TYPE_18__* %211, %struct.TYPE_18__** %23, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %213 = icmp ne %struct.TYPE_18__* %212, null
  br i1 %213, label %214, label %252

214:                                              ; preds = %204
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i32, i32* %9, align 4
  %221 = icmp eq i32 %220, 105
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32*, i32** %16, align 8
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @matchBar(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %219
  br label %237

227:                                              ; preds = %214
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %229 = load i32, i32* %9, align 4
  %230 = call i64 @checkAnalType(%struct.TYPE_18__* %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32*, i32** %16, align 8
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @matchBar(i32* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %227
  br label %237

237:                                              ; preds = %236, %226
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %14, align 4
  br label %249

249:                                              ; preds = %242, %237
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %251 = call i32 @r_anal_op_free(%struct.TYPE_18__* %250)
  br label %260

252:                                              ; preds = %204
  %253 = load i32, i32* %9, align 4
  %254 = icmp eq i32 %253, 105
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32*, i32** %16, align 8
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @matchBar(i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %249
  br label %261

261:                                              ; preds = %260, %203
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  br label %176

264:                                              ; preds = %176
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  br label %159

268:                                              ; preds = %166, %159
  %269 = load i32*, i32** %17, align 8
  %270 = call i32 @free(i32* %269)
  %271 = load i32*, i32** %16, align 8
  store i32* %271, i32** %7, align 8
  br label %272

272:                                              ; preds = %268, %152, %35, %28
  %273 = load i32*, i32** %7, align 8
  ret i32* %273
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @R_FREE(i32*) #1

declare dso_local %struct.TYPE_16__* @r_core_anal_get_stats(%struct.TYPE_17__*, i64, i64, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @r_core_anal_stats_free(%struct.TYPE_16__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @r_cons_is_breaked(...) #1

declare dso_local %struct.TYPE_19__* @r_anal_get_fcn_in(i32, i64, i32) #1

declare dso_local i32 @r_list_length(i32) #1

declare dso_local %struct.TYPE_18__* @r_core_anal_op(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @matchBar(i32*, i32) #1

declare dso_local i64 @checkAnalType(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @r_anal_op_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
