; ModuleID = '/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_maint_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_maint_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i64, i64, i32, i64, i32, i64, i64 }
%struct.extstore_page_data = type { i64, i64, i32, i64 }

@ULLONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"EXTSTORE: evicting page [%d] [v: %llu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @extstore_maint_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extstore_maint_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.extstore_page_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.extstore_page_data* @calloc(i32 %19, i32 32)
  store %struct.extstore_page_data* %20, %struct.extstore_page_data** %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  br label %24

24:                                               ; preds = %1, %247
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %25 = load i64, i64* @ULLONG_MAX, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = call i32 @pthread_cond_wait(i32* %27, i32* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %24
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %24
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  %48 = load %struct.extstore_page_data*, %struct.extstore_page_data** %5, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 32, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(%struct.extstore_page_data* %48, i32 0, i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %171, %44
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %174

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %10, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 6
  %71 = call i32 @pthread_mutex_lock(i32* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.extstore_page_data*, %struct.extstore_page_data** %5, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %75, i64 %78
  %80 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %79, i32 0, i32 0
  store i64 %74, i64* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %62
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85, %62
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = call i32 @pthread_mutex_unlock(i32* %92)
  br label %171

94:                                               ; preds = %85
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %148

99:                                               ; preds = %94
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %148, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.extstore_page_data*, %struct.extstore_page_data** %5, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %108, i64 %111
  %113 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %112, i32 0, i32 1
  store i64 %107, i64* %113, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.extstore_page_data*, %struct.extstore_page_data** %5, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %117, i64 %120
  %122 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %121, i32 0, i32 3
  store i64 %116, i64* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.extstore_page_data*, %struct.extstore_page_data** %5, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %126, i64 %129
  %131 = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %130, i32 0, i32 2
  store i32 %125, i32* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %104
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %9, align 8
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %142, %136, %104
  br label %148

148:                                              ; preds = %147, %99, %94
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153, %148
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %166 = call i32 @_free_page(%struct.TYPE_12__* %164, %struct.TYPE_10__* %165)
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %163, %158, %153
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 6
  %170 = call i32 @pthread_mutex_unlock(i32* %169)
  br label %171

171:                                              ; preds = %167, %90
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %56

174:                                              ; preds = %56
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %247

177:                                              ; preds = %174
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* @ULLONG_MAX, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %247

181:                                              ; preds = %177
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 %186
  store %struct.TYPE_10__* %187, %struct.TYPE_10__** %11, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @E_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %190, i64 %193)
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 6
  %197 = call i32 @pthread_mutex_lock(i32* %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %243, label %202

202:                                              ; preds = %181
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  store i32 1, i32* %204, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %206 = call i32 @STAT_L(%struct.TYPE_12__* %205)
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %214
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %224
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %227, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = call i32 @STAT_UL(%struct.TYPE_12__* %232)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %202
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %241 = call i32 @_free_page(%struct.TYPE_12__* %239, %struct.TYPE_10__* %240)
  br label %242

242:                                              ; preds = %238, %202
  br label %243

243:                                              ; preds = %242, %181
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 6
  %246 = call i32 @pthread_mutex_unlock(i32* %245)
  br label %247

247:                                              ; preds = %243, %177, %174
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %249 = call i32 @STAT_L(%struct.TYPE_12__* %248)
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.extstore_page_data*, %struct.extstore_page_data** %5, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = mul i64 32, %258
  %260 = trunc i64 %259 to i32
  %261 = call i32 @memcpy(i32 %253, %struct.extstore_page_data* %254, i32 %260)
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %263 = call i32 @STAT_UL(%struct.TYPE_12__* %262)
  br label %24
}

declare dso_local %struct.extstore_page_data* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.extstore_page_data*, i32, i32) #1

declare dso_local i32 @_free_page(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @E_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @STAT_L(%struct.TYPE_12__*) #1

declare dso_local i32 @STAT_UL(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32, %struct.extstore_page_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
