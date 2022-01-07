; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_updateVirtualTable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_updateVirtualTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i32, i32*, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }

@OP_OpenEphemeral = common dso_local global i32 0, align 4
@WHERE_ONEPASS_DESIRED = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_VColumn = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_VUpdate = common dso_local global i32 0, align 4
@P4_VTAB = common dso_local global i32 0, align 4
@OE_Default = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_24__*, i32*, i32*, i32*, i32)* @updateVirtualTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateVirtualTable(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, %struct.TYPE_21__* %2, %struct.TYPE_24__* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [2 x i32], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %17, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %20, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %39 = call i64 @sqlite3GetVTable(i32* %37, %struct.TYPE_21__* %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %21, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 2, %43
  store i32 %44, i32* %23, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %27, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @assert(i32* %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  store i32 %55, i32* %18, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* @OP_OpenEphemeral, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %23, align 4
  %61 = call i32 @sqlite3VdbeAddOp2(i32* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %30, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %24, align 4
  %66 = load i32, i32* %23, align 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  store i32 %74, i32* %25, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  store i32 %78, i32* %26, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* @WHERE_ONEPASS_DESIRED, align 4
  %83 = call i32* @sqlite3WhereBegin(%struct.TYPE_23__* %79, %struct.TYPE_22__* %80, i32* %81, i32 0, i32 0, i32 %82, i32 0)
  store i32* %83, i32** %22, align 8
  %84 = load i32*, i32** %22, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %8
  br label %264

87:                                               ; preds = %8
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* @OP_Rowid, align 4
  %90 = load i32, i32* %27, align 4
  %91 = load i32, i32* %24, align 4
  %92 = call i32 @sqlite3VdbeAddOp2(i32* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %13, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %24, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @sqlite3ExprCode(%struct.TYPE_23__* %96, i32* %97, i32 %99)
  br label %108

101:                                              ; preds = %87
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* @OP_Rowid, align 4
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @sqlite3VdbeAddOp2(i32* %102, i32 %103, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %101, %95
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %152, %108
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %109
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %115
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %24, align 4
  %137 = add nsw i32 %136, 2
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @sqlite3ExprCode(%struct.TYPE_23__* %123, i32* %135, i32 %139)
  br label %151

141:                                              ; preds = %115
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* @OP_VColumn, align 4
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %24, align 4
  %147 = add nsw i32 %146, 2
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @sqlite3VdbeAddOp3(i32* %142, i32 %143, i32 %144, i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %141, %122
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %109

155:                                              ; preds = %109
  %156 = load i32*, i32** %22, align 8
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %158 = call i32 @sqlite3WhereOkOnePass(i32* %156, i32* %157)
  store i32 %158, i32* %29, align 4
  %159 = load i32, i32* %29, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* %30, align 4
  %164 = call i32 @sqlite3VdbeChangeToNoop(i32* %162, i32 %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %166 = call i64 @sqlite3IsToplevel(%struct.TYPE_23__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %168, %161
  br label %190

172:                                              ; preds = %155
  %173 = load i32*, i32** %17, align 8
  %174 = load i32, i32* @OP_MakeRecord, align 4
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* %25, align 4
  %178 = call i32 @sqlite3VdbeAddOp3(i32* %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* @OP_NewRowid, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %26, align 4
  %183 = call i32 @sqlite3VdbeAddOp2(i32* %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* @OP_Insert, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %26, align 4
  %189 = call i32 @sqlite3VdbeAddOp3(i32* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %172, %171
  %191 = load i32, i32* %29, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %190
  %194 = load i32*, i32** %22, align 8
  %195 = call i32 @sqlite3WhereEnd(i32* %194)
  %196 = load i32*, i32** %17, align 8
  %197 = load i32, i32* @OP_Rewind, align 4
  %198 = load i32, i32* %18, align 4
  %199 = call i32 @sqlite3VdbeAddOp1(i32* %196, i32 %197, i32 %198)
  store i32 %199, i32* %30, align 4
  %200 = load i32*, i32** %17, align 8
  %201 = call i32 @VdbeCoverage(i32* %200)
  store i32 0, i32* %19, align 4
  br label %202

202:                                              ; preds = %215, %193
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %23, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %202
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* @OP_Column, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %24, align 4
  %212 = load i32, i32* %19, align 4
  %213 = add nsw i32 %211, %212
  %214 = call i32 @sqlite3VdbeAddOp3(i32* %207, i32 %208, i32 %209, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %206
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %19, align 4
  br label %202

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218, %190
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %222 = call i32 @sqlite3VtabMakeWritable(%struct.TYPE_23__* %220, %struct.TYPE_21__* %221)
  %223 = load i32*, i32** %17, align 8
  %224 = load i32, i32* @OP_VUpdate, align 4
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %24, align 4
  %227 = load i8*, i8** %21, align 8
  %228 = load i32, i32* @P4_VTAB, align 4
  %229 = call i32 @sqlite3VdbeAddOp4(i32* %223, i32 %224, i32 0, i32 %225, i32 %226, i8* %227, i32 %228)
  %230 = load i32*, i32** %17, align 8
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @OE_Default, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %219
  %235 = load i32, i32* @OE_Abort, align 4
  br label %238

236:                                              ; preds = %219
  %237 = load i32, i32* %16, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %240 = call i32 @sqlite3VdbeChangeP5(i32* %230, i32 %239)
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %242 = call i32 @sqlite3MayAbort(%struct.TYPE_23__* %241)
  %243 = load i32, i32* %29, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %238
  %246 = load i32*, i32** %17, align 8
  %247 = load i32, i32* @OP_Next, align 4
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %30, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 @sqlite3VdbeAddOp2(i32* %246, i32 %247, i32 %248, i32 %250)
  %252 = load i32*, i32** %17, align 8
  %253 = call i32 @VdbeCoverage(i32* %252)
  %254 = load i32*, i32** %17, align 8
  %255 = load i32, i32* %30, align 4
  %256 = call i32 @sqlite3VdbeJumpHere(i32* %254, i32 %255)
  %257 = load i32*, i32** %17, align 8
  %258 = load i32, i32* @OP_Close, align 4
  %259 = load i32, i32* %18, align 4
  %260 = call i32 @sqlite3VdbeAddOp2(i32* %257, i32 %258, i32 %259, i32 0)
  br label %264

261:                                              ; preds = %238
  %262 = load i32*, i32** %22, align 8
  %263 = call i32 @sqlite3WhereEnd(i32* %262)
  br label %264

264:                                              ; preds = %86, %261, %245
  ret void
}

declare dso_local i64 @sqlite3GetVTable(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32* @sqlite3WhereBegin(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3WhereOkOnePass(i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeChangeToNoop(i32*, i32) #1

declare dso_local i64 @sqlite3IsToplevel(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VtabMakeWritable(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
