; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_fkScanChildren.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_fkScanChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32* }
%struct.TYPE_31__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_34__ = type { i32, i32*, %struct.TYPE_30__* }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_30__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_31__* }

@OP_FkIfZero = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_NOT = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_34__*, %struct.TYPE_35__*, i32*, i32, i32)* @fkScanChildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fkScanChildren(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_30__* %2, %struct.TYPE_34__* %3, %struct.TYPE_35__* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_33__, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_34__*, align 8
  %35 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %11, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %12, align 8
  store %struct.TYPE_35__* %4, %struct.TYPE_35__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %17, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %22, align 4
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %40 = call i32* @sqlite3GetVdbe(%struct.TYPE_32__* %39)
  store i32* %40, i32** %23, align 8
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %42 = icmp eq %struct.TYPE_34__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %48 = icmp eq %struct.TYPE_30__* %46, %47
  br label %49

49:                                               ; preds = %43, %8
  %50 = phi i1 [ true, %8 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %54 = icmp eq %struct.TYPE_34__* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br label %63

63:                                               ; preds = %55, %49
  %64 = phi i1 [ true, %49 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %68 = icmp ne %struct.TYPE_34__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br label %74

74:                                               ; preds = %69, %63
  %75 = phi i1 [ true, %63 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %79 = icmp ne %struct.TYPE_34__* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %82 = call i64 @HasRowid(%struct.TYPE_30__* %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %74
  %85 = phi i1 [ true, %74 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load i32*, i32** %23, align 8
  %92 = load i32, i32* @OP_FkIfZero, align 4
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sqlite3VdbeAddOp2(i32* %91, i32 %92, i32 %95, i32 0)
  store i32 %96, i32* %22, align 4
  %97 = load i32*, i32** %23, align 8
  %98 = call i32 @VdbeCoverage(i32* %97)
  br label %99

99:                                               ; preds = %90, %84
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %170, %99
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %173

106:                                              ; preds = %100
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %108 = icmp ne %struct.TYPE_34__* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  br label %118

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %109
  %119 = phi i32 [ %116, %109 ], [ -1, %117 ]
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %27, align 8
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i64, i64* %27, align 8
  %125 = call i32* @exprTableRegister(%struct.TYPE_32__* %121, %struct.TYPE_30__* %122, i32 %123, i64 %124)
  store i32* %125, i32** %24, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %118
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  br label %141

134:                                              ; preds = %118
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  br label %141

141:                                              ; preds = %134, %128
  %142 = phi i32 [ %133, %128 ], [ %140, %134 ]
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %27, align 8
  %144 = load i64, i64* %27, align 8
  %145 = icmp uge i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %151, align 8
  %153 = load i64, i64* %27, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %28, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32, i32* @TK_ID, align 4
  %159 = load i8*, i8** %28, align 8
  %160 = call i32* @sqlite3Expr(i32* %157, i32 %158, i8* %159)
  store i32* %160, i32** %25, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %162 = load i32, i32* @TK_EQ, align 4
  %163 = load i32*, i32** %24, align 8
  %164 = load i32*, i32** %25, align 8
  %165 = call i32* @sqlite3PExpr(%struct.TYPE_32__* %161, i32 %162, i32* %163, i32* %164)
  store i32* %165, i32** %26, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = load i32*, i32** %19, align 8
  %168 = load i32*, i32** %26, align 8
  %169 = call i32* @sqlite3ExprAnd(i32* %166, i32* %167, i32* %168)
  store i32* %169, i32** %19, align 8
  br label %170

170:                                              ; preds = %141
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %100

173:                                              ; preds = %100
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %176, align 8
  %178 = icmp eq %struct.TYPE_30__* %174, %177
  br i1 %178, label %179, label %268

179:                                              ; preds = %173
  %180 = load i32, i32* %16, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %268

182:                                              ; preds = %179
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %184 = call i64 @HasRowid(%struct.TYPE_30__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i32* @exprTableRegister(%struct.TYPE_32__* %187, %struct.TYPE_30__* %188, i32 %189, i64 -1)
  store i32* %190, i32** %30, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32* @exprTableColumn(i32* %191, %struct.TYPE_30__* %192, i32 %198, i64 -1)
  store i32* %199, i32** %31, align 8
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %201 = load i32, i32* @TK_NE, align 4
  %202 = load i32*, i32** %30, align 8
  %203 = load i32*, i32** %31, align 8
  %204 = call i32* @sqlite3PExpr(%struct.TYPE_32__* %200, i32 %201, i32* %202, i32* %203)
  store i32* %204, i32** %29, align 8
  br label %263

205:                                              ; preds = %182
  store i32* null, i32** %33, align 8
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %207 = call %struct.TYPE_34__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__* %206)
  store %struct.TYPE_34__* %207, %struct.TYPE_34__** %34, align 8
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %209 = icmp ne %struct.TYPE_34__* %208, null
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  store i32 0, i32* %18, align 4
  br label %212

212:                                              ; preds = %255, %205
  %213 = load i32, i32* %18, align 4
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %258

218:                                              ; preds = %212
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %35, align 8
  %227 = load i64, i64* %35, align 8
  %228 = icmp uge i64 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %233 = load i32, i32* %15, align 4
  %234 = load i64, i64* %35, align 8
  %235 = call i32* @exprTableRegister(%struct.TYPE_32__* %231, %struct.TYPE_30__* %232, i32 %233, i64 %234)
  store i32* %235, i32** %30, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i64, i64* %35, align 8
  %245 = call i32* @exprTableColumn(i32* %236, %struct.TYPE_30__* %237, i32 %243, i64 %244)
  store i32* %245, i32** %31, align 8
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %247 = load i32, i32* @TK_EQ, align 4
  %248 = load i32*, i32** %30, align 8
  %249 = load i32*, i32** %31, align 8
  %250 = call i32* @sqlite3PExpr(%struct.TYPE_32__* %246, i32 %247, i32* %248, i32* %249)
  store i32* %250, i32** %32, align 8
  %251 = load i32*, i32** %17, align 8
  %252 = load i32*, i32** %33, align 8
  %253 = load i32*, i32** %32, align 8
  %254 = call i32* @sqlite3ExprAnd(i32* %251, i32* %252, i32* %253)
  store i32* %254, i32** %33, align 8
  br label %255

255:                                              ; preds = %218
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  br label %212

258:                                              ; preds = %212
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %260 = load i32, i32* @TK_NOT, align 4
  %261 = load i32*, i32** %33, align 8
  %262 = call i32* @sqlite3PExpr(%struct.TYPE_32__* %259, i32 %260, i32* %261, i32* null)
  store i32* %262, i32** %29, align 8
  br label %263

263:                                              ; preds = %258, %186
  %264 = load i32*, i32** %17, align 8
  %265 = load i32*, i32** %19, align 8
  %266 = load i32*, i32** %29, align 8
  %267 = call i32* @sqlite3ExprAnd(i32* %264, i32* %265, i32* %266)
  store i32* %267, i32** %19, align 8
  br label %268

268:                                              ; preds = %263, %179, %173
  %269 = call i32 @memset(%struct.TYPE_33__* %20, i32 0, i32 16)
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 1
  store %struct.TYPE_31__* %270, %struct.TYPE_31__** %271, align 8
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  store %struct.TYPE_32__* %272, %struct.TYPE_32__** %273, align 8
  %274 = load i32*, i32** %19, align 8
  %275 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_33__* %20, i32* %274)
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %278 = load i32*, i32** %19, align 8
  %279 = call i32* @sqlite3WhereBegin(%struct.TYPE_32__* %276, %struct.TYPE_31__* %277, i32* %278, i32 0, i32 0, i32 0, i32 0)
  store i32* %279, i32** %21, align 8
  %280 = load i32*, i32** %23, align 8
  %281 = load i32, i32* @OP_FkCounter, align 4
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %16, align 4
  %286 = call i32 @sqlite3VdbeAddOp2(i32* %280, i32 %281, i32 %284, i32 %285)
  %287 = load i32*, i32** %21, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %268
  %290 = load i32*, i32** %21, align 8
  %291 = call i32 @sqlite3WhereEnd(i32* %290)
  br label %292

292:                                              ; preds = %289, %268
  %293 = load i32*, i32** %17, align 8
  %294 = load i32*, i32** %19, align 8
  %295 = call i32 @sqlite3ExprDelete(i32* %293, i32* %294)
  %296 = load i32, i32* %22, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %292
  %299 = load i32*, i32** %23, align 8
  %300 = load i32, i32* %22, align 4
  %301 = call i32 @sqlite3VdbeJumpHere(i32* %299, i32 %300)
  br label %302

302:                                              ; preds = %298, %292
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_32__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @HasRowid(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32* @exprTableRegister(%struct.TYPE_32__*, %struct.TYPE_30__*, i32, i64) #1

declare dso_local i32* @sqlite3Expr(i32*, i32, i8*) #1

declare dso_local i32* @sqlite3PExpr(%struct.TYPE_32__*, i32, i32*, i32*) #1

declare dso_local i32* @sqlite3ExprAnd(i32*, i32*, i32*) #1

declare dso_local i32* @exprTableColumn(i32*, %struct.TYPE_30__*, i32, i64) #1

declare dso_local %struct.TYPE_34__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__*) #1

declare dso_local i32 @memset(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_33__*, i32*) #1

declare dso_local i32* @sqlite3WhereBegin(%struct.TYPE_32__*, %struct.TYPE_31__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
