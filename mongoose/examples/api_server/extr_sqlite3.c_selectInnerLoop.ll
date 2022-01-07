; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_selectInnerLoop.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_selectInnerLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }

@WHERE_DISTINCT_NOOP = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Null = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@SQLITE_NULLEQ = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@WHERE_DISTINCT_UNORDERED = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_IdxDelete = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@SRT_Discard = common dso_local global i32 0, align 4
@OP_IfZero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_33__*, i32, i32, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_30__*, i32, i32)* @selectInnerLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selectInnerLoop(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_33__* %2, i32 %3, i32 %4, %struct.TYPE_33__* %5, %struct.TYPE_34__* %6, %struct.TYPE_30__* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca %struct.TYPE_34__*, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_29__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.TYPE_33__* %5, %struct.TYPE_33__** %16, align 8
  store %struct.TYPE_34__* %6, %struct.TYPE_34__** %17, align 8
  store %struct.TYPE_30__* %7, %struct.TYPE_30__** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %21, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %25, align 4
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %26, align 4
  %46 = load i32*, i32** %21, align 8
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** %21, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i64 @NEVER(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %10
  br label %522

55:                                               ; preds = %10
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %57 = icmp ne %struct.TYPE_33__* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %61 = icmp ne %struct.TYPE_34__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @WHERE_DISTINCT_NOOP, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %65, %62 ], [ %67, %66 ]
  store i32 %69, i32* %23, align 4
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %71 = icmp eq %struct.TYPE_33__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %21, align 8
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @codeOffset(i32* %76, %struct.TYPE_31__* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %72, %68
  %81 = load i32, i32* %15, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %27, align 4
  br label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %27, align 4
  br label %89

89:                                               ; preds = %85, %83
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %27, align 4
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %27, align 4
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %117

109:                                              ; preds = %89
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %27, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  br label %117

117:                                              ; preds = %109, %94
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %24, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  store i32 0, i32* %22, align 4
  br label %124

124:                                              ; preds = %137, %123
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i32*, i32** %21, align 8
  %130 = load i32, i32* @OP_Column, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @sqlite3VdbeAddOp3(i32* %129, i32 %130, i32 %131, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %22, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %22, align 4
  br label %124

140:                                              ; preds = %124
  br label %155

141:                                              ; preds = %117
  %142 = load i32, i32* %25, align 4
  %143 = icmp ne i32 %142, 135
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %146 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_32__* %145)
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %25, align 4
  %151 = icmp eq i32 %150, 133
  %152 = zext i1 %151 to i32
  %153 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_32__* %147, %struct.TYPE_33__* %148, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %144, %141
  br label %155

155:                                              ; preds = %154, %140
  %156 = load i32, i32* %27, align 4
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %23, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %304

159:                                              ; preds = %155
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %161 = icmp ne %struct.TYPE_33__* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %279 [
    i32 129, label %174
    i32 128, label %273
  ]

174:                                              ; preds = %159
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %30, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @sqlite3VdbeChangeToNoop(i32* %184, i32 %187)
  %189 = load i32*, i32** %21, align 8
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call %struct.TYPE_29__* @sqlite3VdbeGetOp(i32* %189, i32 %192)
  store %struct.TYPE_29__* %193, %struct.TYPE_29__** %28, align 8
  %194 = load i32, i32* @OP_Null, align 4
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 4
  %199 = load i32, i32* %30, align 4
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %21, align 8
  %203 = call i32 @sqlite3VdbeCurrentAddr(i32* %202)
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %203, %204
  store i32 %205, i32* %29, align 4
  store i32 0, i32* %22, align 4
  br label %206

206:                                              ; preds = %256, %174
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %259

210:                                              ; preds = %206
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %213, align 8
  %215 = load i32, i32* %22, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_32__* %211, i32 %219)
  store i32* %220, i32** %31, align 8
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp slt i32 %221, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %210
  %226 = load i32*, i32** %21, align 8
  %227 = load i32, i32* @OP_Ne, align 4
  %228 = load i32, i32* %24, align 4
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %29, align 4
  %232 = load i32, i32* %30, align 4
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @sqlite3VdbeAddOp3(i32* %226, i32 %227, i32 %230, i32 %231, i32 %234)
  br label %247

236:                                              ; preds = %210
  %237 = load i32*, i32** %21, align 8
  %238 = load i32, i32* @OP_Eq, align 4
  %239 = load i32, i32* %24, align 4
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %239, %240
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %30, align 4
  %244 = load i32, i32* %22, align 4
  %245 = add nsw i32 %243, %244
  %246 = call i32 @sqlite3VdbeAddOp3(i32* %237, i32 %238, i32 %241, i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %236, %225
  %248 = load i32*, i32** %21, align 8
  %249 = load i32*, i32** %31, align 8
  %250 = bitcast i32* %249 to i8*
  %251 = load i32, i32* @P4_COLLSEQ, align 4
  %252 = call i32 @sqlite3VdbeChangeP4(i32* %248, i32 -1, i8* %250, i32 %251)
  %253 = load i32*, i32** %21, align 8
  %254 = load i32, i32* @SQLITE_NULLEQ, align 4
  %255 = call i32 @sqlite3VdbeChangeP5(i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %22, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %22, align 4
  br label %206

259:                                              ; preds = %206
  %260 = load i32*, i32** %21, align 8
  %261 = call i32 @sqlite3VdbeCurrentAddr(i32* %260)
  %262 = load i32, i32* %29, align 4
  %263 = icmp eq i32 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load i32*, i32** %21, align 8
  %267 = load i32, i32* @OP_Copy, align 4
  %268 = load i32, i32* %24, align 4
  %269 = load i32, i32* %30, align 4
  %270 = load i32, i32* %15, align 4
  %271 = sub nsw i32 %270, 1
  %272 = call i32 @sqlite3VdbeAddOp3(i32* %266, i32 %267, i32 %268, i32 %269, i32 %271)
  br label %295

273:                                              ; preds = %159
  %274 = load i32*, i32** %21, align 8
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @sqlite3VdbeChangeToNoop(i32* %274, i32 %277)
  br label %295

279:                                              ; preds = %159
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @WHERE_DISTINCT_UNORDERED, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %24, align 4
  %294 = call i32 @codeDistinct(%struct.TYPE_32__* %287, i32 %290, i32 %291, i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %279, %273, %259
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %297 = icmp eq %struct.TYPE_33__* %296, null
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i32*, i32** %21, align 8
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @codeOffset(i32* %299, %struct.TYPE_31__* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %295
  br label %304

304:                                              ; preds = %303, %155
  %305 = load i32, i32* %25, align 4
  switch i32 %305, label %500 [
    i32 130, label %306
    i32 136, label %323
    i32 131, label %330
    i32 137, label %330
    i32 132, label %379
    i32 135, label %426
    i32 134, label %431
    i32 138, label %450
    i32 133, label %450
  ]

306:                                              ; preds = %304
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %308 = call i32 @sqlite3GetTempReg(%struct.TYPE_32__* %307)
  store i32 %308, i32* %32, align 4
  %309 = load i32*, i32** %21, align 8
  %310 = load i32, i32* @OP_MakeRecord, align 4
  %311 = load i32, i32* %24, align 4
  %312 = load i32, i32* %15, align 4
  %313 = load i32, i32* %32, align 4
  %314 = call i32 @sqlite3VdbeAddOp3(i32* %309, i32 %310, i32 %311, i32 %312, i32 %313)
  %315 = load i32*, i32** %21, align 8
  %316 = load i32, i32* @OP_IdxInsert, align 4
  %317 = load i32, i32* %26, align 4
  %318 = load i32, i32* %32, align 4
  %319 = call i32 @sqlite3VdbeAddOp2(i32* %315, i32 %316, i32 %317, i32 %318)
  %320 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %321 = load i32, i32* %32, align 4
  %322 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_32__* %320, i32 %321)
  br label %506

323:                                              ; preds = %304
  %324 = load i32*, i32** %21, align 8
  %325 = load i32, i32* @OP_IdxDelete, align 4
  %326 = load i32, i32* %26, align 4
  %327 = load i32, i32* %24, align 4
  %328 = load i32, i32* %15, align 4
  %329 = call i32 @sqlite3VdbeAddOp3(i32* %324, i32 %325, i32 %326, i32 %327, i32 %328)
  br label %506

330:                                              ; preds = %304, %304
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %332 = call i32 @sqlite3GetTempReg(%struct.TYPE_32__* %331)
  store i32 %332, i32* %33, align 4
  %333 = load i32, i32* %25, align 4
  %334 = icmp eq i32 %333, 131
  %335 = zext i1 %334 to i32
  %336 = call i32 @testcase(i32 %335)
  %337 = load i32, i32* %25, align 4
  %338 = icmp eq i32 %337, 137
  %339 = zext i1 %338 to i32
  %340 = call i32 @testcase(i32 %339)
  %341 = load i32*, i32** %21, align 8
  %342 = load i32, i32* @OP_MakeRecord, align 4
  %343 = load i32, i32* %24, align 4
  %344 = load i32, i32* %15, align 4
  %345 = load i32, i32* %33, align 4
  %346 = call i32 @sqlite3VdbeAddOp3(i32* %341, i32 %342, i32 %343, i32 %344, i32 %345)
  %347 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %348 = icmp ne %struct.TYPE_33__* %347, null
  br i1 %348, label %349, label %355

349:                                              ; preds = %330
  %350 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %352 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %353 = load i32, i32* %33, align 4
  %354 = call i32 @pushOntoSorter(%struct.TYPE_32__* %350, %struct.TYPE_33__* %351, %struct.TYPE_31__* %352, i32 %353)
  br label %375

355:                                              ; preds = %330
  %356 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %357 = call i32 @sqlite3GetTempReg(%struct.TYPE_32__* %356)
  store i32 %357, i32* %34, align 4
  %358 = load i32*, i32** %21, align 8
  %359 = load i32, i32* @OP_NewRowid, align 4
  %360 = load i32, i32* %26, align 4
  %361 = load i32, i32* %34, align 4
  %362 = call i32 @sqlite3VdbeAddOp2(i32* %358, i32 %359, i32 %360, i32 %361)
  %363 = load i32*, i32** %21, align 8
  %364 = load i32, i32* @OP_Insert, align 4
  %365 = load i32, i32* %26, align 4
  %366 = load i32, i32* %33, align 4
  %367 = load i32, i32* %34, align 4
  %368 = call i32 @sqlite3VdbeAddOp3(i32* %363, i32 %364, i32 %365, i32 %366, i32 %367)
  %369 = load i32*, i32** %21, align 8
  %370 = load i32, i32* @OPFLAG_APPEND, align 4
  %371 = call i32 @sqlite3VdbeChangeP5(i32* %369, i32 %370)
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %373 = load i32, i32* %34, align 4
  %374 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_32__* %372, i32 %373)
  br label %375

375:                                              ; preds = %355, %349
  %376 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %377 = load i32, i32* %33, align 4
  %378 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_32__* %376, i32 %377)
  br label %506

379:                                              ; preds = %304
  %380 = load i32, i32* %15, align 4
  %381 = icmp eq i32 %380, 1
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_28__*, %struct.TYPE_28__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @sqlite3CompareAffinity(i32 %389, i32 %392)
  %394 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 4
  store i32 %393, i32* %395, align 4
  %396 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %397 = icmp ne %struct.TYPE_33__* %396, null
  br i1 %397, label %398, label %404

398:                                              ; preds = %379
  %399 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %400 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %401 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %402 = load i32, i32* %24, align 4
  %403 = call i32 @pushOntoSorter(%struct.TYPE_32__* %399, %struct.TYPE_33__* %400, %struct.TYPE_31__* %401, i32 %402)
  br label %425

404:                                              ; preds = %379
  %405 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %406 = call i32 @sqlite3GetTempReg(%struct.TYPE_32__* %405)
  store i32 %406, i32* %35, align 4
  %407 = load i32*, i32** %21, align 8
  %408 = load i32, i32* @OP_MakeRecord, align 4
  %409 = load i32, i32* %24, align 4
  %410 = load i32, i32* %35, align 4
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 4
  %413 = call i32 @sqlite3VdbeAddOp4(i32* %407, i32 %408, i32 %409, i32 1, i32 %410, i32* %412, i32 1)
  %414 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %415 = load i32, i32* %24, align 4
  %416 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_32__* %414, i32 %415, i32 1)
  %417 = load i32*, i32** %21, align 8
  %418 = load i32, i32* @OP_IdxInsert, align 4
  %419 = load i32, i32* %26, align 4
  %420 = load i32, i32* %35, align 4
  %421 = call i32 @sqlite3VdbeAddOp2(i32* %417, i32 %418, i32 %419, i32 %420)
  %422 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %423 = load i32, i32* %35, align 4
  %424 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_32__* %422, i32 %423)
  br label %425

