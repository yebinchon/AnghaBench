; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health.c_check_silenced.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health.c_check_silenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_9__* }

@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"Checking if alarm was silenced via the command API. Alarm info name:%s context:%s chart:%s host:%s family:%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Alarm matches command API silence entry %s:%s:%s:%s:%s\00", align 1
@STYPE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [125 x i8] c"Alarm %s matched a silence entry, but no SILENCE or DISABLE command was issued via the command API. The match has no effect.\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Alarm %s via the command API - name:%s context:%s chart:%s host:%s family:%s\00", align 1
@STYPE_DISABLE_ALARMS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Silenced\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @check_silenced(%struct.TYPE_10__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* @D_HEALTH, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i8* [ %22, %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i8* [ %39, %34 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %40 ]
  %43 = call i32 (i32, i8*, i8*, ...) @debug(i32 %9, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %25, i8* %28, i8* %29, i8* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  br label %47

47:                                               ; preds = %266, %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %270

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %265

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %265

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @simple_pattern_matches(i64 %68, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %265

74:                                               ; preds = %65, %50
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %265

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %265

91:                                               ; preds = %84
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %265

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @simple_pattern_matches(i64 %99, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %265

107:                                              ; preds = %96, %74
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %265

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %265

120:                                              ; preds = %115
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i64 @simple_pattern_matches(i64 %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %265

127:                                              ; preds = %120, %107
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %265

137:                                              ; preds = %132
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %265

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @simple_pattern_matches(i64 %145, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %265

151:                                              ; preds = %142, %127
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = icmp ne %struct.TYPE_7__* %159, null
  br i1 %160, label %161, label %265

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %265

168:                                              ; preds = %161
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %265

173:                                              ; preds = %168
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @simple_pattern_matches(i64 %176, i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %265

184:                                              ; preds = %173, %151
  %185 = load i32, i32* @D_HEALTH, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i32, i8*, i8*, ...) @debug(i32 %185, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %190, i32 %193, i32 %196, i32 %199, i32 %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @STYPE_NONE, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %184
  %213 = load i32, i32* @D_HEALTH, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i32, i8*, i8*, ...) @debug(i32 %213, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.3, i64 0, i64 0), i8* %216)
  br label %261

218:                                              ; preds = %184
  %219 = load i32, i32* @D_HEALTH, align 4
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @STYPE_DISABLE_ALARMS, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = icmp ne %struct.TYPE_7__* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %218
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  br label %241

240:                                              ; preds = %218
  br label %241

241:                                              ; preds = %240, %234
  %242 = phi i8* [ %239, %234 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %240 ]
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** %6, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = icmp ne %struct.TYPE_7__* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %241
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  br label %258

257:                                              ; preds = %241
  br label %258

258:                                              ; preds = %257, %251
  %259 = phi i8* [ %256, %251 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %257 ]
  %260 = call i32 (i32, i8*, i8*, ...) @debug(i32 %219, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i8* %226, i8* %229, i8* %242, i8* %245, i8* %246, i8* %259)
  br label %261

261:                                              ; preds = %258, %212
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %4, align 8
  br label %272

265:                                              ; preds = %173, %168, %161, %156, %142, %137, %132, %120, %115, %112, %96, %91, %84, %79, %65, %60, %55
  br label %266

266:                                              ; preds = %265
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 10
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  store %struct.TYPE_9__* %269, %struct.TYPE_9__** %8, align 8
  br label %47

270:                                              ; preds = %47
  %271 = load i64, i64* @STYPE_NONE, align 8
  store i64 %271, i64* %4, align 8
  br label %272

272:                                              ; preds = %270, %261
  %273 = load i64, i64* %4, align 8
  ret i64 %273
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i64 @simple_pattern_matches(i64, i8*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
