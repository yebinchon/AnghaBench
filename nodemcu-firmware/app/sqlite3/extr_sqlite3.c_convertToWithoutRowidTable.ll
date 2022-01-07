; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_convertToWithoutRowidTable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_convertToWithoutRowidTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, i32, i64, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_27__*, i64, i32, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { i32, i32*, i32, i32, i32, i32*, %struct.TYPE_27__*, i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@IN_DECLARE_VTAB = common dso_local global i64 0, align 8
@OP_CreateIndex = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@sqlite3StrBINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @convertToWithoutRowidTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertToWithoutRowidTable(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %10, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load i32, i32* @OE_Abort, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
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
  %60 = load i64, i64* @IN_DECLARE_VTAB, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %446

63:                                               ; preds = %59
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @OP_CreateIndex, align 4
  %77 = call i32 @sqlite3VdbeChangeOpcode(i32* %72, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp uge i64 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %78
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sqlite3TokenInit(i32* %13, i32 %92)
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %96 = load i32, i32* @TK_ID, align 4
  %97 = call i32 @sqlite3ExprAlloc(%struct.TYPE_24__* %95, i32 %96, i32* %13, i32 0)
  %98 = call %struct.TYPE_28__* @sqlite3ExprListAppend(%struct.TYPE_26__* %94, i32 0, i32 %97)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %12, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %100 = icmp eq %struct.TYPE_28__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %83
  br label %446

102:                                              ; preds = %83
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %112, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %115 = icmp eq %struct.TYPE_25__* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %124 = call i32 @sqlite3CreateIndex(%struct.TYPE_26__* %118, i32 0, i32 0, i32 0, %struct.TYPE_28__* %119, i32 %122, i32 0, i32 0, i32 0, i32 0, i32 %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %102
  br label %446

130:                                              ; preds = %102
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %132 = call %struct.TYPE_27__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__* %131)
  store %struct.TYPE_27__* %132, %struct.TYPE_27__** %6, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  store i64 -1, i64* %134, align 8
  br label %203

135:                                              ; preds = %78
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = call %struct.TYPE_27__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__* %136)
  store %struct.TYPE_27__* %137, %struct.TYPE_27__** %6, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32*, i32** %11, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @OP_Goto, align 4
  %153 = call i32 @sqlite3VdbeChangeOpcode(i32* %148, i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %140, %135
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %155

155:                                              ; preds = %196, %154
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %199

161:                                              ; preds = %155
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @hasColumn(i32* %164, i32 %165, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %161
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  br label %195

180:                                              ; preds = %161
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %187, i32* %194, align 4
  br label %195

195:                                              ; preds = %180, %175
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %155

199:                                              ; preds = %155
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %130
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %205 = icmp ne %struct.TYPE_27__* %204, null
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 3
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %203
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 4
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %215, %203
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %7, align 4
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 7
  store i64 %224, i64* %226, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %228, align 8
  store %struct.TYPE_27__* %229, %struct.TYPE_27__** %5, align 8
  br label %230

230:                                              ; preds = %362, %218
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %232 = icmp ne %struct.TYPE_27__* %231, null
  br i1 %232, label %233, label %366

233:                                              ; preds = %230
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %235 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_27__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %362

238:                                              ; preds = %233
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %263, %238
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %266

243:                                              ; preds = %239
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @hasColumn(i32* %246, i32 %249, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %243
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %262

262:                                              ; preds = %259, %243
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %239

266:                                              ; preds = %239
  %267 = load i32, i32* %14, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %362

275:                                              ; preds = %266
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %280, %281
  %283 = call i64 @resizeIndexObject(%struct.TYPE_24__* %276, %struct.TYPE_27__* %277, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %275
  br label %446

286:                                              ; preds = %275
  store i32 0, i32* %8, align 4
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %340, %286
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %343

294:                                              ; preds = %290
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i64 @hasColumn(i32* %297, i32 %300, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %339, label %310

310:                                              ; preds = %294
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  store i32 %317, i32* %323, align 4
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 5
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 5
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %9, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  store i32 %330, i32* %336, align 4
  %337 = load i32, i32* %9, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %9, align 4
  br label %339

339:                                              ; preds = %310, %294
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %8, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %8, align 4
  br label %290

343:                                              ; preds = %290
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %14, align 4
  %351 = add nsw i32 %349, %350
  %352 = icmp sge i32 %346, %351
  %353 = zext i1 %352 to i32
  %354 = call i32 @assert(i32 %353)
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = icmp sge i32 %357, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @assert(i32 %360)
  br label %362

362:                                              ; preds = %343, %269, %237
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %363, i32 0, i32 6
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %364, align 8
  store %struct.TYPE_27__* %365, %struct.TYPE_27__** %5, align 8
  br label %230

366:                                              ; preds = %230
  %367 = load i32, i32* %7, align 4
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp slt i32 %367, %370
  br i1 %371, label %372, label %440

372:                                              ; preds = %366
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @resizeIndexObject(%struct.TYPE_24__* %373, %struct.TYPE_27__* %374, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %372
  br label %446

381:                                              ; preds = %372
  store i32 0, i32* %8, align 4
  %382 = load i32, i32* %7, align 4
  store i32 %382, i32* %9, align 4
  br label %383

383:                                              ; preds = %422, %381
  %384 = load i32, i32* %8, align 4
  %385 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp slt i32 %384, %387
  br i1 %388, label %389, label %425

389:                                              ; preds = %383
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %9, align 4
  %394 = load i32, i32* %8, align 4
  %395 = call i64 @hasColumn(i32* %392, i32 %393, i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %421, label %397

397:                                              ; preds = %389
  %398 = load i32, i32* %9, align 4
  %399 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = icmp slt i32 %398, %401
  %403 = zext i1 %402 to i32
  %404 = call i32 @assert(i32 %403)
  %405 = load i32, i32* %8, align 4
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %406, i32 0, i32 1
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %9, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  store i32 %405, i32* %411, align 4
  %412 = load i32, i32* @sqlite3StrBINARY, align 4
  %413 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 5
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %9, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  store i32 %412, i32* %418, align 4
  %419 = load i32, i32* %9, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %9, align 4
  br label %421

421:                                              ; preds = %397, %389
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %8, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %8, align 4
  br label %383

425:                                              ; preds = %383
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %9, align 4
  %430 = icmp eq i32 %428, %429
  %431 = zext i1 %430 to i32
  %432 = call i32 @assert(i32 %431)
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* %9, align 4
  %437 = icmp eq i32 %435, %436
  %438 = zext i1 %437 to i32
  %439 = call i32 @assert(i32 %438)
  br label %446

440:                                              ; preds = %366
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %444, i32 0, i32 2
  store i32 %443, i32* %445, align 8
  br label %446

446:                                              ; preds = %62, %101, %129, %285, %380, %440, %425
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeOpcode(i32*, i64, i32) #1

declare dso_local i32 @sqlite3TokenInit(i32*, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3ExprListAppend(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAlloc(%struct.TYPE_24__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_28__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__*) #1

declare dso_local i64 @hasColumn(i32*, i32, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_27__*) #1

declare dso_local i64 @resizeIndexObject(%struct.TYPE_24__*, %struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
