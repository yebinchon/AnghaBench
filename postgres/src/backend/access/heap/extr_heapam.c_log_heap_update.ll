; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i64, i32, i8*, i64, i32 }
%struct.TYPE_17__ = type { i64, i32, i32 }

@XLOG_HEAP_HOT_UPDATE = common dso_local global i32 0, align 4
@XLOG_HEAP_UPDATE = common dso_local global i32 0, align 4
@XLH_UPDATE_OLD_ALL_VISIBLE_CLEARED = common dso_local global i32 0, align 4
@XLH_UPDATE_NEW_ALL_VISIBLE_CLEARED = common dso_local global i32 0, align 4
@XLH_UPDATE_PREFIX_FROM_OLD = common dso_local global i32 0, align 4
@XLH_UPDATE_SUFFIX_FROM_OLD = common dso_local global i32 0, align 4
@XLH_UPDATE_CONTAINS_NEW_TUPLE = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@XLH_UPDATE_CONTAINS_OLD_TUPLE = common dso_local global i32 0, align 4
@XLH_UPDATE_CONTAINS_OLD_KEY = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@XLOG_HEAP_INIT_PAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_KEEP_DATA = common dso_local global i32 0, align 4
@SizeOfHeapUpdate = common dso_local global i64 0, align 8
@SizeofHeapTupleHeader = common dso_local global i64 0, align 8
@SizeOfHeapHeader = common dso_local global i64 0, align 8
@XLOG_INCLUDE_ORIGIN = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i64, i64, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)* @log_heap_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_heap_update(%struct.TYPE_18__* %0, i64 %1, i64 %2, %struct.TYPE_19__* %3, %struct.TYPE_19__* %4, %struct.TYPE_19__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca %struct.TYPE_17__, align 8
  %19 = alloca %struct.TYPE_17__, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x i64], align 16
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @BufferGetPage(i64 %33)
  store i32 %34, i32* %25, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = call i32 @RelationIsLogicallyLogged(%struct.TYPE_18__* %35)
  store i32 %36, i32* %26, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %38 = call i32 @RelationNeedsWAL(%struct.TYPE_18__* %37)
  %39 = call i32 @Assert(i32 %38)
  %40 = call i32 (...) @XLogBeginInsert()
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %42 = call i64 @HeapTupleIsHeapOnly(%struct.TYPE_19__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %8
  %45 = load i32, i32* @XLOG_HEAP_HOT_UPDATE, align 4
  store i32 %45, i32* %20, align 4
  br label %48

46:                                               ; preds = %8
  %47 = load i32, i32* @XLOG_HEAP_UPDATE, align 4
  store i32 %47, i32* %20, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %166

52:                                               ; preds = %48
  %53 = load i32, i32* %26, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %166, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @XLogCheckBufferNeedsBackup(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %166, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = bitcast %struct.TYPE_14__* %62 to i8*
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  store i8* %70, i8** %29, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = bitcast %struct.TYPE_14__* %73 to i8*
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %74, i64 %80
  store i8* %81, i8** %30, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %84, %89
  store i32 %90, i32* %31, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %93, %98
  store i32 %99, i32* %32, align 4
  store i64 0, i64* %22, align 8
  br label %100

100:                                              ; preds = %120, %59
  %101 = load i64, i64* %22, align 8
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* %32, align 4
  %104 = call i64 @Min(i32 %102, i32 %103)
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i8*, i8** %30, align 8
  %108 = load i64, i64* %22, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8*, i8** %29, align 8
  %113 = load i64, i64* %22, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %123

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %22, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %22, align 8
  br label %100

123:                                              ; preds = %118, %100
  %124 = load i64, i64* %22, align 8
  %125 = icmp ult i64 %124, 3
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i64 0, i64* %22, align 8
  br label %127

127:                                              ; preds = %126, %123
  store i64 0, i64* %23, align 8
  br label %128

128:                                              ; preds = %158, %127
  %129 = load i64, i64* %23, align 8
  %130 = load i32, i32* %31, align 4
  %131 = load i32, i32* %32, align 4
  %132 = call i64 @Min(i32 %130, i32 %131)
  %133 = load i64, i64* %22, align 8
  %134 = sub i64 %132, %133
  %135 = icmp ult i64 %129, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %128
  %137 = load i8*, i8** %30, align 8
  %138 = load i32, i32* %32, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %23, align 8
  %141 = sub i64 %139, %140
  %142 = sub i64 %141, 1
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8*, i8** %29, align 8
  %147 = load i32, i32* %31, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %23, align 8
  %150 = sub i64 %148, %149
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %145, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %136
  br label %161

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %23, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %23, align 8
  br label %128

161:                                              ; preds = %156, %128
  %162 = load i64, i64* %23, align 8
  %163 = icmp ult i64 %162, 3
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i64 0, i64* %23, align 8
  br label %165

165:                                              ; preds = %164, %161
  br label %166

166:                                              ; preds = %165, %55, %52, %48
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  store i32 0, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* @XLH_UPDATE_OLD_ALL_VISIBLE_CLEARED, align 4
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %170, %166
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, i32* @XLH_UPDATE_NEW_ALL_VISIBLE_CLEARED, align 4
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %179
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %178, %175
  %184 = load i64, i64* %22, align 8
  %185 = icmp ugt i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i32, i32* @XLH_UPDATE_PREFIX_FROM_OLD, align 4
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %187
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %186, %183
  %192 = load i64, i64* %23, align 8
  %193 = icmp ugt i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* @XLH_UPDATE_SUFFIX_FROM_OLD, align 4
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %195
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %194, %191
  %200 = load i32, i32* %26, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %199
  %203 = load i32, i32* @XLH_UPDATE_CONTAINS_NEW_TUPLE, align 4
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %208 = icmp ne %struct.TYPE_19__* %207, null
  br i1 %208, label %209, label %228

209:                                              ; preds = %202
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %209
  %218 = load i32, i32* @XLH_UPDATE_CONTAINS_OLD_TUPLE, align 4
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %218
  store i32 %221, i32* %219, align 8
  br label %227

222:                                              ; preds = %209
  %223 = load i32, i32* @XLH_UPDATE_CONTAINS_OLD_KEY, align 4
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %223
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %222, %217
  br label %228

228:                                              ; preds = %227, %202
  br label %229

229:                                              ; preds = %228, %199
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = call i64 @ItemPointerGetOffsetNumber(i32* %231)
  %233 = load i64, i64* @FirstOffsetNumber, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %244

235:                                              ; preds = %229
  %236 = load i32, i32* %25, align 4
  %237 = call i64 @PageGetMaxOffsetNumber(i32 %236)
  %238 = load i64, i64* @FirstOffsetNumber, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32, i32* @XLOG_HEAP_INIT_PAGE, align 4
  %242 = load i32, i32* %20, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %20, align 4
  store i32 1, i32* %27, align 4
  br label %245

244:                                              ; preds = %235, %229
  store i32 0, i32* %27, align 4
  br label %245

245:                                              ; preds = %244, %240
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 2
  %248 = call i64 @ItemPointerGetOffsetNumber(i32* %247)
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store i64 %248, i64* %249, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %252)
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  store i8* %253, i8** %254, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @compute_infobits(i32 %259, i32 %264)
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  store i32 %265, i32* %266, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  %269 = call i64 @ItemPointerGetOffsetNumber(i32* %268)
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store i64 %269, i64* %270, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %273)
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i8* %274, i8** %275, align 8
  %276 = load i32, i32* @REGBUF_STANDARD, align 4
  store i32 %276, i32* %28, align 4
  %277 = load i32, i32* %27, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %245
  %280 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %281 = load i32, i32* %28, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %28, align 4
  br label %283

