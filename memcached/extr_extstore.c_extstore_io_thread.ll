; ModuleID = '/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_io_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_io_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i32, i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)*, i64, i32, i32, i32, i32*, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"read returned nothing\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @extstore_io_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extstore_io_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %4, align 8
  br label %18

18:                                               ; preds = %1, %254
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = icmp eq %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = call i32 @pthread_cond_wait(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = icmp ne %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %5, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %7, align 8
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %59, %37
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = icmp ne %struct.TYPE_16__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 9
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %7, align 8
  br label %58

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %42

62:                                               ; preds = %57, %42
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 9
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %74, align 8
  br label %75

75:                                               ; preds = %62, %32
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %8, align 8
  br label %80

80:                                               ; preds = %252, %75
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = icmp ne %struct.TYPE_16__* %81, null
  br i1 %82, label %83, label %254

83:                                               ; preds = %80
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 9
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %92
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %12, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %226 [
    i32 129, label %97
    i32 128, label %208
  ]

97:                                               ; preds = %83
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = call i32 @pthread_mutex_lock(i32* %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %158, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %158, label %110

110:                                              ; preds = %105
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %158

118:                                              ; preds = %110
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = call i32 @_read_from_wbuf(%struct.TYPE_13__* %132, %struct.TYPE_16__* %133)
  store i32 %134, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %140

135:                                              ; preds = %123, %118
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %131
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = call i32 @STAT_L(%struct.TYPE_15__* %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = call i32 @STAT_UL(%struct.TYPE_15__* %156)
  br label %159

158:                                              ; preds = %110, %105, %97
  store i32 0, i32* %11, align 4
  store i32 -2, i32* %10, align 4
  br label %159

159:                                              ; preds = %158, %140
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = call i32 @pthread_mutex_unlock(i32* %161)
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %207

165:                                              ; preds = %159
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 7
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %188

170:                                              ; preds = %165
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = call i32 @pread(i32 %173, i32 %176, i32 %179, i64 %186)
  store i32 %187, i32* %10, align 4
  br label %206

188:                                              ; preds = %165
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 7
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %200, %203
  %205 = call i32 @preadv(i32 %191, i32* %194, i32 %197, i64 %204)
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %188, %170
  br label %207

207:                                              ; preds = %206, %159
  br label %226

208:                                              ; preds = %83
  store i32 0, i32* %11, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %220, %223
  %225 = call i32 @pwrite(i32 %211, i32 %214, i32 %217, i64 %224)
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %83, %208, %207
  %227 = load i32, i32* %10, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 @E_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %226
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = load i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)** %233, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 %234(%struct.TYPE_15__* %235, %struct.TYPE_16__* %236, i32 %237)
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %231
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = call i32 @pthread_mutex_lock(i32* %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %246, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = call i32 @pthread_mutex_unlock(i32* %250)
  br label %252

252:                                              ; preds = %241, %231
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %253, %struct.TYPE_16__** %8, align 8
  br label %80

254:                                              ; preds = %80
  br label %18
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @_read_from_wbuf(%struct.TYPE_13__*, %struct.TYPE_16__*) #1

declare dso_local i32 @STAT_L(%struct.TYPE_15__*) #1

declare dso_local i32 @STAT_UL(%struct.TYPE_15__*) #1

declare dso_local i32 @pread(i32, i32, i32, i64) #1

declare dso_local i32 @preadv(i32, i32*, i32, i64) #1

declare dso_local i32 @pwrite(i32, i32, i32, i64) #1

declare dso_local i32 @E_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
