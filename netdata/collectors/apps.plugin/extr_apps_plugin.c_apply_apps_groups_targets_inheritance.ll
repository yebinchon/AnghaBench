; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_apply_apps_groups_targets_inheritance.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_apply_apps_groups_targets_inheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i32, i64, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__*, %struct.pid_stat*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i8* }

@debug_enabled = common dso_local global i32 0, align 4
@root_of_pids = common dso_local global %struct.pid_stat* null, align 8
@.str = private unnamed_addr constant [72 x i8] c"TARGET INHERITANCE: %s is inherited by %d (%s) from its parent %d (%s).\00", align 1
@INIT_PID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"TARGET INHERITANCE: %s is inherited by %d (%s) from its child %d (%s).\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"TARGET INHERITANCE: merged %d processes\00", align 1
@all_pids = common dso_local global %struct.TYPE_6__** null, align 8
@apps_groups_default_target = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [83 x i8] c"TARGET INHERITANCE: %s is inherited by %d (%s) from its parent %d (%s) at phase 2.\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"apply_apps_groups_targets_inheritance() made %d loops on the process tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apply_apps_groups_targets_inheritance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_apps_groups_targets_inheritance() #0 {
  %1 = alloca %struct.pid_stat*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pid_stat* null, %struct.pid_stat** %1, align 8
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %95, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %96

8:                                                ; preds = %5
  %9 = load i32, i32* @debug_enabled, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %8
  store i32 0, i32* %2, align 4
  %16 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  store %struct.pid_stat* %16, %struct.pid_stat** %1, align 8
  br label %17

17:                                               ; preds = %91, %15
  %18 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %19 = icmp ne %struct.pid_stat* %18, null
  br i1 %19, label %20, label %95

20:                                               ; preds = %17
  %21 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %22 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %27 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %32 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br label %37