283:                                              ; preds = %279, %245
  %284 = load i32, i32* %26, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load i32, i32* @REGBUF_KEEP_DATA, align 4
  %288 = load i32, i32* %28, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %28, align 4
  br label %290

290:                                              ; preds = %286, %283
  %291 = load i64, i64* %11, align 8
  %292 = load i32, i32* %28, align 4
  %293 = call i32 @XLogRegisterBuffer(i32 0, i64 %291, i32 %292)
  %294 = load i64, i64* %10, align 8
  %295 = load i64, i64* %11, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %290
  %298 = load i64, i64* %10, align 8
  %299 = load i32, i32* @REGBUF_STANDARD, align 4
  %300 = call i32 @XLogRegisterBuffer(i32 1, i64 %298, i32 %299)
  br label %301

301:                                              ; preds = %297, %290
  %302 = bitcast %struct.TYPE_16__* %17 to i8*
  %303 = load i64, i64* @SizeOfHeapUpdate, align 8
  %304 = call i32 @XLogRegisterData(i8* %302, i64 %303)
  %305 = load i64, i64* %22, align 8
  %306 = icmp ugt i64 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %301
  %308 = load i64, i64* %23, align 8
  %309 = icmp ugt i64 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %307, %301
  %311 = load i64, i64* %22, align 8
  %312 = icmp ugt i64 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %310
  %314 = load i64, i64* %23, align 8
  %315 = icmp ugt i64 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = load i64, i64* %22, align 8
  %318 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  store i64 %317, i64* %318, align 16
  %319 = load i64, i64* %23, align 8
  %320 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 1
  store i64 %319, i64* %320, align 8
  %321 = bitcast [2 x i64]* %21 to i8*
  %322 = call i32 @XLogRegisterBufData(i32 0, i8* %321, i64 16)
  br label %333

323:                                              ; preds = %313, %310
  %324 = load i64, i64* %22, align 8
  %325 = icmp ugt i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = bitcast i64* %22 to i8*
  %328 = call i32 @XLogRegisterBufData(i32 0, i8* %327, i64 8)
  br label %332

