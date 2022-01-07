; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3ExprCodeIN.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3ExprCodeIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_32__*, i64, i32* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_36__ = type { %struct.TYPE_36__*, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_36__* }

@.str = private unnamed_addr constant [14 x i8] c"begin IN expr\00", align 1
@IN_INDEX_MEMBERSHIP = common dso_local global i32 0, align 4
@IN_INDEX_NOOP_OK = common dso_local global i32 0, align 4
@IN_INDEX_EPH = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_ASC = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@IN_INDEX_NOOP = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@OP_BitAnd = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i8 0, align 1
@OP_IsNull = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Affinity = common dso_local global i32 0, align 4
@OP_NotFound = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@OP_NotNull = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"end IN expr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %struct.TYPE_36__*, i32, i32)* @sqlite3ExprCodeIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3ExprCodeIN(%struct.TYPE_34__* %0, %struct.TYPE_36__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_35__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_36__*, align 8
  %34 = alloca %struct.TYPE_36__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %25, align 4
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %38, align 8
  store %struct.TYPE_36__* %39, %struct.TYPE_36__** %18, align 8
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %42 = call i64 @sqlite3ExprCheckIN(%struct.TYPE_34__* %40, %struct.TYPE_36__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %557

45:                                               ; preds = %4
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %48 = call i8* @exprINAffinity(%struct.TYPE_34__* %46, %struct.TYPE_36__* %47)
  store i8* %48, i8** %15, align 8
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %50, align 8
  %52 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_36__* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 5
  %59 = add i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i64 @sqlite3DbMallocZero(%struct.TYPE_32__* %55, i32 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %14, align 8
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  br label %546

70:                                               ; preds = %45
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @VdbeNoopComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %82 = load i32, i32* @IN_INDEX_MEMBERSHIP, align 4
  %83 = load i32, i32* @IN_INDEX_NOOP_OK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  br label %90

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %88
  %91 = phi i32* [ null, %88 ], [ %9, %89 ]
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @sqlite3FindInIndex(%struct.TYPE_34__* %80, %struct.TYPE_36__* %81, i32 %84, i32* %91, i32* %92, i32* %25)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @IN_INDEX_EPH, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @IN_INDEX_INDEX_ASC, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %112 = icmp eq i32 %110, %111
  br label %113

113:                                              ; preds = %109, %105, %101, %98, %90
  %114 = phi i1 [ true, %105 ], [ true, %101 ], [ true, %98 ], [ true, %90 ], [ %112, %109 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %119 = call i32 @exprCodeVector(%struct.TYPE_34__* %117, %struct.TYPE_36__* %118, i32* %17)
  store i32 %119, i32* %12, align 4
  store i32 0, i32* %19, align 4
  br label %120

120:                                              ; preds = %135, %113
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp eq i32 %129, %130
  br label %132

132:                                              ; preds = %124, %120
  %133 = phi i1 [ false, %120 ], [ %131, %124 ]
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %120

138:                                              ; preds = %132
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %11, align 4
  br label %170

144:                                              ; preds = %138
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @sqlite3GetTempRange(%struct.TYPE_34__* %145, i32 %146)
  store i32 %147, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %148

148:                                              ; preds = %166, %144
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* @OP_Copy, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %19, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  %165 = call i32 @sqlite3VdbeAddOp3(i32* %153, i32 %154, i32 %157, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %148

169:                                              ; preds = %148
  br label %170

170:                                              ; preds = %169, %142
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @IN_INDEX_NOOP, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %342

174:                                              ; preds = %170
  %175 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %177, align 8
  store %struct.TYPE_35__* %178, %struct.TYPE_35__** %26, align 8
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %181, align 8
  %183 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_34__* %179, %struct.TYPE_36__* %182)
  store i32* %183, i32** %27, align 8
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %185 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__* %184)
  store i32 %185, i32* %28, align 4
  store i32 0, i32* %31, align 4
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %187 = load i32, i32* @EP_xIsSelect, align 4
  %188 = call i32 @ExprHasProperty(%struct.TYPE_36__* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %174
  %197 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %198 = call i32 @sqlite3GetTempReg(%struct.TYPE_34__* %197)
  store i32 %198, i32* %31, align 4
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* @OP_BitAnd, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %31, align 4
  %204 = call i32 @sqlite3VdbeAddOp3(i32* %199, i32 %200, i32 %201, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %174
  store i32 0, i32* %32, align 4
  br label %206

206:                                              ; preds = %318, %205
  %207 = load i32, i32* %32, align 4
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %321

212:                                              ; preds = %206
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %215, align 8
  %217 = load i32, i32* %32, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %220, align 8
  %222 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_34__* %213, %struct.TYPE_36__* %221, i32* %30)
  store i32 %222, i32* %29, align 4
  %223 = load i32, i32* %31, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %212
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %227 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %227, align 8
  %229 = load i32, i32* %32, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %232, align 8
  %234 = call i64 @sqlite3ExprCanBeNull(%struct.TYPE_36__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %225
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* @OP_BitAnd, align 4
  %239 = load i32, i32* %31, align 4
  %240 = load i32, i32* %29, align 4
  %241 = load i32, i32* %31, align 4
  %242 = call i32 @sqlite3VdbeAddOp3(i32* %237, i32 %238, i32 %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %236, %225, %212
  %244 = load i32, i32* %32, align 4
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 1
  %249 = icmp slt i32 %244, %248
  br i1 %249, label %254, label %250

250:                                              ; preds = %243
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %287

254:                                              ; preds = %250, %243
  %255 = load i32*, i32** %13, align 8
  %256 = load i32, i32* @OP_Eq, align 4
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %28, align 4
  %259 = load i32, i32* %29, align 4
  %260 = load i32*, i32** %27, align 8
  %261 = bitcast i32* %260 to i8*
  %262 = load i32, i32* @P4_COLLSEQ, align 4
  %263 = call i32 @sqlite3VdbeAddOp4(i32* %255, i32 %256, i32 %257, i32 %258, i32 %259, i8* %261, i32 %262)
  %264 = load i32*, i32** %13, align 8
  %265 = load i32, i32* %32, align 4
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %268, 1
  %270 = icmp slt i32 %265, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 @VdbeCoverageIf(i32* %264, i32 %271)
  %273 = load i32*, i32** %13, align 8
  %274 = load i32, i32* %32, align 4
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, 1
  %279 = icmp eq i32 %274, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 @VdbeCoverageIf(i32* %273, i32 %280)
  %282 = load i32*, i32** %13, align 8
  %283 = load i8*, i8** %15, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i8, i8* %284, align 1
  %286 = call i32 @sqlite3VdbeChangeP5(i32* %282, i8 signext %285)
  br label %314

287:                                              ; preds = %250
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %7, align 4
  %290 = icmp eq i32 %288, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load i32*, i32** %13, align 8
  %294 = load i32, i32* @OP_Ne, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %29, align 4
  %298 = load i32*, i32** %27, align 8
  %299 = bitcast i32* %298 to i8*
  %300 = load i32, i32* @P4_COLLSEQ, align 4
  %301 = call i32 @sqlite3VdbeAddOp4(i32* %293, i32 %294, i32 %295, i32 %296, i32 %297, i8* %299, i32 %300)
  %302 = load i32*, i32** %13, align 8
  %303 = call i32 @VdbeCoverage(i32* %302)
  %304 = load i32*, i32** %13, align 8
  %305 = load i8*, i8** %15, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 0
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = load i8, i8* @SQLITE_JUMPIFNULL, align 1
  %310 = sext i8 %309 to i32
  %311 = or i32 %308, %310
  %312 = trunc i32 %311 to i8
  %313 = call i32 @sqlite3VdbeChangeP5(i32* %304, i8 signext %312)
  br label %314

314:                                              ; preds = %287, %254
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %316 = load i32, i32* %30, align 4
  %317 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_34__* %315, i32 %316)
  br label %318

318:                                              ; preds = %314
  %319 = load i32, i32* %32, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %32, align 4
  br label %206

321:                                              ; preds = %206
  %322 = load i32, i32* %31, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %335

324:                                              ; preds = %321
  %325 = load i32*, i32** %13, align 8
  %326 = load i32, i32* @OP_IsNull, align 4
  %327 = load i32, i32* %31, align 4
  %328 = load i32, i32* %8, align 4
  %329 = call i32 @sqlite3VdbeAddOp2(i32* %325, i32 %326, i32 %327, i32 %328)
  %330 = load i32*, i32** %13, align 8
  %331 = call i32 @VdbeCoverage(i32* %330)
  %332 = load i32*, i32** %13, align 8
  %333 = load i32, i32* %7, align 4
  %334 = call i32 @sqlite3VdbeGoto(i32* %332, i32 %333)
  br label %335

335:                                              ; preds = %324, %321
  %336 = load i32*, i32** %13, align 8
  %337 = load i32, i32* %28, align 4
  %338 = call i32 @sqlite3VdbeResolveLabel(i32* %336, i32 %337)
  %339 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %340 = load i32, i32* %31, align 4
  %341 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_34__* %339, i32 %340)
  br label %535

342:                                              ; preds = %170
  %343 = load i32, i32* %8, align 4
  %344 = load i32, i32* %7, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = load i32, i32* %7, align 4
  store i32 %347, i32* %20, align 4
  br label %351

348:                                              ; preds = %342
  %349 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %350 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__* %349)
  store i32 %350, i32* %21, align 4
  store i32 %350, i32* %20, align 4
  br label %351

351:                                              ; preds = %348, %346
  store i32 0, i32* %19, align 4
  br label %352

352:                                              ; preds = %376, %351
  %353 = load i32, i32* %19, align 4
  %354 = load i32, i32* %16, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %379

356:                                              ; preds = %352
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_36__*, %struct.TYPE_36__** %358, align 8
  %360 = load i32, i32* %19, align 4
  %361 = call %struct.TYPE_36__* @sqlite3VectorFieldSubexpr(%struct.TYPE_36__* %359, i32 %360)
  store %struct.TYPE_36__* %361, %struct.TYPE_36__** %33, align 8
  %362 = load %struct.TYPE_36__*, %struct.TYPE_36__** %33, align 8
  %363 = call i64 @sqlite3ExprCanBeNull(%struct.TYPE_36__* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %356
  %366 = load i32*, i32** %13, align 8
  %367 = load i32, i32* @OP_IsNull, align 4
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %368, %369
  %371 = load i32, i32* %20, align 4
  %372 = call i32 @sqlite3VdbeAddOp2(i32* %366, i32 %367, i32 %370, i32 %371)
  %373 = load i32*, i32** %13, align 8
  %374 = call i32 @VdbeCoverage(i32* %373)
  br label %375

375:                                              ; preds = %365, %356
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %19, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %19, align 4
  br label %352

379:                                              ; preds = %352
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* @IN_INDEX_ROWID, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %395

383:                                              ; preds = %379
  %384 = load i32*, i32** %13, align 8
  %385 = load i32, i32* @OP_SeekRowid, align 4
  %386 = load i32, i32* %25, align 4
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* %11, align 4
  %389 = call i32 @sqlite3VdbeAddOp3(i32* %384, i32 %385, i32 %386, i32 %387, i32 %388)
  %390 = load i32*, i32** %13, align 8
  %391 = call i32 @VdbeCoverage(i32* %390)
  %392 = load i32*, i32** %13, align 8
  %393 = load i32, i32* @OP_Goto, align 4
  %394 = call i32 @sqlite3VdbeAddOp0(i32* %392, i32 %393)
  store i32 %394, i32* %22, align 4
  br label %425

395:                                              ; preds = %379
  %396 = load i32*, i32** %13, align 8
  %397 = load i32, i32* @OP_Affinity, align 4
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %16, align 4
  %400 = load i8*, i8** %15, align 8
  %401 = load i32, i32* %16, align 4
  %402 = call i32 @sqlite3VdbeAddOp4(i32* %396, i32 %397, i32 %398, i32 %399, i32 0, i8* %400, i32 %401)
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* %8, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %416

406:                                              ; preds = %395
  %407 = load i32*, i32** %13, align 8
  %408 = load i32, i32* @OP_NotFound, align 4
  %409 = load i32, i32* %25, align 4
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* %11, align 4
  %412 = load i32, i32* %16, align 4
  %413 = call i32 @sqlite3VdbeAddOp4Int(i32* %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412)
  %414 = load i32*, i32** %13, align 8
  %415 = call i32 @VdbeCoverage(i32* %414)
  br label %535

416:                                              ; preds = %395
  %417 = load i32*, i32** %13, align 8
  %418 = load i32, i32* @OP_Found, align 4
  %419 = load i32, i32* %25, align 4
  %420 = load i32, i32* %11, align 4
  %421 = load i32, i32* %16, align 4
  %422 = call i32 @sqlite3VdbeAddOp4Int(i32* %417, i32 %418, i32 %419, i32 0, i32 %420, i32 %421)
  store i32 %422, i32* %22, align 4
  %423 = load i32*, i32** %13, align 8
  %424 = call i32 @VdbeCoverage(i32* %423)
  br label %425

425:                                              ; preds = %416, %383
  %426 = load i32, i32* %9, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %425
  %429 = load i32, i32* %16, align 4
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %439

431:                                              ; preds = %428
  %432 = load i32*, i32** %13, align 8
  %433 = load i32, i32* @OP_NotNull, align 4
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* %7, align 4
  %436 = call i32 @sqlite3VdbeAddOp2(i32* %432, i32 %433, i32 %434, i32 %435)
  %437 = load i32*, i32** %13, align 8
  %438 = call i32 @VdbeCoverage(i32* %437)
  br label %439

439:                                              ; preds = %431, %428, %425
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* %8, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  %444 = load i32*, i32** %13, align 8
  %445 = load i32, i32* %7, align 4
  %446 = call i32 @sqlite3VdbeGoto(i32* %444, i32 %445)
  br label %447

447:                                              ; preds = %443, %439
  %448 = load i32, i32* %21, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %447
  %451 = load i32*, i32** %13, align 8
  %452 = load i32, i32* %21, align 4
  %453 = call i32 @sqlite3VdbeResolveLabel(i32* %451, i32 %452)
  br label %454

454:                                              ; preds = %450, %447
  %455 = load i32*, i32** %13, align 8
  %456 = load i32, i32* @OP_Rewind, align 4
  %457 = load i32, i32* %25, align 4
  %458 = load i32, i32* %7, align 4
  %459 = call i32 @sqlite3VdbeAddOp2(i32* %455, i32 %456, i32 %457, i32 %458)
  store i32 %459, i32* %24, align 4
  %460 = load i32*, i32** %13, align 8
  %461 = call i32 @VdbeCoverage(i32* %460)
  %462 = load i32, i32* %16, align 4
  %463 = icmp sgt i32 %462, 1
  br i1 %463, label %464, label %467

464:                                              ; preds = %454
  %465 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %466 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__* %465)
  store i32 %466, i32* %23, align 4
  br label %469

467:                                              ; preds = %454
  %468 = load i32, i32* %7, align 4
  store i32 %468, i32* %23, align 4
  br label %469

469:                                              ; preds = %467, %464
  store i32 0, i32* %19, align 4
  br label %470

470:                                              ; preds = %505, %469
  %471 = load i32, i32* %19, align 4
  %472 = load i32, i32* %16, align 4
  %473 = icmp slt i32 %471, %472
  br i1 %473, label %474, label %508

474:                                              ; preds = %470
  %475 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %476 = call i32 @sqlite3GetTempReg(%struct.TYPE_34__* %475)
  store i32 %476, i32* %36, align 4
  %477 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %478 = load i32, i32* %19, align 4
  %479 = call %struct.TYPE_36__* @sqlite3VectorFieldSubexpr(%struct.TYPE_36__* %477, i32 %478)
  store %struct.TYPE_36__* %479, %struct.TYPE_36__** %34, align 8
  %480 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %481 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %482 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_34__* %480, %struct.TYPE_36__* %481)
  store i32* %482, i32** %35, align 8
  %483 = load i32*, i32** %13, align 8
  %484 = load i32, i32* @OP_Column, align 4
  %485 = load i32, i32* %25, align 4
  %486 = load i32, i32* %19, align 4
  %487 = load i32, i32* %36, align 4
  %488 = call i32 @sqlite3VdbeAddOp3(i32* %483, i32 %484, i32 %485, i32 %486, i32 %487)
  %489 = load i32*, i32** %13, align 8
  %490 = load i32, i32* @OP_Ne, align 4
  %491 = load i32, i32* %11, align 4
  %492 = load i32, i32* %19, align 4
  %493 = add nsw i32 %491, %492
  %494 = load i32, i32* %23, align 4
  %495 = load i32, i32* %36, align 4
  %496 = load i32*, i32** %35, align 8
  %497 = bitcast i32* %496 to i8*
  %498 = load i32, i32* @P4_COLLSEQ, align 4
  %499 = call i32 @sqlite3VdbeAddOp4(i32* %489, i32 %490, i32 %493, i32 %494, i32 %495, i8* %497, i32 %498)
  %500 = load i32*, i32** %13, align 8
  %501 = call i32 @VdbeCoverage(i32* %500)
  %502 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %503 = load i32, i32* %36, align 4
  %504 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_34__* %502, i32 %503)
  br label %505

