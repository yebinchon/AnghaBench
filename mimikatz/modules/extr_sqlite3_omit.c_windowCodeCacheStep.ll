; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_windowCodeCacheStep.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_windowCodeCacheStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@TK_CURRENT = common dso_local global i64 0, align 8
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_Goto = common dso_local global i32 0, align 4
@OP_Once = common dso_local global i32 0, align 4
@OP_OpenDup = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@TK_RANGE = common dso_local global i64 0, align 8
@OP_Column = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i32, i32)* @windowCodeCacheStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowCodeCacheStep(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %11, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call i32* @sqlite3GetVdbe(%struct.TYPE_21__* %38)
  store i32* %39, i32** %12, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %15, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  store %struct.TYPE_22__* %45, %struct.TYPE_22__** %16, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %47 = icmp ne %struct.TYPE_22__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %5
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  store i32 %54, i32* %17, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = icmp ne %struct.TYPE_22__* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TK_CURRENT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TK_UNBOUNDED, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %65, %59, %53
  %72 = phi i1 [ false, %59 ], [ false, %53 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %28, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TK_UNBOUNDED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TK_CURRENT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %123, label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TK_UNBOUNDED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TK_UNBOUNDED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %123, label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TK_CURRENT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TK_CURRENT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TK_CURRENT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TK_UNBOUNDED, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %115, %109
  %122 = phi i1 [ false, %109 ], [ %120, %115 ]
  br label %123

123:                                              ; preds = %121, %103, %91, %79
  %124 = phi i1 [ true, %103 ], [ true, %91 ], [ true, %79 ], [ %122, %121 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_21__* %127)
  store i32 %128, i32* %27, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  store i32 %141, i32* %21, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_21__* %142)
  store i32 %143, i32* %22, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  store i32 %146, i32* %23, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  store i32 %151, i32* %24, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @windowPartitionCache(%struct.TYPE_21__* %152, %struct.TYPE_20__* %153, i32* %154, i32 %155, i32 %156, i32* %26)
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* @OP_Goto, align 4
  %160 = call i32 @sqlite3VdbeAddOp0(i32* %158, i32 %159)
  store i32 %160, i32* %19, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @sqlite3VdbeResolveLabel(i32* %161, i32 %162)
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* @OP_Once, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @sqlite3VdbeCurrentAddr(i32* %166)
  %168 = add nsw i32 %167, 2
  %169 = call i32 @sqlite3VdbeAddOp2(i32* %164, i32 %165, i32 0, i32 %168)
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @VdbeCoverage(i32* %170)
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* @OP_OpenDup, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @sqlite3VdbeAddOp2(i32* %172, i32 %173, i32 %174, i32 %177)
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %181 = call i32 @windowInitAccum(%struct.TYPE_21__* %179, %struct.TYPE_19__* %180)
  store i32 %181, i32* %25, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* @OP_Integer, align 4
  %184 = load i32, i32* %24, align 4
  %185 = call i32 @sqlite3VdbeAddOp2(i32* %182, i32 %183, i32 0, i32 %184)
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* @OP_Rewind, align 4
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %27, align 4
  %190 = call i32 @sqlite3VdbeAddOp2(i32* %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %12, align 8
  %192 = call i32 @VdbeCoverage(i32* %191)
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* @OP_Rewind, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %27, align 4
  %199 = call i32 @sqlite3VdbeAddOp2(i32* %193, i32 %194, i32 %197, i32 %198)
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @VdbeCoverageNeverTaken(i32* %200)
  %202 = load i32, i32* %28, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %123
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 @sqlite3VdbeCurrentAddr(i32* %205)
  store i32 %206, i32* %29, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %26, align 4
  %212 = call i32 @windowAggStep(%struct.TYPE_21__* %207, %struct.TYPE_19__* %208, i32 %209, i32 0, i32 %210, i32 %211)
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* @OP_Next, align 4
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* %29, align 4
  %217 = call i32 @sqlite3VdbeAddOp2(i32* %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32*, i32** %12, align 8
  %219 = call i32 @VdbeCoverage(i32* %218)
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* @OP_Rewind, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %27, align 4
  %224 = call i32 @sqlite3VdbeAddOp2(i32* %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32*, i32** %12, align 8
  %226 = call i32 @VdbeCoverageNeverTaken(i32* %225)
  br label %227

227:                                              ; preds = %204, %123
  %228 = load i32*, i32** %12, align 8
  %229 = call i32 @sqlite3VdbeCurrentAddr(i32* %228)
  store i32 %229, i32* %20, align 4
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %231 = icmp ne %struct.TYPE_22__* %230, null
  br i1 %231, label %232, label %360

232:                                              ; preds = %227
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TK_CURRENT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @TK_CURRENT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %360

244:                                              ; preds = %238, %232
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @TK_CURRENT, align 8
  %249 = icmp eq i64 %247, %248
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @TK_RANGE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %332

256:                                              ; preds = %244
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %261 = icmp ne %struct.TYPE_22__* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  br label %267

266:                                              ; preds = %256
  br label %267

267:                                              ; preds = %266, %262
  %268 = phi i32 [ %265, %262 ], [ 0, %266 ]
  %269 = add nsw i32 %259, %268
  store i32 %269, i32* %32, align 4
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %274 = icmp ne %struct.TYPE_22__* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  br label %280

279:                                              ; preds = %267
  br label %280

280:                                              ; preds = %279, %275
  %281 = phi i32 [ %278, %275 ], [ 0, %279 ]
  %282 = add nsw i32 %272, %281
  store i32 %282, i32* %33, align 4
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %285 = call i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_21__* %283, %struct.TYPE_22__* %284, i32 0, i32 0)
  store i32* %285, i32** %34, align 8
  store i32 0, i32* %13, align 4
  br label %286

286:                                              ; preds = %301, %280
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %286
  %291 = load i32*, i32** %12, align 8
  %292 = load i32, i32* @OP_Column, align 4
  %293 = load i32, i32* %23, align 4
  %294 = load i32, i32* %32, align 4
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* %18, align 4
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %297, %298
  %300 = call i32 @sqlite3VdbeAddOp3(i32* %291, i32 %292, i32 %293, i32 %296, i32 %299)
  br label %301

301:                                              ; preds = %290
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %13, align 4
  br label %286

304:                                              ; preds = %286
  %305 = load i32*, i32** %12, align 8
  %306 = load i32, i32* @OP_Compare, align 4
  %307 = load i32, i32* %18, align 4
  %308 = load i32, i32* %33, align 4
  %309 = load i32, i32* %17, align 4
  %310 = call i32 @sqlite3VdbeAddOp3(i32* %305, i32 %306, i32 %307, i32 %308, i32 %309)
  store i32 %310, i32* %14, align 4
  %311 = load i32*, i32** %12, align 8
  %312 = load i32*, i32** %34, align 8
  %313 = bitcast i32* %312 to i8*
  %314 = load i32, i32* @P4_KEYINFO, align 4
  %315 = call i32 @sqlite3VdbeAppendP4(i32* %311, i8* %313, i32 %314)
  %316 = load i32*, i32** %12, align 8
  %317 = load i32, i32* @OP_Jump, align 4
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %318, 2
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, 2
  %322 = call i32 @sqlite3VdbeAddOp3(i32* %316, i32 %317, i32 %319, i32 0, i32 %321)
  store i32 %322, i32* %31, align 4
  %323 = load i32*, i32** %12, align 8
  %324 = call i32 @VdbeCoverage(i32* %323)
  %325 = load i32*, i32** %12, align 8
  %326 = load i32, i32* @OP_Copy, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %33, align 4
  %329 = load i32, i32* %17, align 4
  %330 = sub nsw i32 %329, 1
  %331 = call i32 @sqlite3VdbeAddOp3(i32* %325, i32 %326, i32 %327, i32 %328, i32 %330)
  br label %332

332:                                              ; preds = %304, %244
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %335 = load i32, i32* %24, align 4
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %30, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %332
  %341 = load i32, i32* %25, align 4
  br label %343

342:                                              ; preds = %332
  br label %343

343:                                              ; preds = %342, %340
  %344 = phi i32 [ %341, %340 ], [ 0, %342 ]
  %345 = load i32, i32* %30, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i32, i32* %26, align 4
  br label %350

349:                                              ; preds = %343
  br label %350

350:                                              ; preds = %349, %347
  %351 = phi i32 [ %348, %347 ], [ 0, %349 ]
  %352 = call i32 @windowReturnRows(%struct.TYPE_21__* %333, %struct.TYPE_19__* %334, i32 %335, i32 %336, i32 %337, i32 %344, i32 %351)
  %353 = load i32, i32* %31, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %350
  %356 = load i32*, i32** %12, align 8
  %357 = load i32, i32* %31, align 4
  %358 = call i32 @sqlite3VdbeJumpHere(i32* %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %350
  br label %360

360:                                              ; preds = %359, %238, %227
  %361 = load i32, i32* %28, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %360
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %366 = load i32, i32* %23, align 4
  %367 = load i32, i32* %25, align 4
  %368 = load i32, i32* %26, align 4
  %369 = call i32 @windowAggStep(%struct.TYPE_21__* %364, %struct.TYPE_19__* %365, i32 %366, i32 0, i32 %367, i32 %368)
  br label %370

370:                                              ; preds = %363, %360
  %371 = load i32*, i32** %12, align 8
  %372 = load i32, i32* @OP_AddImm, align 4
  %373 = load i32, i32* %24, align 4
  %374 = call i32 @sqlite3VdbeAddOp2(i32* %371, i32 %372, i32 %373, i32 1)
  %375 = load i32*, i32** %12, align 8
  %376 = load i32, i32* @OP_Next, align 4
  %377 = load i32, i32* %23, align 4
  %378 = load i32, i32* %20, align 4
  %379 = call i32 @sqlite3VdbeAddOp2(i32* %375, i32 %376, i32 %377, i32 %378)
  %380 = load i32*, i32** %12, align 8
  %381 = call i32 @VdbeCoverage(i32* %380)
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* %10, align 4
  %387 = call i32 @windowReturnRows(%struct.TYPE_21__* %382, %struct.TYPE_19__* %383, i32 %384, i32 %385, i32 %386, i32 0, i32 0)
  %388 = load i32*, i32** %12, align 8
  %389 = load i32, i32* %27, align 4
  %390 = call i32 @sqlite3VdbeResolveLabel(i32* %388, i32 %389)
  %391 = load i32*, i32** %12, align 8
  %392 = load i32, i32* @OP_ResetSorter, align 4
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @sqlite3VdbeAddOp1(i32* %391, i32 %392, i32 %395)
  %397 = load i32*, i32** %12, align 8
  %398 = load i32, i32* @OP_Return, align 4
  %399 = load i32, i32* %21, align 4
  %400 = call i32 @sqlite3VdbeAddOp1(i32* %397, i32 %398, i32 %399)
  %401 = load i32*, i32** %12, align 8
  %402 = load i32, i32* %19, align 4
  %403 = call i32 @sqlite3VdbeJumpHere(i32* %401, i32 %402)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_21__*) #1

declare dso_local i32 @windowPartitionCache(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @windowInitAccum(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @windowAggStep(%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @windowReturnRows(%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
