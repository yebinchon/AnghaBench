; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupdesc.c_CreateTupleDescCopyConstr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupdesc.c_CreateTupleDescCopyConstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, i32, i32, i32, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @CreateTupleDescCopyConstr(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_14__* @CreateTemplateTupleDesc(i32 %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_14__* %15, i32 0)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = call %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_14__* %17, i32 0)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memcpy(%struct.TYPE_16__* %16, %struct.TYPE_16__* %18, i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %318

28:                                               ; preds = %1
  %29 = call i64 @palloc0(i32 40)
  %30 = inttoptr i64 %29 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %6, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %47, label %110

47:                                               ; preds = %28
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 56
  %53 = trunc i64 %52 to i32
  %54 = call i64 @palloc(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_16__*
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 56
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(%struct.TYPE_16__* %60, %struct.TYPE_16__* %63, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %106, %47
  %76 = load i32, i32* %5, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %78
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @pstrdup(i8* %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 8
  store i8* %97, i8** %104, align 8
  br label %105

105:                                              ; preds = %88, %78
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %5, align 4
  br label %75

109:                                              ; preds = %75
  br label %110

110:                                              ; preds = %109, %28
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = icmp ne %struct.TYPE_16__* %113, null
  br i1 %114, label %115, label %187

115:                                              ; preds = %110
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 56
  %121 = trunc i64 %120 to i32
  %122 = call i64 @palloc(i32 %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_16__*
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 56
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(%struct.TYPE_16__* %128, %struct.TYPE_16__* %131, i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %183, %115
  %144 = load i32, i32* %5, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %186

146:                                              ; preds = %143
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %146
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_14__* %157, i32 %158)
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %7, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @datumCopy(i32 %167, i32 %170, i32 %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 6
  store i32 %174, i32* %181, align 8
  br label %182

182:                                              ; preds = %156, %146
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %5, align 4
  br label %143

186:                                              ; preds = %143
  br label %187

187:                                              ; preds = %186, %110
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = icmp sgt i32 %190, 0
  br i1 %193, label %194, label %314

194:                                              ; preds = %187
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 56
  %200 = trunc i64 %199 to i32
  %201 = call i64 @palloc(i32 %200)
  %202 = inttoptr i64 %201 to %struct.TYPE_16__*
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  store %struct.TYPE_16__* %202, %struct.TYPE_16__** %204, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 56
  %216 = trunc i64 %215 to i32
  %217 = call i32 @memcpy(%struct.TYPE_16__* %207, %struct.TYPE_16__* %210, i32 %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %310, %194
  %223 = load i32, i32* %5, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %313

225:                                              ; preds = %222
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 3
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %252

235:                                              ; preds = %225
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = call i8* @pstrdup(i8* %243)
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  store i8* %244, i8** %251, align 8
  br label %252

252:                                              ; preds = %235, %225
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %279

262:                                              ; preds = %252
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = call i8* @pstrdup(i8* %270)
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 2
  store i8* %271, i8** %278, align 8
  br label %279

279:                                              ; preds = %262, %252
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 1
  store i32 %287, i32* %294, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  store i32 %302, i32* %309, align 8
  br label %310

310:                                              ; preds = %279
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %5, align 4
  br label %222

313:                                              ; preds = %222
  br label %314

314:                                              ; preds = %313, %187
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 3
  store %struct.TYPE_15__* %315, %struct.TYPE_15__** %317, align 8
  br label %318

318:                                              ; preds = %314, %1
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 2
  store i32 %321, i32* %323, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 1
  store i32 %326, i32* %328, align 4
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %329
}

declare dso_local %struct.TYPE_14__* @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
