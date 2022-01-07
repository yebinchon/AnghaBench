; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_do_store_item.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_do_store_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__*, i64, i64 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, i32 }

@DONT_UPDATE = common dso_local global i32 0, align 4
@NOT_STORED = common dso_local global i32 0, align 4
@NREAD_ADD = common dso_local global i32 0, align 4
@NREAD_REPLACE = common dso_local global i32 0, align 4
@NREAD_APPEND = common dso_local global i32 0, align 4
@NREAD_PREPEND = common dso_local global i32 0, align 4
@NREAD_CAS = common dso_local global i32 0, align 4
@NOT_FOUND = common dso_local global i32 0, align 4
@STORED = common dso_local global i32 0, align 4
@ITEM_STALE = common dso_local global i32 0, align 4
@ITEM_TOKEN_SENT = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CAS:  failure: expected %llu, got %llu\0A\00", align 1
@EXISTS = common dso_local global i32 0, align 4
@LOG_MUTATIONS = common dso_local global i32 0, align 4
@LOGGER_ITEM_STORE = common dso_local global i32 0, align 4
@ITEM_HDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_store_item(%struct.TYPE_29__* %0, i32 %1, %struct.TYPE_30__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %16 = call i8* @ITEM_key(%struct.TYPE_29__* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %23 = load i32, i32* @DONT_UPDATE, align 4
  %24 = call %struct.TYPE_29__* @do_item_get(i8* %17, i32 %20, i32 %21, %struct.TYPE_30__* %22, i32 %23)
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %10, align 8
  %25 = load i32, i32* @NOT_STORED, align 4
  store i32 %25, i32* %11, align 4
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %12, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %27 = icmp ne %struct.TYPE_29__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NREAD_ADD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %34 = call i32 @do_item_update(%struct.TYPE_29__* %33)
  br label %334

35:                                               ; preds = %28, %4
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %37 = icmp ne %struct.TYPE_29__* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @NREAD_REPLACE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NREAD_APPEND, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NREAD_PREPEND, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42, %38
  br label %333

51:                                               ; preds = %46, %35
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NREAD_CAS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %232

55:                                               ; preds = %51
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %57 = icmp eq %struct.TYPE_29__* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i32, i32* @NOT_FOUND, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = call i32 @pthread_mutex_lock(i32* %64)
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  br label %231

79:                                               ; preds = %55
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %81 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %80)
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %83 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %82)
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %79
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = call i32 @pthread_mutex_lock(i32* %90)
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %96, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %99 = call i64 @ITEM_clsid(%struct.TYPE_29__* %98)
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = call i32 @pthread_mutex_unlock(i32* %108)
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %116 = call i32 @STORAGE_delete(i32 %114, %struct.TYPE_29__* %115)
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @item_replace(%struct.TYPE_29__* %117, %struct.TYPE_29__* %118, i32 %119)
  %121 = load i32, i32* @STORED, align 4
  store i32 %121, i32* %11, align 4
  br label %230

122:                                              ; preds = %79
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %122
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %129 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %128)
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %131 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %130)
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %193

133:                                              ; preds = %127
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @ITEM_STALE, align 4
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %133
  %151 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %133
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = call i32 @pthread_mutex_lock(i32* %161)
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %167, align 8
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %170 = call i64 @ITEM_clsid(%struct.TYPE_29__* %169)
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = call i32 @pthread_mutex_unlock(i32* %179)
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %187 = call i32 @STORAGE_delete(i32 %185, %struct.TYPE_29__* %186)
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @item_replace(%struct.TYPE_29__* %188, %struct.TYPE_29__* %189, i32 %190)
  %192 = load i32, i32* @STORED, align 4
  store i32 %192, i32* %11, align 4
  br label %229

193:                                              ; preds = %127, %122
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = call i32 @pthread_mutex_lock(i32* %198)
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %207 = call i64 @ITEM_clsid(%struct.TYPE_29__* %206)
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = call i32 @pthread_mutex_unlock(i32* %216)
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @settings, i32 0, i32 0), align 4
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %227

220:                                              ; preds = %193
  %221 = load i32, i32* @stderr, align 4
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %223 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %222)
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %225 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %224)
  %226 = call i32 @fprintf(i32 %221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %223, i64 %225)
  br label %227

227:                                              ; preds = %220, %193
  %228 = load i32, i32* @EXISTS, align 4
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %227, %156
  br label %230

230:                                              ; preds = %229, %85
  br label %231

231:                                              ; preds = %230, %58
  br label %332

232:                                              ; preds = %51
  store i32 0, i32* %14, align 4
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* @NREAD_APPEND, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @NREAD_PREPEND, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %299

240:                                              ; preds = %236, %232
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %242 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %246 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %245)
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %248 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %247)
  %249 = icmp ne i64 %246, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i32, i32* @EXISTS, align 4
  store i32 %251, i32* %11, align 4
  br label %252