425:                                              ; preds = %404, %398
  br label %506

426:                                              ; preds = %304
  %427 = load i32*, i32** %21, align 8
  %428 = load i32, i32* @OP_Integer, align 4
  %429 = load i32, i32* %26, align 4
  %430 = call i32 @sqlite3VdbeAddOp2(i32* %427, i32 %428, i32 1, i32 %429)
  br label %506

431:                                              ; preds = %304
  %432 = load i32, i32* %15, align 4
  %433 = icmp eq i32 %432, 1
  %434 = zext i1 %433 to i32
  %435 = call i32 @assert(i32 %434)
  %436 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %437 = icmp ne %struct.TYPE_33__* %436, null
  br i1 %437, label %438, label %444

438:                                              ; preds = %431
  %439 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %440 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %442 = load i32, i32* %24, align 4
  %443 = call i32 @pushOntoSorter(%struct.TYPE_32__* %439, %struct.TYPE_33__* %440, %struct.TYPE_31__* %441, i32 %442)
  br label %449

444:                                              ; preds = %431
  %445 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %446 = load i32, i32* %24, align 4
  %447 = load i32, i32* %26, align 4
  %448 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_32__* %445, i32 %446, i32 %447, i32 1)
  br label %449

449:                                              ; preds = %444, %438
  br label %506