505:                                              ; preds = %474
  %506 = load i32, i32* %19, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %19, align 4
  br label %470

508:                                              ; preds = %470
  %509 = load i32*, i32** %13, align 8
  %510 = load i32, i32* @OP_Goto, align 4
  %511 = load i32, i32* %8, align 4
  %512 = call i32 @sqlite3VdbeAddOp2(i32* %509, i32 %510, i32 0, i32 %511)
  %513 = load i32, i32* %16, align 4
  %514 = icmp sgt i32 %513, 1
  br i1 %514, label %515, label %531

515:                                              ; preds = %508
  %516 = load i32*, i32** %13, align 8
  %517 = load i32, i32* %23, align 4
  %518 = call i32 @sqlite3VdbeResolveLabel(i32* %516, i32 %517)
  %519 = load i32*, i32** %13, align 8
  %520 = load i32, i32* @OP_Next, align 4
  %521 = load i32, i32* %25, align 4
  %522 = load i32, i32* %24, align 4
  %523 = add nsw i32 %522, 1
  %524 = call i32 @sqlite3VdbeAddOp2(i32* %519, i32 %520, i32 %521, i32 %523)
  %525 = load i32*, i32** %13, align 8
  %526 = call i32 @VdbeCoverage(i32* %525)
  %527 = load i32*, i32** %13, align 8
  %528 = load i32, i32* @OP_Goto, align 4
  %529 = load i32, i32* %7, align 4
  %530 = call i32 @sqlite3VdbeAddOp2(i32* %527, i32 %528, i32 0, i32 %529)
  br label %531

