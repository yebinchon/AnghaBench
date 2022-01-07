; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowCodeOp.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowCodeOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32*, %struct.TYPE_17__*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@TK_ROWS = common dso_local global i64 0, align 8
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@TK_RANGE = common dso_local global i64 0, align 8
@WINDOW_AGGSTEP = common dso_local global i32 0, align 4
@TK_FOLLOWING = common dso_local global i64 0, align 8
@OP_Le = common dso_local global i32 0, align 4
@OP_Ge = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@OP_IfPos = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OPFLAG_SAVEPOSITION = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32)* @windowCodeOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @windowCodeOp(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %13, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_ROWS, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @sqlite3VdbeMakeLabel(i32* %39)
  store i32 %40, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %59

43:                                               ; preds = %4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TK_UNBOUNDED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i32 0, i32* %5, align 4
  br label %357

59:                                               ; preds = %43, %4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %59
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TK_RANGE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %62
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @sqlite3VdbeCurrentAddr(i32* %69)
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @WINDOW_AGGSTEP, align 4
  %76 = icmp eq i32 %74, %75
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi i1 [ true, %68 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 129
  br i1 %82, label %83, label %118

83:                                               ; preds = %77
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TK_FOLLOWING, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = load i32, i32* @OP_Le, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @windowCodeRangeTest(%struct.TYPE_16__* %90, i32 %91, i32 %95, i32 %96, i32 %100, i32 %101)
  br label %117

103:                                              ; preds = %83
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = load i32, i32* @OP_Ge, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @windowCodeRangeTest(%struct.TYPE_16__* %104, i32 %105, i32 %109, i32 %110, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %103, %89
  br label %132

118:                                              ; preds = %77
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = load i32, i32* @OP_Gt, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @windowCodeRangeTest(%struct.TYPE_16__* %119, i32 %120, i32 %124, i32 %125, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %118, %117
  br label %140

133:                                              ; preds = %62
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* @OP_IfPos, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @sqlite3VdbeAddOp3(i32* %134, i32 %135, i32 %136, i32 0, i32 1)
  store i32 %137, i32* %16, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @VdbeCoverage(i32* %138)
  br label %140

140:                                              ; preds = %133, %132
  br label %141

141:                                              ; preds = %140, %59
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = call i32 @windowAggFinal(%struct.TYPE_16__* %150, i32 0)
  br label %152

152:                                              ; preds = %149, %144, %141
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @sqlite3VdbeCurrentAddr(i32* %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %7, align 4
  switch i32 %155, label %201 [
    i32 128, label %156
    i32 129, label %167
  ]

156:                                              ; preds = %152
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %10, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %11, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = call i32 @windowReturnOneRow(%struct.TYPE_16__* %165)
  br label %239

167:                                              ; preds = %152
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %10, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %11, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %167
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @assert(i32 %183)
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* @OP_AddImm, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @sqlite3VdbeAddOp2(i32* %185, i32 %186, i32 %190, i32 1)
  br label %200

192:                                              ; preds = %167
  %193 = load i32*, i32** %12, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @windowAggStep(i32* %193, %struct.TYPE_17__* %194, i32 %195, i32 1, i32 %198)
  br label %200

200:                                              ; preds = %192, %180
  br label %239

201:                                              ; preds = %152
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @WINDOW_AGGSTEP, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %10, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %11, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %201
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @assert(i32 %222)
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* @OP_AddImm, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @sqlite3VdbeAddOp2(i32* %224, i32 %225, i32 %228, i32 1)
  br label %238

230:                                              ; preds = %201
  %231 = load i32*, i32** %12, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @windowAggStep(i32* %231, %struct.TYPE_17__* %232, i32 %233, i32 0, i32 %236)
  br label %238

238:                                              ; preds = %230, %219
  br label %239

239:                                              ; preds = %238, %200, %156
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %239
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* @OP_Delete, align 4
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @sqlite3VdbeAddOp1(i32* %246, i32 %247, i32 %248)
  %250 = load i32*, i32** %15, align 8
  %251 = load i32, i32* @OPFLAG_SAVEPOSITION, align 4
  %252 = call i32 @sqlite3VdbeChangeP5(i32* %250, i32 %251)
  br label %253

253:                                              ; preds = %245, %239
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253
  %257 = load i32*, i32** %15, align 8
  %258 = load i32, i32* @OP_Next, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i32*, i32** %15, align 8
  %261 = call i32 @sqlite3VdbeCurrentAddr(i32* %260)
  %262 = add nsw i32 %261, 2
  %263 = call i32 @sqlite3VdbeAddOp2(i32* %257, i32 %258, i32 %259, i32 %262)
  %264 = load i32*, i32** %15, align 8
  %265 = call i32 @VdbeCoverage(i32* %264)
  %266 = load i32*, i32** %15, align 8
  %267 = load i32, i32* @OP_Goto, align 4
  %268 = call i32 @sqlite3VdbeAddOp0(i32* %266, i32 %267)
  store i32 %268, i32* %14, align 4
  br label %288

269:                                              ; preds = %253
  %270 = load i32*, i32** %15, align 8
  %271 = load i32, i32* @OP_Next, align 4
  %272 = load i32, i32* %10, align 4
  %273 = load i32*, i32** %15, align 8
  %274 = call i32 @sqlite3VdbeCurrentAddr(i32* %273)
  %275 = add nsw i32 %274, 1
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %275, %276
  %278 = call i32 @sqlite3VdbeAddOp2(i32* %270, i32 %271, i32 %272, i32 %277)
  %279 = load i32*, i32** %15, align 8
  %280 = call i32 @VdbeCoverage(i32* %279)
  %281 = load i32, i32* %19, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %269
  %284 = load i32*, i32** %15, align 8
  %285 = load i32, i32* @OP_Goto, align 4
  %286 = call i32 @sqlite3VdbeAddOp0(i32* %284, i32 %285)
  store i32 %286, i32* %18, align 4
  br label %287

287:                                              ; preds = %283, %269
  br label %288

288:                                              ; preds = %287, %256
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %330

291:                                              ; preds = %288
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 4
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %293, align 8
  %295 = icmp ne %struct.TYPE_18__* %294, null
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  br label %303

302:                                              ; preds = %291
  br label %303

303:                                              ; preds = %302, %296
  %304 = phi i32 [ %301, %296 ], [ 0, %302 ]
  store i32 %304, i32* %22, align 4
  %305 = load i32, i32* %22, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = load i32*, i32** %12, align 8
  %309 = load i32, i32* %22, align 4
  %310 = call i32 @sqlite3GetTempRange(i32* %308, i32 %309)
  br label %312

311:                                              ; preds = %303
  br label %312

312:                                              ; preds = %311, %307
  %313 = phi i32 [ %310, %307 ], [ 0, %311 ]
  store i32 %313, i32* %23, align 4
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* %23, align 4
  %317 = call i32 @windowReadPeerValues(%struct.TYPE_16__* %314, i32 %315, i32 %316)
  %318 = load i32*, i32** %12, align 8
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 4
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = load i32, i32* %23, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %17, align 4
  %325 = call i32 @windowIfNewPeer(i32* %318, %struct.TYPE_18__* %321, i32 %322, i32 %323, i32 %324)
  %326 = load i32*, i32** %12, align 8
  %327 = load i32, i32* %23, align 4
  %328 = load i32, i32* %22, align 4
  %329 = call i32 @sqlite3ReleaseTempRange(i32* %326, i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %312, %288
  %331 = load i32, i32* %21, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = load i32*, i32** %15, align 8
  %335 = load i32, i32* @OP_Goto, align 4
  %336 = load i32, i32* %21, align 4
  %337 = call i32 @sqlite3VdbeAddOp2(i32* %334, i32 %335, i32 0, i32 %336)
  br label %338

338:                                              ; preds = %333, %330
  %339 = load i32*, i32** %15, align 8
  %340 = load i32, i32* %20, align 4
  %341 = call i32 @sqlite3VdbeResolveLabel(i32* %339, i32 %340)
  %342 = load i32, i32* %18, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %338
  %345 = load i32*, i32** %15, align 8
  %346 = load i32, i32* %18, align 4
  %347 = call i32 @sqlite3VdbeJumpHere(i32* %345, i32 %346)
  br label %348

348:                                              ; preds = %344, %338
  %349 = load i32, i32* %16, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = load i32*, i32** %15, align 8
  %353 = load i32, i32* %16, align 4
  %354 = call i32 @sqlite3VdbeJumpHere(i32* %352, i32 %353)
  br label %355

355:                                              ; preds = %351, %348
  %356 = load i32, i32* %14, align 4
  store i32 %356, i32* %5, align 4
  br label %357

357:                                              ; preds = %355, %55
  %358 = load i32, i32* %5, align 4
  ret i32 %358
}

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @windowCodeRangeTest(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @windowAggFinal(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @windowReturnOneRow(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @windowAggStep(i32*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(i32*, i32) #1

declare dso_local i32 @windowReadPeerValues(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @windowIfNewPeer(i32*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
