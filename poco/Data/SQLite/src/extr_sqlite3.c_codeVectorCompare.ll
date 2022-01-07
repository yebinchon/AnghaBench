; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_codeVectorCompare.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_codeVectorCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [18 x i8] c"row value misused\00", align 1
@TK_EQ = common dso_local global i64 0, align 8
@TK_NE = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@TK_ISNOT = common dso_local global i64 0, align 8
@TK_LT = common dso_local global i64 0, align 8
@TK_GT = common dso_local global i64 0, align 8
@TK_LE = common dso_local global i64 0, align 8
@TK_GE = common dso_local global i64 0, align 8
@SQLITE_NULLEQ = common dso_local global i64 0, align 8
@SQLITE_STOREP2 = common dso_local global i64 0, align 8
@OP_Lt = common dso_local global i64 0, align 8
@OP_Le = common dso_local global i64 0, align 8
@OP_Gt = common dso_local global i64 0, align 8
@OP_Ge = common dso_local global i64 0, align 8
@OP_Eq = common dso_local global i64 0, align 8
@OP_Ne = common dso_local global i64 0, align 8
@OP_IfNot = common dso_local global i32 0, align 4
@SQLITE_KEEPNULL = common dso_local global i64 0, align 8
@OP_If = common dso_local global i32 0, align 4
@OP_ElseNotEq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i64, i64)* @codeVectorCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeVectorCompare(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %12, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %13, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %36 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_18__* %35)
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %18, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_17__* %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_18__* %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = call i32 @sqlite3ErrorMsg(%struct.TYPE_17__* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %378

47:                                               ; preds = %5
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TK_EQ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %95, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TK_NE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %95, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TK_IS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %95, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TK_ISNOT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TK_LT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TK_GT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TK_LE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TK_GE, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %89, %83, %77, %71, %65, %59, %53, %47
  %96 = phi i1 [ true, %83 ], [ true, %77 ], [ true, %71 ], [ true, %65 ], [ true, %59 ], [ true, %53 ], [ true, %47 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %126, label %104

104:                                              ; preds = %95
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TK_IS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @TK_EQ, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %110, %104
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TK_ISNOT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @TK_NE, align 8
  %123 = icmp eq i64 %121, %122
  br label %124

124:                                              ; preds = %120, %114
  %125 = phi i1 [ false, %114 ], [ %123, %120 ]
  br label %126

126:                                              ; preds = %124, %110, %95
  %127 = phi i1 [ true, %110 ], [ true, %95 ], [ %125, %124 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i64, i64* %10, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %135, %136
  br label %138

138:                                              ; preds = %132, %126
  %139 = phi i1 [ true, %126 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @SQLITE_NULLEQ, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp eq i64 %148, %149
  br label %151

151:                                              ; preds = %145, %138
  %152 = phi i1 [ true, %138 ], [ %150, %145 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i64, i64* @SQLITE_STOREP2, align 8
  %156 = load i64, i64* %10, align 8
  %157 = or i64 %156, %155
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %18, align 8
  %159 = load i64, i64* @TK_LE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i64, i64* @TK_LT, align 8
  store i64 %162, i64* %18, align 8
  br label %163

163:                                              ; preds = %161, %151
  %164 = load i64, i64* %18, align 8
  %165 = load i64, i64* @TK_GE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i64, i64* @TK_GT, align 8
  store i64 %168, i64* %18, align 8
  br label %169

169:                                              ; preds = %167, %163
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %172 = call i32 @exprCodeSubselect(%struct.TYPE_17__* %170, %struct.TYPE_18__* %171)
  store i32 %172, i32* %16, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %175 = call i32 @exprCodeSubselect(%struct.TYPE_17__* %173, %struct.TYPE_18__* %174)
  store i32 %175, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %176

176:                                              ; preds = %371, %169
  br i1 true, label %177, label %374

177:                                              ; preds = %176
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp slt i32 %181, %182
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i1 [ false, %177 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @exprVectorRegister(%struct.TYPE_17__* %188, %struct.TYPE_18__* %189, i32 %190, i32 %191, %struct.TYPE_18__** %22, i32* %20)
  store i32 %192, i32* %24, align 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %17, align 4
  %197 = call i32 @exprVectorRegister(%struct.TYPE_17__* %193, %struct.TYPE_18__* %194, i32 %195, i32 %196, %struct.TYPE_18__** %23, i32* %21)
  store i32 %197, i32* %25, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load i32, i32* %24, align 4
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @codeCompare(%struct.TYPE_17__* %198, %struct.TYPE_18__* %199, %struct.TYPE_18__* %200, i64 %201, i32 %202, i32 %203, i32 %204, i64 %205)
  %207 = load i64, i64* %9, align 8
  %208 = load i64, i64* @OP_Lt, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @testcase(i32 %210)
  %212 = load i32*, i32** %11, align 8
  %213 = load i64, i64* %9, align 8
  %214 = load i64, i64* @OP_Lt, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @VdbeCoverageIf(i32* %212, i32 %216)
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* @OP_Le, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @testcase(i32 %221)
  %223 = load i32*, i32** %11, align 8
  %224 = load i64, i64* %9, align 8
  %225 = load i64, i64* @OP_Le, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @VdbeCoverageIf(i32* %223, i32 %227)
  %229 = load i64, i64* %9, align 8
  %230 = load i64, i64* @OP_Gt, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @testcase(i32 %232)
  %234 = load i32*, i32** %11, align 8
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* @OP_Gt, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @VdbeCoverageIf(i32* %234, i32 %238)
  %240 = load i64, i64* %9, align 8
  %241 = load i64, i64* @OP_Ge, align 8
  %242 = icmp eq i64 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @testcase(i32 %243)
  %245 = load i32*, i32** %11, align 8
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* @OP_Ge, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @VdbeCoverageIf(i32* %245, i32 %249)
  %251 = load i64, i64* %9, align 8
  %252 = load i64, i64* @OP_Eq, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @testcase(i32 %254)
  %256 = load i32*, i32** %11, align 8
  %257 = load i64, i64* %9, align 8
  %258 = load i64, i64* @OP_Eq, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @VdbeCoverageIf(i32* %256, i32 %260)
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* @OP_Ne, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @testcase(i32 %265)
  %267 = load i32*, i32** %11, align 8
  %268 = load i64, i64* %9, align 8
  %269 = load i64, i64* @OP_Ne, align 8
  %270 = icmp eq i64 %268, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 @VdbeCoverageIf(i32* %267, i32 %271)
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %273, i32 %274)
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %277 = load i32, i32* %21, align 4
  %278 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %276, i32 %277)
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %14, align 4
  %281 = sub nsw i32 %280, 1
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %184
  br label %374

284:                                              ; preds = %184
  %285 = load i64, i64* %18, align 8
  %286 = load i64, i64* @TK_EQ, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %299

288:                                              ; preds = %284
  %289 = load i32*, i32** %11, align 8
  %290 = load i32, i32* @OP_IfNot, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %19, align 4
  %293 = call i32 @sqlite3VdbeAddOp2(i32* %289, i32 %290, i32 %291, i32 %292)
  %294 = load i32*, i32** %11, align 8
  %295 = call i32 @VdbeCoverage(i32* %294)
  %296 = load i64, i64* @SQLITE_KEEPNULL, align 8
  %297 = load i64, i64* %10, align 8
  %298 = or i64 %297, %296
  store i64 %298, i64* %10, align 8
  br label %370

299:                                              ; preds = %284
  %300 = load i64, i64* %18, align 8
  %301 = load i64, i64* @TK_NE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %314

303:                                              ; preds = %299
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* @OP_If, align 4
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %19, align 4
  %308 = call i32 @sqlite3VdbeAddOp2(i32* %304, i32 %305, i32 %306, i32 %307)
  %309 = load i32*, i32** %11, align 8
  %310 = call i32 @VdbeCoverage(i32* %309)
  %311 = load i64, i64* @SQLITE_KEEPNULL, align 8
  %312 = load i64, i64* %10, align 8
  %313 = or i64 %312, %311
  store i64 %313, i64* %10, align 8
  br label %369

314:                                              ; preds = %299
  %315 = load i64, i64* %9, align 8
  %316 = load i64, i64* @TK_LT, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %330, label %318

318:                                              ; preds = %314
  %319 = load i64, i64* %9, align 8
  %320 = load i64, i64* @TK_GT, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %330, label %322

322:                                              ; preds = %318
  %323 = load i64, i64* %9, align 8
  %324 = load i64, i64* @TK_LE, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %330, label %326

326:                                              ; preds = %322
  %327 = load i64, i64* %9, align 8
  %328 = load i64, i64* @TK_GE, align 8
  %329 = icmp eq i64 %327, %328
  br label %330

330:                                              ; preds = %326, %322, %318, %314
  %331 = phi i1 [ true, %322 ], [ true, %318 ], [ true, %314 ], [ %329, %326 ]
  %332 = zext i1 %331 to i32
  %333 = call i32 @assert(i32 %332)
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* @OP_ElseNotEq, align 4
  %336 = load i32, i32* %19, align 4
  %337 = call i32 @sqlite3VdbeAddOp2(i32* %334, i32 %335, i32 0, i32 %336)
  %338 = load i32*, i32** %11, align 8
  %339 = load i64, i64* %9, align 8
  %340 = load i64, i64* @TK_LT, align 8
  %341 = icmp eq i64 %339, %340
  %342 = zext i1 %341 to i32
  %343 = call i32 @VdbeCoverageIf(i32* %338, i32 %342)
  %344 = load i32*, i32** %11, align 8
  %345 = load i64, i64* %9, align 8
  %346 = load i64, i64* @TK_GT, align 8
  %347 = icmp eq i64 %345, %346
  %348 = zext i1 %347 to i32
  %349 = call i32 @VdbeCoverageIf(i32* %344, i32 %348)
  %350 = load i32*, i32** %11, align 8
  %351 = load i64, i64* %9, align 8
  %352 = load i64, i64* @TK_LE, align 8
  %353 = icmp eq i64 %351, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 @VdbeCoverageIf(i32* %350, i32 %354)
  %356 = load i32*, i32** %11, align 8
  %357 = load i64, i64* %9, align 8
  %358 = load i64, i64* @TK_GE, align 8
  %359 = icmp eq i64 %357, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @VdbeCoverageIf(i32* %356, i32 %360)
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %14, align 4
  %364 = sub nsw i32 %363, 2
  %365 = icmp eq i32 %362, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %330
  %367 = load i64, i64* %9, align 8
  store i64 %367, i64* %18, align 8
  br label %368

368:                                              ; preds = %366, %330
  br label %369

369:                                              ; preds = %368, %303
  br label %370

370:                                              ; preds = %369, %288
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %15, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %15, align 4
  br label %176

374:                                              ; preds = %283, %176
  %375 = load i32*, i32** %11, align 8
  %376 = load i32, i32* %19, align 4
  %377 = call i32 @sqlite3VdbeResolveLabel(i32* %375, i32 %376)
  br label %378

378:                                              ; preds = %374, %44
  ret void
}

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @exprCodeSubselect(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @exprVectorRegister(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_18__**, i32*) #1

declare dso_local i32 @codeCompare(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