37:                                               ; preds = %30, %25, %20
  %38 = phi i1 [ false, %25 ], [ false, %20 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %44 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %49 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %48, i32 0, i32 5
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* @debug_enabled, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %42
  %55 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %56 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %89

59:                                               ; preds = %54
  %60 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %61 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %60, i32 0, i32 5
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %59, %42
  %67 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %68 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %67, i32 0, i32 5
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %73 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %76 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %79 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %84 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @debug_log_int(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %66, %59, %54
  br label %90

90:                                               ; preds = %89, %37
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %93 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %92, i32 0, i32 6
  %94 = load %struct.pid_stat*, %struct.pid_stat** %93, align 8
  store %struct.pid_stat* %94, %struct.pid_stat** %1, align 8
  br label %17

95:                                               ; preds = %17
  br label %5

96:                                               ; preds = %5
  store i32 1, i32* %4, align 4
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %263, %96
  %98 = load i32, i32* %2, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %266

100:                                              ; preds = %97
  %101 = load i32, i32* @debug_enabled, align 4
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %100
  store i32 0, i32* %2, align 4
  %108 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  store %struct.pid_stat* %108, %struct.pid_stat** %1, align 8
  br label %109

109:                                              ; preds = %259, %107
  %110 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %111 = icmp ne %struct.pid_stat* %110, null
  br i1 %111, label %112, label %263

112:                                              ; preds = %109
  %113 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %114 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %119 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  br label %123

123:                                              ; preds = %117, %112
  %124 = phi i1 [ false, %112 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  %131 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %132 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %131, i32 0, i32 7
  store i32 %129, i32* %132, align 8
  br label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %135 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %178, label %138

138:                                              ; preds = %133
  %139 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %140 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %178, label %143

143:                                              ; preds = %138
  %144 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %145 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %144, i32 0, i32 2
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = icmp ne %struct.TYPE_5__* %146, null
  br i1 %147, label %148, label %178

148:                                              ; preds = %143
  %149 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %150 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %148
  %156 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %157 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %156, i32 0, i32 5
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %160 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %159, i32 0, i32 2
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = icmp eq %struct.TYPE_4__* %158, %163
  br i1 %164, label %172, label %165

165:                                              ; preds = %155
  %166 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %167 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = icmp ne %struct.TYPE_4__* %170, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %165, %155
  %173 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %174 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @INIT_PID, align 8
  %177 = icmp ne i64 %175, %176
  br label %178

178:                                              ; preds = %172, %165, %148, %143, %138, %133
  %179 = phi i1 [ false, %165 ], [ false, %148 ], [ false, %143 ], [ false, %138 ], [ false, %133 ], [ %177, %172 ]
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %258

183:                                              ; preds = %178
  %184 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %185 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %184, i32 0, i32 2
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, -1
  store i64 %189, i64* %187, align 8
  %190 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %191 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %193 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %192, i32 0, i32 5
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = icmp ne %struct.TYPE_4__* %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %183
  %197 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %198 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %197, i32 0, i32 2
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = icmp ne %struct.TYPE_4__* %201, null
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %196, %183
  %205 = phi i1 [ false, %183 ], [ %203, %196 ]
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %255

209:                                              ; preds = %204
  %210 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %211 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %210, i32 0, i32 5
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %214 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %213, i32 0, i32 2
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  store %struct.TYPE_4__* %212, %struct.TYPE_4__** %216, align 8
  %217 = load i32, i32* @debug_enabled, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %209
  %220 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %221 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %220, i32 0, i32 5
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = icmp ne %struct.TYPE_4__* %222, null
  br i1 %223, label %224, label %254

224:                                              ; preds = %219
  %225 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %226 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %225, i32 0, i32 5
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %254

231:                                              ; preds = %224, %209
  %232 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %233 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %232, i32 0, i32 5
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %238 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %237, i32 0, i32 2
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %243 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %242, i32 0, i32 2
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %248 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %251 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @debug_log_int(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %236, i32 %241, i32 %246, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %231, %224, %219
  br label %255

255:                                              ; preds = %254, %204
  %256 = load i32, i32* %2, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %255, %178
  br label %259

259:                                              ; preds = %258
  %260 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %261 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %260, i32 0, i32 6
  %262 = load %struct.pid_stat*, %struct.pid_stat** %261, align 8
  store %struct.pid_stat* %262, %struct.pid_stat** %1, align 8
  br label %109

263:                                              ; preds = %109
  %264 = load i32, i32* %2, align 4
  %265 = call i32 @debug_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %264)
  br label %97

266:                                              ; preds = %97
  %267 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_pids, align 8
  %268 = load i64, i64* @INIT_PID, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %267, i64 %268
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = icmp ne %struct.TYPE_6__* %270, null
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = load i8*, i8** @apps_groups_default_target, align 8
  %274 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_pids, align 8
  %275 = load i64, i64* @INIT_PID, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %274, i64 %275
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  store i8* %273, i8** %278, align 8
  br label %279

279:                                              ; preds = %272, %266
  %280 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_pids, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %280, i64 0
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = icmp ne %struct.TYPE_6__* %282, null
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load i8*, i8** @apps_groups_default_target, align 8
  %286 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_pids, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %286, i64 0
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  store i8* %285, i8** %289, align 8
  br label %290

290:                                              ; preds = %284, %279
  %291 = load i32, i32* @debug_enabled, align 4
  %292 = call i64 @unlikely(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %290
  %295 = load i32, i32* %3, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %294, %290
  %298 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  store %struct.pid_stat* %298, %struct.pid_stat** %1, align 8
  br label %299

299:                                              ; preds = %338, %297
  %300 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %301 = icmp ne %struct.pid_stat* %300, null
  br i1 %301, label %302, label %342

302:                                              ; preds = %299
  %303 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %304 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %302
  %308 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %309 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %308, i32 0, i32 5
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = icmp ne %struct.TYPE_4__* %310, null
  %312 = xor i1 %311, true
  br label %313

313:                                              ; preds = %307, %302
  %314 = phi i1 [ false, %302 ], [ %312, %307 ]
  %315 = zext i1 %314 to i32
  %316 = call i64 @unlikely(i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %313
  %319 = load i8*, i8** @apps_groups_default_target, align 8
  %320 = bitcast i8* %319 to %struct.TYPE_4__*
  %321 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %322 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %321, i32 0, i32 5
  store %struct.TYPE_4__* %320, %struct.TYPE_4__** %322, align 8
  br label %323

323:                                              ; preds = %318, %313
  %324 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %325 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  %328 = xor i1 %327, true
  %329 = zext i1 %328 to i32
  %330 = call i64 @unlikely(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %323
  %333 = load i32, i32* %4, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %4, align 4
  %335 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %336 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %335, i32 0, i32 7
  store i32 %333, i32* %336, align 8
  br label %337

337:                                              ; preds = %332, %323
  br label %338

338:                                              ; preds = %337
  %339 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %340 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %339, i32 0, i32 6
  %341 = load %struct.pid_stat*, %struct.pid_stat** %340, align 8
  store %struct.pid_stat* %341, %struct.pid_stat** %1, align 8
  br label %299

342:                                              ; preds = %299
  %343 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_pids, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %343, i64 1
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = icmp ne %struct.TYPE_6__* %345, null
  br i1 %346, label %347, label %354

347:                                              ; preds = %342
  %348 = load i32, i32* %4, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %4, align 4
  %350 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_pids, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %350, i64 1
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  store i32 %348, i32* %353, align 8
  br label %354

354:                                              ; preds = %347, %342
  store i32 1, i32* %2, align 4
  br label %355

355:                                              ; preds = %450, %354
  %356 = load i32, i32* %2, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %451

358:                                              ; preds = %355
  %359 = load i32, i32* @debug_enabled, align 4
  %360 = call i64 @unlikely(i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %358
  %363 = load i32, i32* %3, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %3, align 4
  br label %365

365:                                              ; preds = %362, %358
  store i32 0, i32* %2, align 4
  %366 = load %struct.pid_stat*, %struct.pid_stat** @root_of_pids, align 8
  store %struct.pid_stat* %366, %struct.pid_stat** %1, align 8
  br label %367

367:                                              ; preds = %446, %365
  %368 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %369 = icmp ne %struct.pid_stat* %368, null
  br i1 %369, label %370, label %450

370:                                              ; preds = %367
  %371 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %372 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %371, i32 0, i32 5
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  %374 = icmp ne %struct.TYPE_4__* %373, null
  br i1 %374, label %392, label %375

375:                                              ; preds = %370
  %376 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %377 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %392

380:                                              ; preds = %375
  %381 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %382 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %381, i32 0, i32 2
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %382, align 8
  %384 = icmp ne %struct.TYPE_5__* %383, null
  br i1 %384, label %385, label %392

385:                                              ; preds = %380
  %386 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %387 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %386, i32 0, i32 2
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 2
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = icmp ne %struct.TYPE_4__* %390, null
  br label %392

392:                                              ; preds = %385, %380, %375, %370
  %393 = phi i1 [ false, %380 ], [ false, %375 ], [ false, %370 ], [ %391, %385 ]
  %394 = zext i1 %393 to i32
  %395 = call i64 @unlikely(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %445

397:                                              ; preds = %392
  %398 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %399 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %398, i32 0, i32 2
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 2
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %401, align 8
  %403 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %404 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %403, i32 0, i32 5
  store %struct.TYPE_4__* %402, %struct.TYPE_4__** %404, align 8
  %405 = load i32, i32* %2, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %2, align 4
  %407 = load i32, i32* @debug_enabled, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %421, label %409

409:                                              ; preds = %397
  %410 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %411 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %410, i32 0, i32 5
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %411, align 8
  %413 = icmp ne %struct.TYPE_4__* %412, null
  br i1 %413, label %414, label %444

414:                                              ; preds = %409
  %415 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %416 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %415, i32 0, i32 5
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %444

421:                                              ; preds = %414, %397
  %422 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %423 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %422, i32 0, i32 5
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %428 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %431 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %434 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %433, i32 0, i32 2
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %439 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %438, i32 0, i32 2
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @debug_log_int(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %426, i32 %429, i32 %432, i32 %437, i32 %442)
  br label %444

444:                                              ; preds = %421, %414, %409
  br label %445

445:                                              ; preds = %444, %392
  br label %446

446:                                              ; preds = %445
  %447 = load %struct.pid_stat*, %struct.pid_stat** %1, align 8
  %448 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %447, i32 0, i32 6
  %449 = load %struct.pid_stat*, %struct.pid_stat** %448, align 8
  store %struct.pid_stat* %449, %struct.pid_stat** %1, align 8
  br label %367

450:                                              ; preds = %367
  br label %355

451:                                              ; preds = %355
  %452 = load i32, i32* %3, align 4
  %453 = call i32 @debug_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %452)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_log_int(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @debug_log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
