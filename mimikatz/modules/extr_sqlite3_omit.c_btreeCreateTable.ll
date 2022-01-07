; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_btreeCreateTable.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_btreeCreateTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32, %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@TRANS_WRITE = common dso_local global i64 0, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@BTREE_LARGEST_ROOT_PAGE = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@BTALLOC_EXACT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i64 0, align 8
@PTRMAP_FREEPAGE = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@BTREE_INTKEY = common dso_local global i32 0, align 4
@PTF_INTKEY = common dso_local global i32 0, align 4
@PTF_LEAFDATA = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@PTF_ZERODATA = common dso_local global i32 0, align 4
@BTREE_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, i32)* @btreeCreateTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeCreateTable(%struct.TYPE_25__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %8, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_25__* %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TRANS_WRITE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BTS_READ_ONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %211

42:                                               ; preds = %3
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %44 = call i32 @invalidateAllOverflowCache(%struct.TYPE_26__* %43)
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = load i32, i32* @BTREE_LARGEST_ROOT_PAGE, align 4
  %47 = call i32 @sqlite3BtreeGetMeta(%struct.TYPE_25__* %45, i32 %46, i32* %10)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %63, %42
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @PTRMAP_PAGENO(%struct.TYPE_26__* %52, i32 %53)
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %59 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_26__* %58)
  %60 = icmp eq i32 %57, %59
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i1 [ true, %50 ], [ %60, %56 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %50

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = icmp sge i32 %67, 3
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @CORRUPT_DB, align 8
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ true, %66 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 3
  %78 = zext i1 %77 to i32
  %79 = call i32 @testcase(i32 %78)
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @BTALLOC_EXACT, align 4
  %83 = call i32 @allocateBtreePage(%struct.TYPE_26__* %80, %struct.TYPE_24__** %14, i32* %13, i32 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %263

89:                                               ; preds = %72
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %179

93:                                               ; preds = %89
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %95 = call i32 @saveAllCursors(%struct.TYPE_26__* %94, i32 0, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %97 = call i32 @releasePage(%struct.TYPE_24__* %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %263

103:                                              ; preds = %93
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @btreeGetPage(%struct.TYPE_26__* %104, i32 %105, %struct.TYPE_24__** %9, i32 0)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  br label %263

112:                                              ; preds = %103
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @ptrmapGet(%struct.TYPE_26__* %113, i32 %114, i64* %15, i32* %16)
  store i32 %115, i32* %11, align 4
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* @PTRMAP_FREEPAGE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %112
  %124 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %131 = call i32 @releasePage(%struct.TYPE_24__* %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %263

133:                                              ; preds = %125
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %136 = icmp ne i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* @PTRMAP_FREEPAGE, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @relocatePage(%struct.TYPE_26__* %144, %struct.TYPE_24__* %145, i64 %146, i32 %147, i32 %148, i32 0)
  store i32 %149, i32* %11, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %151 = call i32 @releasePage(%struct.TYPE_24__* %150)
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @SQLITE_OK, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %133
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %263

157:                                              ; preds = %133
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @btreeGetPage(%struct.TYPE_26__* %158, i32 %159, %struct.TYPE_24__** %9, i32 0)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @SQLITE_OK, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %4, align 4
  br label %263

166:                                              ; preds = %157
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @sqlite3PagerWrite(i32 %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @SQLITE_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %176 = call i32 @releasePage(%struct.TYPE_24__* %175)
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %4, align 4
  br label %263

178:                                              ; preds = %166
  br label %181

179:                                              ; preds = %89
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %180, %struct.TYPE_24__** %9, align 8
  br label %181

181:                                              ; preds = %179, %178
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %185 = call i32 @ptrmapPut(%struct.TYPE_26__* %182, i32 %183, i64 %184, i32 0, i32* %11)
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %190 = call i32 @releasePage(%struct.TYPE_24__* %189)
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %263

192:                                              ; preds = %181
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @sqlite3PagerIswriteable(i32 %197)
  %199 = call i32 @assert(i32 %198)
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_25__* %200, i32 4, i32 %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i64 @NEVER(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %192
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %208 = call i32 @releasePage(%struct.TYPE_24__* %207)
  %209 = load i32, i32* %11, align 4
  store i32 %209, i32* %4, align 4
  br label %263

210:                                              ; preds = %192
  br label %219

211:                                              ; preds = %3
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %213 = call i32 @allocateBtreePage(%struct.TYPE_26__* %212, %struct.TYPE_24__** %9, i32* %10, i32 1, i32 0)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %4, align 4
  br label %263

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %210
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @sqlite3PagerIswriteable(i32 %222)
  %224 = call i32 @assert(i32 %223)
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @BTREE_INTKEY, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %219
  %230 = load i32, i32* @PTF_INTKEY, align 4
  %231 = load i32, i32* @PTF_LEAFDATA, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @PTF_LEAF, align 4
  %234 = or i32 %232, %233
  store i32 %234, i32* %12, align 4
  br label %239

235:                                              ; preds = %219
  %236 = load i32, i32* @PTF_ZERODATA, align 4
  %237 = load i32, i32* @PTF_LEAF, align 4
  %238 = or i32 %236, %237
  store i32 %238, i32* %12, align 4
  br label %239

239:                                              ; preds = %235, %229
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @zeroPage(%struct.TYPE_24__* %240, i32 %241)
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @sqlite3PagerUnref(i32 %245)
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @BTREE_SINGLE, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %239
  %254 = load i32, i32* %10, align 4
  %255 = icmp eq i32 %254, 2
  br label %256

256:                                              ; preds = %253, %239
  %257 = phi i1 [ true, %239 ], [ %255, %253 ]
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load i32, i32* %10, align 4
  %261 = load i32*, i32** %6, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i32, i32* @SQLITE_OK, align 4
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %256, %216, %206, %188, %174, %164, %155, %129, %110, %101, %87
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_25__*) #1

declare dso_local i32 @invalidateAllOverflowCache(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3BtreeGetMeta(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @PTRMAP_PAGENO(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_26__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_26__*, %struct.TYPE_24__**, i32*, i32, i32) #1

declare dso_local i32 @saveAllCursors(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_24__*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_26__*, i32, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @ptrmapGet(%struct.TYPE_26__*, i32, i64*, i32*) #1

declare dso_local i32 @relocatePage(%struct.TYPE_26__*, %struct.TYPE_24__*, i64, i32, i32, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_26__*, i32, i64, i32, i32*) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @zeroPage(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3PagerUnref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
