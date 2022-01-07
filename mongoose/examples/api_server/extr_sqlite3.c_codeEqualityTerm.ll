; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_codeEqualityTerm.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_codeEqualityTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i32, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.InLoop* }
%struct.InLoop = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64* }

@TK_EQ = common dso_local global i64 0, align 8
@TK_ISNULL = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@WHERE_REVERSE = common dso_local global i32 0, align 4
@WHERE_INDEXED = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i64 0, align 8
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@WHERE_IN_ABLE = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Prev = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32)* @codeEqualityTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeEqualityTerm(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.InLoop*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %11, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TK_EQ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_25__* %34, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  br label %265

40:                                               ; preds = %5
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TK_ISNULL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* @OP_Null, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @sqlite3VdbeAddOp2(i32* %48, i32 %49, i32 0, i32 %50)
  br label %264

52:                                               ; preds = %40
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @WHERE_REVERSE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WHERE_INDEXED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %52
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %121

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @testcase(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %86, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @testcase(i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %81
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %102, %109
  br label %111

111:                                              ; preds = %100, %81
  %112 = phi i1 [ false, %81 ], [ %110, %100 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @testcase(i32 %113)
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @testcase(i32 %115)
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %111, %68, %52
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TK_IN, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %13, align 4
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %132 = call i32 @sqlite3FindInIndex(%struct.TYPE_25__* %130, %struct.TYPE_26__* %131, i32 0)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %121
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @testcase(i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %17, align 4
  br label %143

143:                                              ; preds = %136, %121
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %15, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @OP_Last, align 4
  br label %154

152:                                              ; preds = %143
  %153 = load i32, i32* @OP_Rewind, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @sqlite3VdbeAddOp2(i32* %147, i32 %155, i32 %156, i32 0)
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @WHERE_IN_ABLE, align 4
  %163 = and i32 %161, %162
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %154
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @sqlite3VdbeMakeLabel(i32* %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %171, %154
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load %struct.InLoop*, %struct.InLoop** %189, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = mul i64 12, %196
  %198 = trunc i64 %197 to i32
  %199 = call %struct.InLoop* @sqlite3DbReallocOrFree(i32 %185, %struct.InLoop* %190, i32 %198)
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  store %struct.InLoop* %199, %struct.InLoop** %203, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = load %struct.InLoop*, %struct.InLoop** %207, align 8
  store %struct.InLoop* %208, %struct.InLoop** %16, align 8
  %209 = load %struct.InLoop*, %struct.InLoop** %16, align 8
  %210 = icmp ne %struct.InLoop* %209, null
  br i1 %210, label %211, label %258

211:                                              ; preds = %176
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sub nsw i32 %216, 1
  %218 = load %struct.InLoop*, %struct.InLoop** %16, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %218, i64 %219
  store %struct.InLoop* %220, %struct.InLoop** %16, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.InLoop*, %struct.InLoop** %16, align 8
  %223 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* @IN_INDEX_ROWID, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %211
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* @OP_Rowid, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @sqlite3VdbeAddOp2(i32* %228, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.InLoop*, %struct.InLoop** %16, align 8
  %234 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  br label %243

235:                                              ; preds = %211
  %236 = load i32*, i32** %12, align 8
  %237 = load i32, i32* @OP_Column, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @sqlite3VdbeAddOp3(i32* %236, i32 %237, i32 %238, i32 0, i32 %239)
  %241 = load %struct.InLoop*, %struct.InLoop** %16, align 8
  %242 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %235, %227
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32, i32* @OP_Prev, align 4
  br label %250

248:                                              ; preds = %243
  %249 = load i32, i32* @OP_Next, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  %252 = load %struct.InLoop*, %struct.InLoop** %16, align 8
  %253 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load i32*, i32** %12, align 8
  %255 = load i32, i32* @OP_IsNull, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @sqlite3VdbeAddOp1(i32* %254, i32 %255, i32 %256)
  br label %263

258:                                              ; preds = %176
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  store i32 0, i32* %262, align 8
  br label %263

263:                                              ; preds = %258, %250
  br label %264

264:                                              ; preds = %263, %46
  br label %265

265:                                              ; preds = %264, %33
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %268 = call i32 @disableTerm(%struct.TYPE_24__* %266, %struct.TYPE_23__* %267)
  %269 = load i32, i32* %13, align 4
  ret i32 %269
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local %struct.InLoop* @sqlite3DbReallocOrFree(i32, %struct.InLoop*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @disableTerm(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
