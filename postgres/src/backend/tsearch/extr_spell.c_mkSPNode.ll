; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_mkSPNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_mkSPNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }

@SPNHDRSZ = common dso_local global i64 0, align 8
@FF_COMPOUNDONLY = common dso_local global i32 0, align 4
@FF_COMPOUNDFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i32, i32, i32)* @mkSPNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @mkSPNode(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i8 0, i8* %12, align 1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %72, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %26, i64 %28
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %23
  %38 = load i8, i8* %12, align 1
  %39 = sext i8 %38 to i32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %39, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %37
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %60, i64 %62
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %12, align 1
  br label %71

71:                                               ; preds = %55, %37, %23
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %19

75:                                               ; preds = %19
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %321

79:                                               ; preds = %75
  %80 = load i64, i64* @SPNHDRSZ, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 40
  %84 = add i64 %80, %83
  %85 = call i64 @cpalloc0(i64 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %13, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %14, align 8
  store i8 0, i8* %12, align 1
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %308, %79
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %311

98:                                               ; preds = %94
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %101, i64 %103
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %307

112:                                              ; preds = %98
  %113 = load i8, i8* %12, align 1
  %114 = sext i8 %113 to i32
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %117, i64 %119
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %114, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %112
  %131 = load i8, i8* %12, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = call %struct.TYPE_15__* @mkSPNode(%struct.TYPE_16__* %134, i32 %135, i32 %136, i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %141, align 8
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %15, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 1
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %14, align 8
  br label %145

145:                                              ; preds = %133, %130
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %148, i64 %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  store i8 %158, i8* %12, align 1
  br label %159

159:                                              ; preds = %145, %112
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %162, i64 %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %178, i64 %180
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %306

190:                                              ; preds = %159
  store i32 0, i32* %16, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %252

195:                                              ; preds = %190
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %201, i64 %203
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %198, %209
  br i1 %210, label %211, label %252

211:                                              ; preds = %195
  %212 = load i32, i32* @FF_COMPOUNDONLY, align 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %212, %215
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %220, i64 %222
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @makeCompoundFlags(%struct.TYPE_16__* %217, i64 %228)
  %230 = and i32 %216, %229
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 0, i32 1
  store i32 %233, i32* %16, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %240, i64 %242
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @MergeAffix(%struct.TYPE_16__* %234, i64 %237, i64 %248)
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  br label %266

252:                                              ; preds = %195, %190
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %255, i64 %257
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %252, %211
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @makeCompoundFlags(%struct.TYPE_16__* %269, i64 %272)
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @FF_COMPOUNDONLY, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %295

282:                                              ; preds = %266
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %287 = and i32 %285, %286
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %282
  %290 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %289, %282, %266
  %296 = load i32, i32* %16, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %295
  %299 = load i32, i32* @FF_COMPOUNDONLY, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 8
  br label %305

305:                                              ; preds = %298, %295
  br label %306

306:                                              ; preds = %305, %159
  br label %307

307:                                              ; preds = %306, %98
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %10, align 4
  br label %94

311:                                              ; preds = %94
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, 1
  %317 = call %struct.TYPE_15__* @mkSPNode(%struct.TYPE_16__* %312, i32 %313, i32 %314, i32 %316)
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 3
  store %struct.TYPE_15__* %317, %struct.TYPE_15__** %319, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %320, %struct.TYPE_15__** %5, align 8
  br label %321

321:                                              ; preds = %311, %78
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %322
}

declare dso_local i64 @cpalloc0(i64) #1

declare dso_local i32 @makeCompoundFlags(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @MergeAffix(%struct.TYPE_16__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