450:                                              ; preds = %304, %304
  %451 = load i32, i32* %25, align 4
  %452 = icmp eq i32 %451, 138
  %453 = zext i1 %452 to i32
  %454 = call i32 @testcase(i32 %453)
  %455 = load i32, i32* %25, align 4
  %456 = icmp eq i32 %455, 133
  %457 = zext i1 %456 to i32
  %458 = call i32 @testcase(i32 %457)
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %460 = icmp ne %struct.TYPE_33__* %459, null
  br i1 %460, label %461, label %478

461:                                              ; preds = %450
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %463 = call i32 @sqlite3GetTempReg(%struct.TYPE_32__* %462)
  store i32 %463, i32* %36, align 4
  %464 = load i32*, i32** %21, align 8
  %465 = load i32, i32* @OP_MakeRecord, align 4
  %466 = load i32, i32* %24, align 4
  %467 = load i32, i32* %15, align 4
  %468 = load i32, i32* %36, align 4
  %469 = call i32 @sqlite3VdbeAddOp3(i32* %464, i32 %465, i32 %466, i32 %467, i32 %468)
  %470 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %472 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %473 = load i32, i32* %36, align 4
  %474 = call i32 @pushOntoSorter(%struct.TYPE_32__* %470, %struct.TYPE_33__* %471, %struct.TYPE_31__* %472, i32 %473)
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %476 = load i32, i32* %36, align 4
  %477 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_32__* %475, i32 %476)
  br label %499

