; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_generateSortTail.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_generateSortTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, i32, i32* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.ExprList_item* }
%struct.ExprList_item = type { i64, i64, %struct.TYPE_29__, i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__*, %struct.TYPE_26__* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32 }

@OP_Gosub = common dso_local global i32 0, align 4
@SRT_Output = common dso_local global i32 0, align 4
@SRT_Coroutine = common dso_local global i32 0, align 4
@SORTFLAG_UseSorter = common dso_local global i32 0, align 4
@OP_Once = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@OP_SorterSort = common dso_local global i32 0, align 4
@OP_SorterData = common dso_local global i32 0, align 4
@OP_Sort = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@OP_SorterNext = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@OP_IdxLE = common dso_local global i32 0, align 4
@OP_NullRow = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@OP_SeekGE = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_33__*, i32, %struct.TYPE_34__*)* @generateSortTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSortTail(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1, %struct.TYPE_33__* %2, i32 %3, %struct.TYPE_34__* %4) #0 {
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_26__*, align 8
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
  %28 = alloca %struct.ExprList_item*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_34__* %4, %struct.TYPE_34__** %10, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %38 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_36__* %37)
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %17, align 8
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  store i32 0, i32* %27, align 4
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 0
  %52 = load %struct.ExprList_item*, %struct.ExprList_item** %51, align 8
  store %struct.ExprList_item* %52, %struct.ExprList_item** %28, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %5
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @OP_Gosub, align 4
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sqlite3VdbeAddOp2(i32* %62, i32 %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @sqlite3VdbeGoto(i32* %71, i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sqlite3VdbeResolveLabel(i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %61, %5
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @SRT_Output, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @SRT_Coroutine, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %91, 130
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %86, %79
  store i32 0, i32* %21, align 4
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  br label %113

97:                                               ; preds = %90
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %99 = call i32 @sqlite3GetTempReg(%struct.TYPE_36__* %98)
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp eq i32 %100, 131
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %18, align 4
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %97
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %107 = call i32 @sqlite3GetTempReg(%struct.TYPE_36__* %106)
  store i32 %107, i32* %20, align 4
  store i32 0, i32* %9, align 4
  br label %112

108:                                              ; preds = %102
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @sqlite3GetTempRange(%struct.TYPE_36__* %109, i32 %110)
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %108, %105
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %23, align 4
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %185

127:                                              ; preds = %113
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  store i32 %131, i32* %29, align 4
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  store i32 %134, i32* %24, align 4
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %127
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* @OP_Once, align 4
  %143 = call i32 @sqlite3VdbeAddOp0(i32* %141, i32 %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @VdbeCoverage(i32* %144)
  br label %146

146:                                              ; preds = %140, %127
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* @OP_OpenPseudo, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %29, align 4
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %27, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @sqlite3VdbeAddOp3(i32* %147, i32 %148, i32 %149, i32 %150, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %146
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @sqlite3VdbeJumpHere(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %146
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* @OP_SorterSort, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @sqlite3VdbeAddOp2(i32* %165, i32 %166, i32 %167, i32 %168)
  %170 = add nsw i32 1, %169
  store i32 %170, i32* %14, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @VdbeCoverage(i32* %171)
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @codeOffset(i32* %173, i32 %176, i32 %177)
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* @OP_SorterData, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %24, align 4
  %184 = call i32 @sqlite3VdbeAddOp3(i32* %179, i32 %180, i32 %181, i32 %182, i32 %183)
  store i32 0, i32* %26, align 4
  br label %201

185:                                              ; preds = %113
  %186 = load i32*, i32** %11, align 8
  %187 = load i32, i32* @OP_Sort, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @sqlite3VdbeAddOp2(i32* %186, i32 %187, i32 %188, i32 %189)
  %191 = add nsw i32 1, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @VdbeCoverage(i32* %192)
  %194 = load i32*, i32** %11, align 8
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @codeOffset(i32* %194, i32 %197, i32 %198)
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %24, align 4
  store i32 1, i32* %26, align 4
  br label %201

201:                                              ; preds = %185, %164
  store i32 0, i32* %25, align 4
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %26, align 4
  %204 = add nsw i32 %202, %203
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %22, align 4
  br label %206

206:                                              ; preds = %224, %201
  %207 = load i32, i32* %25, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %227

210:                                              ; preds = %206
  %211 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %212 = load i32, i32* %25, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %211, i64 %213
  %215 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %210
  %221 = load i32, i32* %22, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %22, align 4
  br label %223

223:                                              ; preds = %220, %210
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %25, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %25, align 4
  br label %206

227:                                              ; preds = %206
  %228 = load i32, i32* %9, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %25, align 4
  br label %230

230:                                              ; preds = %292, %227
  %231 = load i32, i32* %25, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %295

233:                                              ; preds = %230
  %234 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %235 = load i32, i32* %25, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %234, i64 %236
  %238 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %233
  %244 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %245 = load i32, i32* %25, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %244, i64 %246
  %248 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %251, 1
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %30, align 4
  br label %257

254:                                              ; preds = %233
  %255 = load i32, i32* %22, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %22, align 4
  store i32 %255, i32* %30, align 4
  br label %257

257:                                              ; preds = %254, %243
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* @OP_Column, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %30, align 4
  %262 = load i32, i32* %20, align 4
  %263 = load i32, i32* %25, align 4
  %264 = add nsw i32 %262, %263
  %265 = call i32 @sqlite3VdbeAddOp3(i32* %258, i32 %259, i32 %260, i32 %261, i32 %264)
  %266 = load i32*, i32** %11, align 8
  %267 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %268 = load i32, i32* %25, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %267, i64 %269
  %271 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %257
  %275 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %276 = load i32, i32* %25, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %275, i64 %277
  %279 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  br label %288

281:                                              ; preds = %257
  %282 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %283 = load i32, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %282, i64 %284
  %286 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  br label %288

288:                                              ; preds = %281, %274
  %289 = phi i64 [ %280, %274 ], [ %287, %281 ]
  %290 = inttoptr i64 %289 to i32*
  %291 = call i32 @VdbeComment(i32* %290)
  br label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %25, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %25, align 4
  br label %230

295:                                              ; preds = %230
  %296 = load i32, i32* %18, align 4
  switch i32 %296, label %347 [
    i32 128, label %297
    i32 131, label %297
    i32 129, label %320
    i32 130, label %346
  ]

297:                                              ; preds = %295, %295
  %298 = load i32*, i32** %11, align 8
  %299 = load i32, i32* @OP_Column, align 4
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* %23, align 4
  %302 = load i32, i32* %26, align 4
  %303 = add nsw i32 %301, %302
  %304 = load i32, i32* %20, align 4
  %305 = call i32 @sqlite3VdbeAddOp3(i32* %298, i32 %299, i32 %300, i32 %303, i32 %304)
  %306 = load i32*, i32** %11, align 8
  %307 = load i32, i32* @OP_NewRowid, align 4
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* %21, align 4
  %310 = call i32 @sqlite3VdbeAddOp2(i32* %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32*, i32** %11, align 8
  %312 = load i32, i32* @OP_Insert, align 4
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* %20, align 4
  %315 = load i32, i32* %21, align 4
  %316 = call i32 @sqlite3VdbeAddOp3(i32* %311, i32 %312, i32 %313, i32 %314, i32 %315)
  %317 = load i32*, i32** %11, align 8
  %318 = load i32, i32* @OPFLAG_APPEND, align 4
  %319 = call i32 @sqlite3VdbeChangeP5(i32* %317, i32 %318)
  br label %388

320:                                              ; preds = %295
  %321 = load i32, i32* %9, align 4
  %322 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @sqlite3Strlen30(i32 %324)
  %326 = icmp eq i32 %321, %325
  %327 = zext i1 %326 to i32
  %328 = call i32 @assert(i32 %327)
  %329 = load i32*, i32** %11, align 8
  %330 = load i32, i32* @OP_MakeRecord, align 4
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %21, align 4
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @sqlite3VdbeAddOp4(i32* %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %336, i32 %337)
  %339 = load i32*, i32** %11, align 8
  %340 = load i32, i32* @OP_IdxInsert, align 4
  %341 = load i32, i32* %19, align 4
  %342 = load i32, i32* %21, align 4
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %9, align 4
  %345 = call i32 @sqlite3VdbeAddOp4Int(i32* %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344)
  br label %388

346:                                              ; preds = %295
  br label %388

347:                                              ; preds = %295
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* @SRT_Output, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* @SRT_Coroutine, align 4
  %354 = icmp eq i32 %352, %353
  br label %355

355:                                              ; preds = %351, %347
  %356 = phi i1 [ true, %347 ], [ %354, %351 ]
  %357 = zext i1 %356 to i32
  %358 = call i32 @assert(i32 %357)
  %359 = load i32, i32* %18, align 4
  %360 = load i32, i32* @SRT_Output, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @testcase(i32 %362)
  %364 = load i32, i32* %18, align 4
  %365 = load i32, i32* @SRT_Coroutine, align 4
  %366 = icmp eq i32 %364, %365
  %367 = zext i1 %366 to i32
  %368 = call i32 @testcase(i32 %367)
  %369 = load i32, i32* %18, align 4
  %370 = load i32, i32* @SRT_Output, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %380

372:                                              ; preds = %355
  %373 = load i32*, i32** %11, align 8
  %374 = load i32, i32* @OP_ResultRow, align 4
  %375 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %9, align 4
  %379 = call i32 @sqlite3VdbeAddOp2(i32* %373, i32 %374, i32 %377, i32 %378)
  br label %387

380:                                              ; preds = %355
  %381 = load i32*, i32** %11, align 8
  %382 = load i32, i32* @OP_Yield, align 4
  %383 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @sqlite3VdbeAddOp1(i32* %381, i32 %382, i32 %385)
  br label %387

387:                                              ; preds = %380, %372
  br label %388

388:                                              ; preds = %387, %346, %320, %297
  %389 = load i32, i32* %21, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %407

391:                                              ; preds = %388
  %392 = load i32, i32* %18, align 4
  %393 = icmp eq i32 %392, 129
  br i1 %393, label %394, label %399

394:                                              ; preds = %391
  %395 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %396 = load i32, i32* %20, align 4
  %397 = load i32, i32* %9, align 4
  %398 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_36__* %395, i32 %396, i32 %397)
  br label %403

399:                                              ; preds = %391
  %400 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %401 = load i32, i32* %20, align 4
  %402 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_36__* %400, i32 %401)
  br label %403

403:                                              ; preds = %399, %394
  %404 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %405 = load i32, i32* %21, align 4
  %406 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_36__* %404, i32 %405)
  br label %407

407:                                              ; preds = %403, %388
  %408 = load i32*, i32** %11, align 8
  %409 = load i32, i32* %13, align 4
  %410 = call i32 @sqlite3VdbeResolveLabel(i32* %408, i32 %409)
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %411, i32 0, i32 6
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %407
  %418 = load i32*, i32** %11, align 8
  %419 = load i32, i32* @OP_SorterNext, align 4
  %420 = load i32, i32* %16, align 4
  %421 = load i32, i32* %14, align 4
  %422 = call i32 @sqlite3VdbeAddOp2(i32* %418, i32 %419, i32 %420, i32 %421)
  %423 = load i32*, i32** %11, align 8
  %424 = call i32 @VdbeCoverage(i32* %423)
  br label %433

425:                                              ; preds = %407
  %426 = load i32*, i32** %11, align 8
  %427 = load i32, i32* @OP_Next, align 4
  %428 = load i32, i32* %16, align 4
  %429 = load i32, i32* %14, align 4
  %430 = call i32 @sqlite3VdbeAddOp2(i32* %426, i32 %427, i32 %428, i32 %429)
  %431 = load i32*, i32** %11, align 8
  %432 = call i32 @VdbeCoverage(i32* %431)
  br label %433

433:                                              ; preds = %425, %417
  %434 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %433
  %439 = load i32*, i32** %11, align 8
  %440 = load i32, i32* @OP_Return, align 4
  %441 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @sqlite3VdbeAddOp1(i32* %439, i32 %440, i32 %443)
  br label %445

445:                                              ; preds = %438, %433
  %446 = load i32*, i32** %11, align 8
  %447 = load i32, i32* %12, align 4
  %448 = call i32 @sqlite3VdbeResolveLabel(i32* %446, i32 %447)
  ret void
}

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_36__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3Strlen30(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_36__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
