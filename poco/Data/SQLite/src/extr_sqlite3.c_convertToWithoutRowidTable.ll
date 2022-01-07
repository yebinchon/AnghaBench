; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_convertToWithoutRowidTable.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_convertToWithoutRowidTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, %struct.TYPE_29__*, i32, i64, i32*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i64 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_29__ = type { i32, i64, i64, %struct.TYPE_31__*, i32, %struct.TYPE_25__* }
%struct.TYPE_31__ = type { i32, i32, i32*, i32, i32, i64, i32, i32*, i64*, %struct.TYPE_31__* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }

@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@BTREE_BLOBKEY = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@sqlite3StrBINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_29__*)* @convertToWithoutRowidTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertToWithoutRowidTable(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %10, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load i32, i32* @OE_Abort, align 4
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
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
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @BTREE_BLOBKEY, align 4
  %73 = call i32 @sqlite3VdbeChangeP3(i32* %68, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %59
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %77, 0
  br i1 %78, label %79, label %150

79:                                               ; preds = %74
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sqlite3TokenInit(i32* %13, i32 %88)
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %92 = load i32, i32* @TK_ID, align 4
  %93 = call i32 @sqlite3ExprAlloc(%struct.TYPE_28__* %91, i32 %92, i32* %13, i32 0)
  %94 = call %struct.TYPE_32__* @sqlite3ExprListAppend(%struct.TYPE_30__* %90, i32 0, i32 %93)
  store %struct.TYPE_32__* %94, %struct.TYPE_32__** %12, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %96 = icmp eq %struct.TYPE_32__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %507

98:                                               ; preds = %79
  %99 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 1
  %111 = call i32 @sqlite3RenameTokenRemap(%struct.TYPE_30__* %102, i32 %108, i64* %110)
  br label %112

112:                                              ; preds = %101, %98
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 4
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %122, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = icmp eq %struct.TYPE_29__* %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 1
  store i64 -1, i64* %129, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %136 = call i32 @sqlite3CreateIndex(%struct.TYPE_30__* %130, i32 0, i32 0, i32 0, %struct.TYPE_32__* %131, i32 %134, i32 0, i32 0, i32 0, i32 0, i32 %135)
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %112
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141, %112
  br label %507

147:                                              ; preds = %141
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %149 = call %struct.TYPE_31__* @sqlite3PrimaryKeyIndex(%struct.TYPE_29__* %148)
  store %struct.TYPE_31__* %149, %struct.TYPE_31__** %6, align 8
  br label %211

150:                                              ; preds = %74
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %152 = call %struct.TYPE_31__* @sqlite3PrimaryKeyIndex(%struct.TYPE_29__* %151)
  store %struct.TYPE_31__* %152, %struct.TYPE_31__** %6, align 8
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %154 = icmp ne %struct.TYPE_31__* %153, null
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %157

157:                                              ; preds = %204, %150
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %207

163:                                              ; preds = %157
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i64 @isDupColumn(%struct.TYPE_31__* %164, i32 %165, %struct.TYPE_31__* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %172, align 4
  br label %203

175:                                              ; preds = %163
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @hasColumn(i32* %178, i32 %179, i32 %186)
  %188 = call i32 @testcase(i32 %187)
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %195, i32* %202, align 4
  br label %203

203:                                              ; preds = %175, %170
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %157

207:                                              ; preds = %157
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %147
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %213 = icmp ne %struct.TYPE_31__* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 3
  store i32 1, i32* %217, align 8
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %211
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 4
  store i32 1, i32* %225, align 4
  br label %226

226:                                              ; preds = %223, %211
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %7, align 4
  %230 = load i32*, i32** %11, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %251

232:                                              ; preds = %226
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load i32*, i32** %11, align 8
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* @OP_Goto, align 4
  %250 = call i32 @sqlite3VdbeChangeOpcode(i32* %245, i64 %248, i32 %249)
  br label %251

251:                                              ; preds = %237, %232, %226
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 5
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %258, align 8
  store %struct.TYPE_31__* %259, %struct.TYPE_31__** %5, align 8
  br label %260

260:                                              ; preds = %420, %251
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %262 = icmp ne %struct.TYPE_31__* %261, null
  br i1 %262, label %263, label %424

263:                                              ; preds = %260
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %265 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_31__* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  br label %420

268:                                              ; preds = %263
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %269

269:                                              ; preds = %301, %268
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %304

273:                                              ; preds = %269
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %279 = load i32, i32* %8, align 4
  %280 = call i64 @isDupColumn(%struct.TYPE_31__* %274, i32 %277, %struct.TYPE_31__* %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %300, label %282

282:                                              ; preds = %273
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @hasColumn(i32* %285, i32 %288, i32 %295)
  %297 = call i32 @testcase(i32 %296)
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %14, align 4
  br label %300

300:                                              ; preds = %282, %273
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  br label %269

304:                                              ; preds = %269
  %305 = load i32, i32* %14, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  br label %420

313:                                              ; preds = %304
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %318, %319
  %321 = call i64 @resizeIndexObject(%struct.TYPE_28__* %314, %struct.TYPE_31__* %315, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  br label %507

324:                                              ; preds = %313
  store i32 0, i32* %8, align 4
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %9, align 4
  br label %328

328:                                              ; preds = %398, %324
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* %7, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %401

332:                                              ; preds = %328
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %338 = load i32, i32* %8, align 4
  %339 = call i64 @isDupColumn(%struct.TYPE_31__* %333, i32 %336, %struct.TYPE_31__* %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %397, label %341

341:                                              ; preds = %332
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 2
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @hasColumn(i32* %344, i32 %347, i32 %354)
  %356 = call i32 @testcase(i32 %355)
  %357 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 %363, i32* %369, align 4
  %370 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %370, i32 0, i32 7
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %377, i32 0, i32 7
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %376, i32* %382, align 4
  %383 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %383, i32 0, i32 8
  %385 = load i64*, i64** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %341
  %392 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %392, i32 0, i32 6
  store i32 1, i32* %393, align 8
  br label %394

394:                                              ; preds = %391, %341
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %9, align 4
  br label %397

397:                                              ; preds = %394, %332
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %8, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %8, align 4
  br label %328

401:                                              ; preds = %328
  %402 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %14, align 4
  %409 = add nsw i32 %407, %408
  %410 = icmp sge i32 %404, %409
  %411 = zext i1 %410 to i32
  %412 = call i32 @assert(i32 %411)
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %9, align 4
  %417 = icmp sge i32 %415, %416
  %418 = zext i1 %417 to i32
  %419 = call i32 @assert(i32 %418)
  br label %420

420:                                              ; preds = %401, %307, %267
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %421, i32 0, i32 9
  %423 = load %struct.TYPE_31__*, %struct.TYPE_31__** %422, align 8
  store %struct.TYPE_31__* %423, %struct.TYPE_31__** %5, align 8
  br label %260

424:                                              ; preds = %260
  %425 = load i32, i32* %7, align 4
  %426 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = icmp slt i32 %425, %428
  br i1 %429, label %430, label %498

430:                                              ; preds = %424
  %431 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %432 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %433 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = call i64 @resizeIndexObject(%struct.TYPE_28__* %431, %struct.TYPE_31__* %432, i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %430
  br label %507

439:                                              ; preds = %430
  store i32 0, i32* %8, align 4
  %440 = load i32, i32* %7, align 4
  store i32 %440, i32* %9, align 4
  br label %441

441:                                              ; preds = %480, %439
  %442 = load i32, i32* %8, align 4
  %443 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp slt i32 %442, %445
  br i1 %446, label %447, label %483

447:                                              ; preds = %441
  %448 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i32 0, i32 2
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %8, align 4
  %453 = call i32 @hasColumn(i32* %450, i32 %451, i32 %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %479, label %455

455:                                              ; preds = %447
  %456 = load i32, i32* %9, align 4
  %457 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = icmp slt i32 %456, %459
  %461 = zext i1 %460 to i32
  %462 = call i32 @assert(i32 %461)
  %463 = load i32, i32* %8, align 4
  %464 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %464, i32 0, i32 2
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  store i32 %463, i32* %469, align 4
  %470 = load i32, i32* @sqlite3StrBINARY, align 4
  %471 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %471, i32 0, i32 7
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %9, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  store i32 %470, i32* %476, align 4
  %477 = load i32, i32* %9, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %9, align 4
  br label %479

479:                                              ; preds = %455, %447
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %8, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %8, align 4
  br label %441

483:                                              ; preds = %441
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* %9, align 4
  %488 = icmp eq i32 %486, %487
  %489 = zext i1 %488 to i32
  %490 = call i32 @assert(i32 %489)
  %491 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* %9, align 4
  %495 = icmp eq i32 %493, %494
  %496 = zext i1 %495 to i32
  %497 = call i32 @assert(i32 %496)
  br label %504

498:                                              ; preds = %424
  %499 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %502, i32 0, i32 1
  store i32 %501, i32* %503, align 4
  br label %504

504:                                              ; preds = %498, %483
  %505 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %506 = call i32 @recomputeColumnsNotIndexed(%struct.TYPE_31__* %505)
  br label %507

507:                                              ; preds = %504, %438, %323, %146, %97
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i32 @sqlite3TokenInit(i32*, i32) #1

declare dso_local %struct.TYPE_32__* @sqlite3ExprListAppend(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAlloc(%struct.TYPE_28__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3RenameTokenRemap(%struct.TYPE_30__*, i32, i64*) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_30__*, i32, i32, i32, %struct.TYPE_32__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_31__* @sqlite3PrimaryKeyIndex(%struct.TYPE_29__*) #1

declare dso_local i64 @isDupColumn(%struct.TYPE_31__*, i32, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @hasColumn(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeOpcode(i32*, i64, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_31__*) #1

declare dso_local i64 @resizeIndexObject(%struct.TYPE_28__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @recomputeColumnsNotIndexed(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