478:                                              ; preds = %450
  %479 = load i32, i32* %25, align 4
  %480 = icmp eq i32 %479, 138
  br i1 %480, label %481, label %488

481:                                              ; preds = %478
  %482 = load i32*, i32** %21, align 8
  %483 = load i32, i32* @OP_Yield, align 4
  %484 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %485 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @sqlite3VdbeAddOp1(i32* %482, i32 %483, i32 %486)
  br label %498

488:                                              ; preds = %478
  %489 = load i32*, i32** %21, align 8
  %490 = load i32, i32* @OP_ResultRow, align 4
  %491 = load i32, i32* %24, align 4
  %492 = load i32, i32* %15, align 4
  %493 = call i32 @sqlite3VdbeAddOp2(i32* %489, i32 %490, i32 %491, i32 %492)
  %494 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %495 = load i32, i32* %24, align 4
  %496 = load i32, i32* %15, align 4
  %497 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_32__* %494, i32 %495, i32 %496)
  br label %498

498:                                              ; preds = %488, %481
  br label %499

499:                                              ; preds = %498, %461
  br label %506

500:                                              ; preds = %304
  %501 = load i32, i32* %25, align 4
  %502 = load i32, i32* @SRT_Discard, align 4
  %503 = icmp eq i32 %501, %502
  %504 = zext i1 %503 to i32
  %505 = call i32 @assert(i32 %504)
  br label %506

506:                                              ; preds = %500, %499, %449, %426, %425, %375, %323, %306
  %507 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %508 = icmp eq %struct.TYPE_33__* %507, null
  br i1 %508, label %509, label %522

509:                                              ; preds = %506
  %510 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %511 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %522

514:                                              ; preds = %509
  %515 = load i32*, i32** %21, align 8
  %516 = load i32, i32* @OP_IfZero, align 4
  %517 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %518 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* %20, align 4
  %521 = call i32 @sqlite3VdbeAddOp3(i32* %515, i32 %516, i32 %519, i32 %520, i32 -1)
  br label %522

522:                                              ; preds = %54, %514, %509, %506
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @codeOffset(i32*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_32__*) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_32__*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeToNoop(i32*, i32) #1

declare dso_local %struct.TYPE_29__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @codeDistinct(%struct.TYPE_32__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_32__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @pushOntoSorter(%struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @sqlite3CompareAffinity(i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_32__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