252:                                              ; preds = %250, %244
  br label %253

253:                                              ; preds = %252, %240
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @NOT_STORED, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %298

257:                                              ; preds = %253
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @FLAGS_CONV(%struct.TYPE_29__* %258, i32 %259)
  %261 = load i8*, i8** %9, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %271, %274
  %276 = sub nsw i64 %275, 2
  %277 = call %struct.TYPE_29__* @do_item_alloc(i8* %261, i32 %264, i32 %265, i32 %268, i64 %276)
  store %struct.TYPE_29__* %277, %struct.TYPE_29__** %12, align 8
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %279 = icmp eq %struct.TYPE_29__* %278, null
  br i1 %279, label %287, label %280

280:                                              ; preds = %257
  %281 = load i32, i32* %6, align 4
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %285 = call i32 @_store_item_copy_data(i32 %281, %struct.TYPE_29__* %282, %struct.TYPE_29__* %283, %struct.TYPE_29__* %284)
  %286 = icmp eq i32 %285, -1
  br i1 %286, label %287, label %295

287:                                              ; preds = %280, %257
  store i32 1, i32* %14, align 4
  %288 = load i32, i32* @NOT_STORED, align 4
  store i32 %288, i32* %11, align 4
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %290 = icmp ne %struct.TYPE_29__* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %293 = call i32 @item_remove(%struct.TYPE_29__* %292)
  br label %294

294:                                              ; preds = %291, %287
  br label %297

295:                                              ; preds = %280
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %296, %struct.TYPE_29__** %5, align 8
  br label %297

297:                                              ; preds = %295, %294
  br label %298

298:                                              ; preds = %297, %253
  br label %299

299:                                              ; preds = %298, %236
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @NOT_STORED, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %331

303:                                              ; preds = %299
  %304 = load i32, i32* %14, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %331

306:                                              ; preds = %303
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %308 = icmp ne %struct.TYPE_29__* %307, null
  br i1 %308, label %309, label %321

309:                                              ; preds = %306
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %316 = call i32 @STORAGE_delete(i32 %314, %struct.TYPE_29__* %315)
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %318 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @item_replace(%struct.TYPE_29__* %317, %struct.TYPE_29__* %318, i32 %319)
  br label %325

321:                                              ; preds = %306
  %322 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %323 = load i32, i32* %8, align 4
  %324 = call i32 @do_item_link(%struct.TYPE_29__* %322, i32 %323)
  br label %325

325:                                              ; preds = %321, %309
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %327 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %326)
  %328 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 2
  store i64 %327, i64* %329, align 8
  %330 = load i32, i32* @STORED, align 4
  store i32 %330, i32* %11, align 4
  br label %331

331:                                              ; preds = %325, %303, %299
  br label %332

332:                                              ; preds = %331, %231
  br label %333

333:                                              ; preds = %332, %50
  br label %334

334:                                              ; preds = %333, %32
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %336 = icmp ne %struct.TYPE_29__* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %339 = call i32 @do_item_remove(%struct.TYPE_29__* %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %342 = icmp ne %struct.TYPE_29__* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %345 = call i32 @do_item_remove(%struct.TYPE_29__* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32, i32* %11, align 4
  %348 = load i32, i32* @STORED, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %355

350:                                              ; preds = %346
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %352 = call i64 @ITEM_get_cas(%struct.TYPE_29__* %351)
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 2
  store i64 %352, i64* %354, align 8
  br label %355

355:                                              ; preds = %350, %346
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @LOG_MUTATIONS, align 4
  %362 = load i32, i32* @LOGGER_ITEM_STORE, align 4
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* %6, align 4
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %366 = call i8* @ITEM_key(%struct.TYPE_29__* %365)
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %374 = call i64 @ITEM_clsid(%struct.TYPE_29__* %373)
  %375 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @LOGGER_LOG(i32 %360, i32 %361, i32 %362, i32* null, i32 %363, i32 %364, i8* %366, i32 %369, i32 %372, i64 %374, i32 %377)
  %379 = load i32, i32* %11, align 4
  ret i32 %379
}

declare dso_local i8* @ITEM_key(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @do_item_get(i8*, i32, i32, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @do_item_update(%struct.TYPE_29__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @ITEM_get_cas(%struct.TYPE_29__*) #1

declare dso_local i64 @ITEM_clsid(%struct.TYPE_29__*) #1

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @item_replace(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @FLAGS_CONV(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_29__* @do_item_alloc(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @_store_item_copy_data(i32, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @item_remove(%struct.TYPE_29__*) #1

declare dso_local i32 @do_item_link(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @do_item_remove(%struct.TYPE_29__*) #1

declare dso_local i32 @LOGGER_LOG(i32, i32, i32, i32*, i32, i32, i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
