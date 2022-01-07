; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_convertToWithoutRowidTable.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_convertToWithoutRowidTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_26__*, i32, i64, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i64, i64, %struct.TYPE_28__*, i32, %struct.TYPE_22__* }
%struct.TYPE_28__ = type { i32, i32*, i32, i32, i32, i64, i32*, %struct.TYPE_28__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@BTREE_BLOBKEY = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@sqlite3StrBINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*)* @convertToWithoutRowidTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertToWithoutRowidTable(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %10, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load i32, i32* @OE_Abort, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %27

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @BTREE_BLOBKEY, align 4
  %73 = call i32 @sqlite3VdbeChangeP3(i32* %68, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %59
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %74
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sqlite3TokenInit(i32* %13, i32 %88)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %92 = load i32, i32* @TK_ID, align 4
  %93 = call i32 @sqlite3ExprAlloc(%struct.TYPE_25__* %91, i32 %92, i32* %13, i32 0)
  %94 = call %struct.TYPE_29__* @sqlite3ExprListAppend(%struct.TYPE_27__* %90, i32 0, i32 %93)
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %12, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %96 = icmp eq %struct.TYPE_29__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %455

98:                                               ; preds = %79
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %111 = icmp eq %struct.TYPE_26__* %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %120 = call i32 @sqlite3CreateIndex(%struct.TYPE_27__* %114, i32 0, i32 0, i32 0, %struct.TYPE_29__* %115, i32 %118, i32 0, i32 0, i32 0, i32 0, i32 %119)
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %98
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %98
  br label %455

131:                                              ; preds = %125
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = call %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_26__* %132)
  store %struct.TYPE_28__* %133, %struct.TYPE_28__** %6, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  store i64 -1, i64* %135, align 8
  br label %187

136:                                              ; preds = %74
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = call %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_26__* %137)
  store %struct.TYPE_28__* %138, %struct.TYPE_28__** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %139

139:                                              ; preds = %180, %136
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %183

145:                                              ; preds = %139
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @hasColumn(i32* %148, i32 %149, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 8
  br label %179

164:                                              ; preds = %145
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %171, i32* %178, align 4
  br label %179

179:                                              ; preds = %164, %159
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %139

183:                                              ; preds = %139
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %131
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %189 = icmp ne %struct.TYPE_28__* %188, null
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %187
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 4
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %187
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %7, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %227

208:                                              ; preds = %202
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load i32*, i32** %11, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @OP_Goto, align 4
  %226 = call i32 @sqlite3VdbeChangeOpcode(i32* %221, i64 %224, i32 %225)
  br label %227

227:                                              ; preds = %213, %208, %202
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 5
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %234, align 8
  store %struct.TYPE_28__* %235, %struct.TYPE_28__** %5, align 8
  br label %236

236:                                              ; preds = %368, %227
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = icmp ne %struct.TYPE_28__* %237, null
  br i1 %238, label %239, label %372

239:                                              ; preds = %236
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %241 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_28__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  br label %368

244:                                              ; preds = %239
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %269, %244
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %272

249:                                              ; preds = %245
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @hasColumn(i32* %252, i32 %255, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %249
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  br label %268

268:                                              ; preds = %265, %249
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %245

272:                                              ; preds = %245
  %273 = load i32, i32* %14, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  br label %368

281:                                              ; preds = %272
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %286, %287
  %289 = call i64 @resizeIndexObject(%struct.TYPE_25__* %282, %struct.TYPE_28__* %283, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %281
  br label %455

292:                                              ; preds = %281
  store i32 0, i32* %8, align 4
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %9, align 4
  br label %296

296:                                              ; preds = %346, %292
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %7, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %349

300:                                              ; preds = %296
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @hasColumn(i32* %303, i32 %306, i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %345, label %316

316:                                              ; preds = %300
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %323, i32* %329, align 4
  %330 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %330, i32 0, i32 6
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 6
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 %336, i32* %342, align 4
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %345

345:                                              ; preds = %316, %300
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  br label %296

349:                                              ; preds = %296
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %14, align 4
  %357 = add nsw i32 %355, %356
  %358 = icmp sge i32 %352, %357
  %359 = zext i1 %358 to i32
  %360 = call i32 @assert(i32 %359)
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %9, align 4
  %365 = icmp sge i32 %363, %364
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  br label %368

368:                                              ; preds = %349, %275, %243
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 7
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %370, align 8
  store %struct.TYPE_28__* %371, %struct.TYPE_28__** %5, align 8
  br label %236

372:                                              ; preds = %236
  %373 = load i32, i32* %7, align 4
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %446

378:                                              ; preds = %372
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %380 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @resizeIndexObject(%struct.TYPE_25__* %379, %struct.TYPE_28__* %380, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %378
  br label %455

387:                                              ; preds = %378
  store i32 0, i32* %8, align 4
  %388 = load i32, i32* %7, align 4
  store i32 %388, i32* %9, align 4
  br label %389

389:                                              ; preds = %428, %387
  %390 = load i32, i32* %8, align 4
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %431

395:                                              ; preds = %389
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* %8, align 4
  %401 = call i64 @hasColumn(i32* %398, i32 %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %427, label %403

403:                                              ; preds = %395
  %404 = load i32, i32* %9, align 4
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = icmp slt i32 %404, %407
  %409 = zext i1 %408 to i32
  %410 = call i32 @assert(i32 %409)
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %9, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32 %411, i32* %417, align 4
  %418 = load i32, i32* @sqlite3StrBINARY, align 4
  %419 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %419, i32 0, i32 6
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  store i32 %418, i32* %424, align 4
  %425 = load i32, i32* %9, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %9, align 4
  br label %427

427:                                              ; preds = %403, %395
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %8, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %8, align 4
  br label %389

431:                                              ; preds = %389
  %432 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* %9, align 4
  %436 = icmp eq i32 %434, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* %9, align 4
  %443 = icmp eq i32 %441, %442
  %444 = zext i1 %443 to i32
  %445 = call i32 @assert(i32 %444)
  br label %452

446:                                              ; preds = %372
  %447 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 2
  store i32 %449, i32* %451, align 8
  br label %452

452:                                              ; preds = %446, %431
  %453 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %454 = call i32 @recomputeColumnsNotIndexed(%struct.TYPE_28__* %453)
  br label %455

455:                                              ; preds = %452, %386, %291, %130, %97
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i32 @sqlite3TokenInit(i32*, i32) #1

declare dso_local %struct.TYPE_29__* @sqlite3ExprListAppend(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAlloc(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_27__*, i32, i32, i32, %struct.TYPE_29__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_26__*) #1

declare dso_local i64 @hasColumn(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeOpcode(i32*, i64, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_28__*) #1

declare dso_local i64 @resizeIndexObject(%struct.TYPE_25__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @recomputeColumnsNotIndexed(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
