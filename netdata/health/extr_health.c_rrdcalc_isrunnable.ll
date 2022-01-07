; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health.c_rrdcalc_isrunnable.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health.c_rrdcalc_isrunnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i64, i64, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Health not running alarm '%s.%s'. It is not linked to a chart.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NOCHART\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Health not examining alarm '%s.%s' yet (will do in %d secs).\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Health not running alarm '%s.%s'. It does not have an update frequency\00", align 1
@RRDSET_FLAG_OBSOLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"Health not running alarm '%s.%s'. The chart has been marked as obsolete\00", align 1
@RRDSET_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Health not running alarm '%s.%s'. The chart is not enabled\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Health not running alarm '%s.%s'. Chart is not fully collected yet.\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"Health not examining alarm '%s.%s' yet (wanted time is out of bounds - we need %lu but got %lu - %lu).\00", align 1
@.str.8 = private unnamed_addr constant [94 x i8] c"Health not examining alarm '%s.%s' yet (not enough data yet - we need %lu but got %lu - %lu).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i64*)* @rrdcalc_isrunnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrdcalc_isrunnable(%struct.TYPE_9__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @D_HEALTH, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %21, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  store i32 0, i32* %4, align 4
  br label %292

37:                                               ; preds = %3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %37
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i32, i32* @D_HEALTH, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %71 ]
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub nsw i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %76, i32 %82)
  store i32 0, i32* %4, align 4
  br label %292

84:                                               ; preds = %37
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %84
  %94 = load i32, i32* @D_HEALTH, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i8* [ %102, %99 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %103 ]
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %94, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %105, i32 %108)
  store i32 0, i32* %4, align 4
  br label %292

110:                                              ; preds = %84
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* @RRDSET_FLAG_OBSOLETE, align 4
  %115 = call i32 @rrdset_flag_check(%struct.TYPE_10__* %113, i32 %114)
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %110
  %119 = load i32, i32* @D_HEALTH, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  br label %129

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i8* [ %127, %124 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %128 ]
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %119, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i8* %130, i32 %133)
  store i32 0, i32* %4, align 4
  br label %292

135:                                              ; preds = %110
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i32, i32* @RRDSET_FLAG_ENABLED, align 4
  %140 = call i32 @rrdset_flag_check(%struct.TYPE_10__* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %135
  %147 = load i32, i32* @D_HEALTH, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  br label %157

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i8* [ %155, %152 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %156 ]
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %147, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %158, i32 %161)
  store i32 0, i32* %4, align 4
  br label %292

163:                                              ; preds = %135
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %176, 2
  br label %178

178:                                              ; preds = %171, %163
  %179 = phi i1 [ true, %163 ], [ %177, %171 ]
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %178
  %184 = load i32, i32* @D_HEALTH, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  br label %194

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi i8* [ %192, %189 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %193 ]
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %184, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i8* %195, i32 %198)
  store i32 0, i32* %4, align 4
  br label %292

200:                                              ; preds = %178
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %8, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = call i64 @rrdset_first_entry_t(%struct.TYPE_10__* %208)
  store i64 %209, i64* %9, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = call i64 @rrdset_last_entry_t(%struct.TYPE_10__* %212)
  store i64 %213, i64* %10, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  %218 = load i64, i64* %9, align 8
  %219 = icmp slt i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %200
  %224 = load i32, i32* @D_HEALTH, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  br label %234

233:                                              ; preds = %223
  br label %234

234:                                              ; preds = %233, %229
  %235 = phi i8* [ %232, %229 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %233 ]
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load i64, i64* %6, align 8
  %240 = load i64, i64* %9, align 8
  %241 = load i64, i64* %10, align 8
  %242 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %224, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i8* %235, i32 %238, i64 %239, i64 %240, i64 %241)
  store i32 0, i32* %4, align 4
  br label %292

243:                                              ; preds = %200
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %245 = call i64 @RRDCALC_HAS_DB_LOOKUP(%struct.TYPE_9__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %291

247:                                              ; preds = %243
  %248 = load i64, i64* %6, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %248, %251
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  store i64 %256, i64* %11, align 8
  %257 = load i64, i64* %11, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %257, %259
  %261 = load i64, i64* %9, align 8
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %270, label %263

263:                                              ; preds = %247
  %264 = load i64, i64* %11, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = sub nsw i64 %264, %266
  %268 = load i64, i64* %10, align 8
  %269 = icmp sgt i64 %267, %268
  br i1 %269, label %270, label %290

270:                                              ; preds = %263, %247
  %271 = load i32, i32* @D_HEALTH, align 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %270
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  br label %281

280:                                              ; preds = %270
  br label %281

281:                                              ; preds = %280, %276
  %282 = phi i8* [ %279, %276 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %280 ]
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* %9, align 8
  %288 = load i64, i64* %10, align 8
  %289 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %271, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i8* %282, i32 %285, i64 %286, i64 %287, i64 %288)
  store i32 0, i32* %4, align 4
  br label %292

290:                                              ; preds = %263
  br label %291

291:                                              ; preds = %290, %243
  store i32 1, i32* %4, align 4
  br label %292

292:                                              ; preds = %291, %281, %234, %194, %157, %129, %104, %72, %31
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @rrdset_flag_check(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @rrdset_first_entry_t(%struct.TYPE_10__*) #1

declare dso_local i64 @rrdset_last_entry_t(%struct.TYPE_10__*) #1

declare dso_local i64 @RRDCALC_HAS_DB_LOOKUP(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