329:                                              ; preds = %323
  %330 = bitcast i64* %23 to i8*
  %331 = call i32 @XLogRegisterBufData(i32 0, i8* %330, i64 8)
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %316
  br label %334

334:                                              ; preds = %333, %307
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  store i32 %339, i32* %340, align 4
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  store i32 %345, i32* %346, align 8
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  store i64 %352, i64* %353, align 8
  %354 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %355 = load i64, i64* %22, align 8
  %356 = add i64 %354, %355
  %357 = load i64, i64* %23, align 8
  %358 = add i64 %356, %357
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = icmp ule i64 %358, %362
  %364 = zext i1 %363 to i32
  %365 = call i32 @Assert(i32 %364)
  %366 = bitcast %struct.TYPE_17__* %18 to i8*
  %367 = load i64, i64* @SizeOfHeapHeader, align 8
  %368 = call i32 @XLogRegisterBufData(i32 0, i8* %366, i64 %367)
  %369 = load i64, i64* %22, align 8
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %387

371:                                              ; preds = %334
  %372 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %373, align 8
  %375 = bitcast %struct.TYPE_14__* %374 to i8*
  %376 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %377 = getelementptr inbounds i8, i8* %375, i64 %376
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %383 = sub nsw i64 %381, %382
  %384 = load i64, i64* %23, align 8
  %385 = sub i64 %383, %384
  %386 = call i32 @XLogRegisterBufData(i32 0, i8* %377, i64 %385)
  br label %442

387:                                              ; preds = %334
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  %394 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %395 = sub nsw i64 %393, %394
  %396 = icmp sgt i64 %395, 0
  br i1 %396, label %397, label %413

397:                                              ; preds = %387
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %399, align 8
  %401 = bitcast %struct.TYPE_14__* %400 to i8*
  %402 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %403 = getelementptr inbounds i8, i8* %401, i64 %402
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %411 = sub nsw i64 %409, %410
  %412 = call i32 @XLogRegisterBufData(i32 0, i8* %403, i64 %411)
  br label %413

413:                                              ; preds = %397, %387
  %414 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %415, align 8
  %417 = bitcast %struct.TYPE_14__* %416 to i8*
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, i8* %417, i64 %423
  %425 = load i64, i64* %22, align 8
  %426 = getelementptr inbounds i8, i8* %424, i64 %425
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = sub nsw i32 %429, %434
  %436 = sext i32 %435 to i64
  %437 = load i64, i64* %22, align 8
  %438 = sub i64 %436, %437
  %439 = load i64, i64* %23, align 8
  %440 = sub i64 %438, %439
  %441 = call i32 @XLogRegisterBufData(i32 0, i8* %426, i64 %440)
  br label %442

442:                                              ; preds = %413, %371
  %443 = load i32, i32* %26, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %484

445:                                              ; preds = %442
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %447 = icmp ne %struct.TYPE_19__* %446, null
  br i1 %447, label %448, label %484

448:                                              ; preds = %445
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_14__*, %struct.TYPE_14__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  store i32 %453, i32* %454, align 4
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i32 %459, i32* %460, align 8
  %461 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %462 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i64 %466, i64* %467, align 8
  %468 = bitcast %struct.TYPE_17__* %19 to i8*
  %469 = load i64, i64* @SizeOfHeapHeader, align 8
  %470 = call i32 @XLogRegisterData(i8* %468, i64 %469)
  %471 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %472 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %472, align 8
  %474 = bitcast %struct.TYPE_14__* %473 to i8*
  %475 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %476 = getelementptr inbounds i8, i8* %474, i64 %475
  %477 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = sext i32 %479 to i64
  %481 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %482 = sub nsw i64 %480, %481
  %483 = call i32 @XLogRegisterData(i8* %476, i64 %482)
  br label %484

484:                                              ; preds = %448, %445, %442
  %485 = load i32, i32* @XLOG_INCLUDE_ORIGIN, align 4
  %486 = call i32 @XLogSetRecordFlags(i32 %485)
  %487 = load i32, i32* @RM_HEAP_ID, align 4
  %488 = load i32, i32* %20, align 4
  %489 = call i32 @XLogInsert(i32 %487, i32 %488)
  store i32 %489, i32* %24, align 4
  %490 = load i32, i32* %24, align 4
  ret i32 %490
}

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @RelationIsLogicallyLogged(%struct.TYPE_18__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationNeedsWAL(%struct.TYPE_18__*) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i64 @HeapTupleIsHeapOnly(%struct.TYPE_19__*) #1

declare dso_local i32 @XLogCheckBufferNeedsBackup(i64) #1

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__*) #1

declare dso_local i32 @compute_infobits(i32, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i64) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i64) #1

declare dso_local i32 @XLogSetRecordFlags(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
