; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_readpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i8*, i8*, i64, i8* }
%struct.TYPE_15__ = type { i8*, i8* }

@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i8* null, align 8
@MaxIndexTuplesPerPage = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8**, i32)* @_hash_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hash_readpage(%struct.TYPE_13__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @BufferIsValid(i8* %27)
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %33 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @_hash_checkpage(i32 %30, i8* %31, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @BufferGetPage(i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @PageGetSpecialPointer(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @BufferGetBlockNumber(i8* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 6
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @ScanDirectionIsForward(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %146

54:                                               ; preds = %3
  %55 = load i8*, i8** @InvalidBlockNumber, align 8
  store i8* %55, i8** %15, align 8
  br label %56

56:                                               ; preds = %133, %54
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @_hash_binsearch(i32 %57, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @_hash_load_qualified_items(%struct.TYPE_13__* %62, i32 %63, i32 %64, i32 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %134

70:                                               ; preds = %56
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = call i32 @_hash_kill_items(%struct.TYPE_13__* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %96, label %87

87:                                               ; preds = %78
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %87, %78
  %97 = load i8*, i8** @InvalidBlockNumber, align 8
  store i8* %97, i8** %15, align 8
  br label %102

98:                                               ; preds = %87
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %15, align 8
  br label %102

102:                                              ; preds = %98, %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = call i32 @_hash_readnext(%struct.TYPE_13__* %103, i8** %10, i32* %11, %struct.TYPE_15__** %12)
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @BufferIsValid(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i8*, i8** %10, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @BufferGetBlockNumber(i8* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 6
  store i8* %115, i8** %118, align 8
  br label %133

119:                                              ; preds = %102
  %120 = load i8*, i8** %15, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  store i8* %120, i8** %123, align 8
  %124 = load i8*, i8** @InvalidBlockNumber, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  store i8* %124, i8** %127, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  store i32 0, i32* %4, align 4
  br label %310

133:                                              ; preds = %108
  br label %56

134:                                              ; preds = %69
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %14, align 8
  %139 = sub nsw i64 %138, 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store i64 %139, i64* %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 5
  store i64 0, i64* %145, align 8
  br label %240

146:                                              ; preds = %3
  %147 = load i8*, i8** @InvalidBlockNumber, align 8
  store i8* %147, i8** %16, align 8
  br label %148

148:                                              ; preds = %224, %146
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @_hash_binsearch_last(i32 %149, i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i64 @_hash_load_qualified_items(%struct.TYPE_13__* %154, i32 %155, i32 %156, i32 %157)
  store i64 %158, i64* %14, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* @MaxIndexTuplesPerPage, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %148
  br label %225

163:                                              ; preds = %148
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = call i32 @_hash_kill_items(%struct.TYPE_13__* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %189, label %180

180:                                              ; preds = %171
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %184, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %180, %171
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  store i8* %192, i8** %16, align 8
  br label %193

193:                                              ; preds = %189, %180
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %195 = call i32 @_hash_readprev(%struct.TYPE_13__* %194, i8** %10, i32* %11, %struct.TYPE_15__** %12)
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 @BufferIsValid(i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = load i8*, i8** %10, align 8
  %201 = ptrtoint i8* %200 to i64
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  store i64 %201, i64* %204, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = call i8* @BufferGetBlockNumber(i8* %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 6
  store i8* %206, i8** %209, align 8
  br label %224

210:                                              ; preds = %193
  %211 = load i8*, i8** @InvalidBlockNumber, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 4
  store i8* %211, i8** %214, align 8
  %215 = load i8*, i8** %16, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 3
  store i8* %215, i8** %218, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = ptrtoint i8* %219 to i64
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  store i64 %220, i64* %223, align 8
  store i32 0, i32* %4, align 4
  br label %310

224:                                              ; preds = %199
  br label %148

225:                                              ; preds = %162
  %226 = load i64, i64* %14, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  store i64 %226, i64* %229, align 8
  %230 = load i64, i64* @MaxIndexTuplesPerPage, align 8
  %231 = sub nsw i64 %230, 1
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  store i64 %231, i64* %234, align 8
  %235 = load i64, i64* @MaxIndexTuplesPerPage, align 8
  %236 = sub nsw i64 %235, 1
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 5
  store i64 %236, i64* %239, align 8
  br label %240

240:                                              ; preds = %225, %134
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %244, %247
  br i1 %248, label %258, label %249

249:                                              ; preds = %240
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %253, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %249, %240
  %259 = load i8*, i8** @InvalidBlockNumber, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 4
  store i8* %259, i8** %262, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 3
  store i8* %265, i8** %268, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %274 = call i32 @LockBuffer(i64 %272, i32 %273)
  br label %298

275:                                              ; preds = %249
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 4
  store i8* %278, i8** %281, align 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 3
  store i8* %284, i8** %287, align 8
  %288 = load i32, i32* %8, align 4
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @_hash_relbuf(i32 %288, i64 %292)
  %294 = load i64, i64* @InvalidBuffer, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  store i64 %294, i64* %297, align 8
  br label %298

298:                                              ; preds = %275, %258
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = icmp sle i64 %302, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @Assert(i32 %308)
  store i32 1, i32* %4, align 4
  br label %310

310:                                              ; preds = %298, %210, %119
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i8*) #1

declare dso_local i32 @_hash_checkpage(i32, i8*, i32) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i8* @BufferGetBlockNumber(i8*) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @_hash_binsearch(i32, i32) #1

declare dso_local i64 @_hash_load_qualified_items(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @_hash_kill_items(%struct.TYPE_13__*) #1

declare dso_local i32 @_hash_readnext(%struct.TYPE_13__*, i8**, i32*, %struct.TYPE_15__**) #1

declare dso_local i32 @_hash_binsearch_last(i32, i32) #1

declare dso_local i32 @_hash_readprev(%struct.TYPE_13__*, i8**, i32*, %struct.TYPE_15__**) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
