; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeCreateTable.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeCreateTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32, %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@TRANS_WRITE = common dso_local global i64 0, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@BTREE_LARGEST_ROOT_PAGE = common dso_local global i32 0, align 4
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
  br i1 %41, label %42, label %202

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
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @BTALLOC_EXACT, align 4
  %74 = call i32 @allocateBtreePage(%struct.TYPE_26__* %71, %struct.TYPE_24__** %14, i32* %13, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %254

80:                                               ; preds = %66
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %170

84:                                               ; preds = %80
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = call i32 @saveAllCursors(%struct.TYPE_26__* %85, i32 0, i32 0)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %88 = call i32 @releasePage(%struct.TYPE_24__* %87)
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %254

94:                                               ; preds = %84
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @btreeGetPage(%struct.TYPE_26__* %95, i32 %96, %struct.TYPE_24__** %9, i32 0, i32 0)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %254

103:                                              ; preds = %94
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @ptrmapGet(%struct.TYPE_26__* %104, i32 %105, i64* %15, i32* %16)
  store i32 %106, i32* %11, align 4
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* @PTRMAP_FREEPAGE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %103
  %115 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @SQLITE_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %122 = call i32 @releasePage(%struct.TYPE_24__* %121)
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %4, align 4
  br label %254

124:                                              ; preds = %116
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %127 = icmp ne i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @PTRMAP_FREEPAGE, align 8
  %132 = icmp ne i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @relocatePage(%struct.TYPE_26__* %135, %struct.TYPE_24__* %136, i64 %137, i32 %138, i32 %139, i32 0)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %142 = call i32 @releasePage(%struct.TYPE_24__* %141)
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @SQLITE_OK, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %124
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %254

148:                                              ; preds = %124
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @btreeGetPage(%struct.TYPE_26__* %149, i32 %150, %struct.TYPE_24__** %9, i32 0, i32 0)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @SQLITE_OK, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %254

157:                                              ; preds = %148
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sqlite3PagerWrite(i32 %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @SQLITE_OK, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %167 = call i32 @releasePage(%struct.TYPE_24__* %166)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %4, align 4
  br label %254

169:                                              ; preds = %157
  br label %172

170:                                              ; preds = %80
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %171, %struct.TYPE_24__** %9, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %176 = call i32 @ptrmapPut(%struct.TYPE_26__* %173, i32 %174, i64 %175, i32 0, i32* %11)
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %181 = call i32 @releasePage(%struct.TYPE_24__* %180)
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %4, align 4
  br label %254

183:                                              ; preds = %172
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sqlite3PagerIswriteable(i32 %188)
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_25__* %191, i32 4, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i64 @NEVER(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %183
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %199 = call i32 @releasePage(%struct.TYPE_24__* %198)
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %4, align 4
  br label %254

201:                                              ; preds = %183
  br label %210

202:                                              ; preds = %3
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %204 = call i32 @allocateBtreePage(%struct.TYPE_26__* %203, %struct.TYPE_24__** %9, i32* %10, i32 1, i32 0)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, i32* %11, align 4
  store i32 %208, i32* %4, align 4
  br label %254

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %209, %201
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @sqlite3PagerIswriteable(i32 %213)
  %215 = call i32 @assert(i32 %214)
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @BTREE_INTKEY, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %210
  %221 = load i32, i32* @PTF_INTKEY, align 4
  %222 = load i32, i32* @PTF_LEAFDATA, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @PTF_LEAF, align 4
  %225 = or i32 %223, %224
  store i32 %225, i32* %12, align 4
  br label %230

226:                                              ; preds = %210
  %227 = load i32, i32* @PTF_ZERODATA, align 4
  %228 = load i32, i32* @PTF_LEAF, align 4
  %229 = or i32 %227, %228
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %226, %220
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @zeroPage(%struct.TYPE_24__* %231, i32 %232)
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @sqlite3PagerUnref(i32 %236)
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @BTREE_SINGLE, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %230
  %245 = load i32, i32* %10, align 4
  %246 = icmp eq i32 %245, 2
  br label %247

247:                                              ; preds = %244, %230
  %248 = phi i1 [ true, %230 ], [ %246, %244 ]
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = load i32, i32* %10, align 4
  %252 = load i32*, i32** %6, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32, i32* @SQLITE_OK, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %247, %207, %197, %179, %165, %155, %146, %120, %101, %92, %78
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_25__*) #1

declare dso_local i32 @invalidateAllOverflowCache(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3BtreeGetMeta(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @PTRMAP_PAGENO(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_26__*) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_26__*, %struct.TYPE_24__**, i32*, i32, i32) #1

declare dso_local i32 @saveAllCursors(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_24__*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_26__*, i32, %struct.TYPE_24__**, i32, i32) #1

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