531:                                              ; preds = %515, %508
  %532 = load i32*, i32** %13, align 8
  %533 = load i32, i32* %22, align 4
  %534 = call i32 @sqlite3VdbeJumpHere(i32* %532, i32 %533)
  br label %535

535:                                              ; preds = %531, %406, %335
  %536 = load i32, i32* %11, align 4
  %537 = load i32, i32* %12, align 4
  %538 = icmp ne i32 %536, %537
  br i1 %538, label %539, label %543

539:                                              ; preds = %535
  %540 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %541 = load i32, i32* %11, align 4
  %542 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_34__* %540, i32 %541)
  br label %543

543:                                              ; preds = %539, %535
  %544 = load i32*, i32** %13, align 8
  %545 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str.1 to i32*))
  br label %546

546:                                              ; preds = %543, %69
  %547 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %547, i32 0, i32 0
  %549 = load %struct.TYPE_32__*, %struct.TYPE_32__** %548, align 8
  %550 = load i32*, i32** %14, align 8
  %551 = call i32 (%struct.TYPE_32__*, ...) @sqlite3DbFree(%struct.TYPE_32__* %549, i32* %550)
  %552 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %552, i32 0, i32 0
  %554 = load %struct.TYPE_32__*, %struct.TYPE_32__** %553, align 8
  %555 = load i8*, i8** %15, align 8
  %556 = call i32 (%struct.TYPE_32__*, ...) @sqlite3DbFree(%struct.TYPE_32__* %554, i8* %555)
  br label %557

557:                                              ; preds = %546, %44
  ret void
}

declare dso_local i64 @sqlite3ExprCheckIN(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i8* @exprINAffinity(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_36__*) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VdbeNoopComment(i32*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_34__*, %struct.TYPE_36__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @exprCodeVector(%struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_34__*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3ExprCodeTemp(%struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @sqlite3ExprCanBeNull(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i8 signext) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local %struct.TYPE_36__* @sqlite3VectorFieldSubexpr(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_32__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
