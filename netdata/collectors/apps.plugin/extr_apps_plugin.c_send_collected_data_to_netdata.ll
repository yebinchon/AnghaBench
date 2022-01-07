; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_send_collected_data_to_netdata.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_send_collected_data_to_netdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, %struct.target* }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@utime_fix_ratio = common dso_local global i32 0, align 4
@stime_fix_ratio = common dso_local global i32 0, align 4
@gtime_fix_ratio = common dso_local global i32 0, align 4
@include_exited_childs = common dso_local global i64 0, align 8
@cutime_fix_ratio = common dso_local global i32 0, align 4
@cstime_fix_ratio = common dso_local global i32 0, align 4
@cgtime_fix_ratio = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"cpu_user\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu_system\00", align 1
@show_guest_time = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"cpu_guest\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@global_uptime = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"uptime_min\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"uptime_avg\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"uptime_max\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vmem\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"minor_faults\00", align 1
@minflt_fix_ratio = common dso_local global i32 0, align 4
@cminflt_fix_ratio = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"major_faults\00", align 1
@majflt_fix_ratio = common dso_local global i32 0, align 4
@cmajflt_fix_ratio = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"lreads\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"lwrites\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"preads\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"pwrites\00", align 1
@enable_file_charts = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"sockets\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"pipes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target*, i8*, i32)* @send_collected_data_to_netdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_collected_data_to_netdata(%struct.target* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.target*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target*, align 8
  store %struct.target* %0, %struct.target** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @send_BEGIN(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %11, %struct.target** %7, align 8
  br label %12

12:                                               ; preds = %83, %3
  %13 = load %struct.target*, %struct.target** %7, align 8
  %14 = icmp ne %struct.target* %13, null
  br i1 %14, label %15, label %87

15:                                               ; preds = %12
  %16 = load %struct.target*, %struct.target** %7, align 8
  %17 = getelementptr inbounds %struct.target, %struct.target* %16, i32 0, i32 28
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.target*, %struct.target** %7, align 8
  %22 = getelementptr inbounds %struct.target, %struct.target* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = load %struct.target*, %struct.target** %7, align 8
  %32 = getelementptr inbounds %struct.target, %struct.target* %31, i32 0, i32 27
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.target*, %struct.target** %7, align 8
  %35 = getelementptr inbounds %struct.target, %struct.target* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @utime_fix_ratio, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load %struct.target*, %struct.target** %7, align 8
  %41 = getelementptr inbounds %struct.target, %struct.target* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @stime_fix_ratio, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add i64 %39, %45
  %47 = load %struct.target*, %struct.target** %7, align 8
  %48 = getelementptr inbounds %struct.target, %struct.target* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @gtime_fix_ratio, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %46, %52
  %54 = load i64, i64* @include_exited_childs, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %30
  %57 = load %struct.target*, %struct.target** %7, align 8
  %58 = getelementptr inbounds %struct.target, %struct.target* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @cutime_fix_ratio, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = load %struct.target*, %struct.target** %7, align 8
  %64 = getelementptr inbounds %struct.target, %struct.target* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @cstime_fix_ratio, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add i64 %62, %68
  %70 = load %struct.target*, %struct.target** %7, align 8
  %71 = getelementptr inbounds %struct.target, %struct.target* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @cgtime_fix_ratio, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add i64 %69, %75
  br label %78

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %77, %56
  %79 = phi i64 [ %76, %56 ], [ 0, %77 ]
  %80 = add i64 %53, %79
  %81 = call i32 @send_SET(i32 %33, i64 %80)
  br label %82

82:                                               ; preds = %78, %25
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.target*, %struct.target** %7, align 8
  %85 = getelementptr inbounds %struct.target, %struct.target* %84, i32 0, i32 29
  %86 = load %struct.target*, %struct.target** %85, align 8
  store %struct.target* %86, %struct.target** %7, align 8
  br label %12

87:                                               ; preds = %12
  %88 = call i32 (...) @send_END()
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @send_BEGIN(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %92, %struct.target** %7, align 8
  br label %93

93:                                               ; preds = %136, %87
  %94 = load %struct.target*, %struct.target** %7, align 8
  %95 = icmp ne %struct.target* %94, null
  br i1 %95, label %96, label %140

96:                                               ; preds = %93
  %97 = load %struct.target*, %struct.target** %7, align 8
  %98 = getelementptr inbounds %struct.target, %struct.target* %97, i32 0, i32 28
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.target*, %struct.target** %7, align 8
  %103 = getelementptr inbounds %struct.target, %struct.target* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ false, %96 ], [ %105, %101 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load %struct.target*, %struct.target** %7, align 8
  %113 = getelementptr inbounds %struct.target, %struct.target* %112, i32 0, i32 27
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.target*, %struct.target** %7, align 8
  %116 = getelementptr inbounds %struct.target, %struct.target* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @utime_fix_ratio, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @include_exited_childs, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %111
  %124 = load %struct.target*, %struct.target** %7, align 8
  %125 = getelementptr inbounds %struct.target, %struct.target* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @cutime_fix_ratio, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  br label %131

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130, %123
  %132 = phi i64 [ %129, %123 ], [ 0, %130 ]
  %133 = add i64 %120, %132
  %134 = call i32 @send_SET(i32 %114, i64 %133)
  br label %135

135:                                              ; preds = %131, %106
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.target*, %struct.target** %7, align 8
  %138 = getelementptr inbounds %struct.target, %struct.target* %137, i32 0, i32 29
  %139 = load %struct.target*, %struct.target** %138, align 8
  store %struct.target* %139, %struct.target** %7, align 8
  br label %93

140:                                              ; preds = %93
  %141 = call i32 (...) @send_END()
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @send_BEGIN(i8* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %145, %struct.target** %7, align 8
  br label %146

146:                                              ; preds = %189, %140
  %147 = load %struct.target*, %struct.target** %7, align 8
  %148 = icmp ne %struct.target* %147, null
  br i1 %148, label %149, label %193

149:                                              ; preds = %146
  %150 = load %struct.target*, %struct.target** %7, align 8
  %151 = getelementptr inbounds %struct.target, %struct.target* %150, i32 0, i32 28
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.target*, %struct.target** %7, align 8
  %156 = getelementptr inbounds %struct.target, %struct.target* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i1 [ false, %149 ], [ %158, %154 ]
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %188

164:                                              ; preds = %159
  %165 = load %struct.target*, %struct.target** %7, align 8
  %166 = getelementptr inbounds %struct.target, %struct.target* %165, i32 0, i32 27
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.target*, %struct.target** %7, align 8
  %169 = getelementptr inbounds %struct.target, %struct.target* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @stime_fix_ratio, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* @include_exited_childs, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %164
  %177 = load %struct.target*, %struct.target** %7, align 8
  %178 = getelementptr inbounds %struct.target, %struct.target* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @cstime_fix_ratio, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  br label %184

183:                                              ; preds = %164
  br label %184

184:                                              ; preds = %183, %176
  %185 = phi i64 [ %182, %176 ], [ 0, %183 ]
  %186 = add i64 %173, %185
  %187 = call i32 @send_SET(i32 %167, i64 %186)
  br label %188

188:                                              ; preds = %184, %159
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.target*, %struct.target** %7, align 8
  %191 = getelementptr inbounds %struct.target, %struct.target* %190, i32 0, i32 29
  %192 = load %struct.target*, %struct.target** %191, align 8
  store %struct.target* %192, %struct.target** %7, align 8
  br label %146

193:                                              ; preds = %146
  %194 = call i32 (...) @send_END()
  %195 = load i64, i64* @show_guest_time, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %251

197:                                              ; preds = %193
  %198 = load i8*, i8** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @send_BEGIN(i8* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %201, %struct.target** %7, align 8
  br label %202

202:                                              ; preds = %245, %197
  %203 = load %struct.target*, %struct.target** %7, align 8
  %204 = icmp ne %struct.target* %203, null
  br i1 %204, label %205, label %249

205:                                              ; preds = %202
  %206 = load %struct.target*, %struct.target** %7, align 8
  %207 = getelementptr inbounds %struct.target, %struct.target* %206, i32 0, i32 28
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.target*, %struct.target** %7, align 8
  %212 = getelementptr inbounds %struct.target, %struct.target* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br label %215

215:                                              ; preds = %210, %205
  %216 = phi i1 [ false, %205 ], [ %214, %210 ]
  %217 = zext i1 %216 to i32
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %215
  %221 = load %struct.target*, %struct.target** %7, align 8
  %222 = getelementptr inbounds %struct.target, %struct.target* %221, i32 0, i32 27
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.target*, %struct.target** %7, align 8
  %225 = getelementptr inbounds %struct.target, %struct.target* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @gtime_fix_ratio, align 4
  %228 = mul nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* @include_exited_childs, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %220
  %233 = load %struct.target*, %struct.target** %7, align 8
  %234 = getelementptr inbounds %struct.target, %struct.target* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @cgtime_fix_ratio, align 4
  %237 = mul nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  br label %240

239:                                              ; preds = %220
  br label %240

240:                                              ; preds = %239, %232
  %241 = phi i64 [ %238, %232 ], [ 0, %239 ]
  %242 = add i64 %229, %241
  %243 = call i32 @send_SET(i32 %223, i64 %242)
  br label %244

244:                                              ; preds = %240, %215
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.target*, %struct.target** %7, align 8
  %247 = getelementptr inbounds %struct.target, %struct.target* %246, i32 0, i32 29
  %248 = load %struct.target*, %struct.target** %247, align 8
  store %struct.target* %248, %struct.target** %7, align 8
  br label %202

249:                                              ; preds = %202
  %250 = call i32 (...) @send_END()
  br label %251

251:                                              ; preds = %249, %193
  %252 = load i8*, i8** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @send_BEGIN(i8* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %253)
  %255 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %255, %struct.target** %7, align 8
  br label %256

256:                                              ; preds = %283, %251
  %257 = load %struct.target*, %struct.target** %7, align 8
  %258 = icmp ne %struct.target* %257, null
  br i1 %258, label %259, label %287

259:                                              ; preds = %256
  %260 = load %struct.target*, %struct.target** %7, align 8
  %261 = getelementptr inbounds %struct.target, %struct.target* %260, i32 0, i32 28
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load %struct.target*, %struct.target** %7, align 8
  %266 = getelementptr inbounds %struct.target, %struct.target* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br label %269

269:                                              ; preds = %264, %259
  %270 = phi i1 [ false, %259 ], [ %268, %264 ]
  %271 = zext i1 %270 to i32
  %272 = call i64 @unlikely(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = load %struct.target*, %struct.target** %7, align 8
  %276 = getelementptr inbounds %struct.target, %struct.target* %275, i32 0, i32 27
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.target*, %struct.target** %7, align 8
  %279 = getelementptr inbounds %struct.target, %struct.target* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @send_SET(i32 %277, i64 %280)
  br label %282

282:                                              ; preds = %274, %269
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.target*, %struct.target** %7, align 8
  %285 = getelementptr inbounds %struct.target, %struct.target* %284, i32 0, i32 29
  %286 = load %struct.target*, %struct.target** %285, align 8
  store %struct.target* %286, %struct.target** %7, align 8
  br label %256

287:                                              ; preds = %256
  %288 = call i32 (...) @send_END()
  %289 = load i8*, i8** %5, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @send_BEGIN(i8* %289, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %290)
  %292 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %292, %struct.target** %7, align 8
  br label %293

293:                                              ; preds = %320, %287
  %294 = load %struct.target*, %struct.target** %7, align 8
  %295 = icmp ne %struct.target* %294, null
  br i1 %295, label %296, label %324

296:                                              ; preds = %293
  %297 = load %struct.target*, %struct.target** %7, align 8
  %298 = getelementptr inbounds %struct.target, %struct.target* %297, i32 0, i32 28
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.target*, %struct.target** %7, align 8
  %303 = getelementptr inbounds %struct.target, %struct.target* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br label %306

306:                                              ; preds = %301, %296
  %307 = phi i1 [ false, %296 ], [ %305, %301 ]
  %308 = zext i1 %307 to i32
  %309 = call i64 @unlikely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %306
  %312 = load %struct.target*, %struct.target** %7, align 8
  %313 = getelementptr inbounds %struct.target, %struct.target* %312, i32 0, i32 27
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.target*, %struct.target** %7, align 8
  %316 = getelementptr inbounds %struct.target, %struct.target* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @send_SET(i32 %314, i64 %317)
  br label %319

319:                                              ; preds = %311, %306
  br label %320

320:                                              ; preds = %319
  %321 = load %struct.target*, %struct.target** %7, align 8
  %322 = getelementptr inbounds %struct.target, %struct.target* %321, i32 0, i32 29
  %323 = load %struct.target*, %struct.target** %322, align 8
  store %struct.target* %323, %struct.target** %7, align 8
  br label %293

324:                                              ; preds = %293
  %325 = call i32 (...) @send_END()
  %326 = load i8*, i8** %5, align 8
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @send_BEGIN(i8* %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %327)
  %329 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %329, %struct.target** %7, align 8
  br label %330

330:                                              ; preds = %368, %324
  %331 = load %struct.target*, %struct.target** %7, align 8
  %332 = icmp ne %struct.target* %331, null
  br i1 %332, label %333, label %372

333:                                              ; preds = %330
  %334 = load %struct.target*, %struct.target** %7, align 8
  %335 = getelementptr inbounds %struct.target, %struct.target* %334, i32 0, i32 28
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = load %struct.target*, %struct.target** %7, align 8
  %340 = getelementptr inbounds %struct.target, %struct.target* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br label %343

343:                                              ; preds = %338, %333
  %344 = phi i1 [ false, %333 ], [ %342, %338 ]
  %345 = zext i1 %344 to i32
  %346 = call i64 @unlikely(i32 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %367

348:                                              ; preds = %343
  %349 = load %struct.target*, %struct.target** %7, align 8
  %350 = getelementptr inbounds %struct.target, %struct.target* %349, i32 0, i32 27
  %351 = load i32, i32* %350, align 8
  %352 = load i64, i64* @global_uptime, align 8
  %353 = load %struct.target*, %struct.target** %7, align 8
  %354 = getelementptr inbounds %struct.target, %struct.target* %353, i32 0, i32 8
  %355 = load i64, i64* %354, align 8
  %356 = icmp sgt i64 %352, %355
  br i1 %356, label %357, label %363

357:                                              ; preds = %348
  %358 = load i64, i64* @global_uptime, align 8
  %359 = load %struct.target*, %struct.target** %7, align 8
  %360 = getelementptr inbounds %struct.target, %struct.target* %359, i32 0, i32 8
  %361 = load i64, i64* %360, align 8
  %362 = sub nsw i64 %358, %361
  br label %364

363:                                              ; preds = %348
  br label %364

364:                                              ; preds = %363, %357
  %365 = phi i64 [ %362, %357 ], [ 0, %363 ]
  %366 = call i32 @send_SET(i32 %351, i64 %365)
  br label %367

367:                                              ; preds = %364, %343
  br label %368

368:                                              ; preds = %367
  %369 = load %struct.target*, %struct.target** %7, align 8
  %370 = getelementptr inbounds %struct.target, %struct.target* %369, i32 0, i32 29
  %371 = load %struct.target*, %struct.target** %370, align 8
  store %struct.target* %371, %struct.target** %7, align 8
  br label %330

372:                                              ; preds = %330
  %373 = call i32 (...) @send_END()
  %374 = load i8*, i8** %5, align 8
  %375 = load i32, i32* %6, align 4
  %376 = call i32 @send_BEGIN(i8* %374, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %375)
  %377 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %377, %struct.target** %7, align 8
  br label %378

378:                                              ; preds = %405, %372
  %379 = load %struct.target*, %struct.target** %7, align 8
  %380 = icmp ne %struct.target* %379, null
  br i1 %380, label %381, label %409

381:                                              ; preds = %378
  %382 = load %struct.target*, %struct.target** %7, align 8
  %383 = getelementptr inbounds %struct.target, %struct.target* %382, i32 0, i32 28
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load %struct.target*, %struct.target** %7, align 8
  %388 = getelementptr inbounds %struct.target, %struct.target* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br label %391

391:                                              ; preds = %386, %381
  %392 = phi i1 [ false, %381 ], [ %390, %386 ]
  %393 = zext i1 %392 to i32
  %394 = call i64 @unlikely(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load %struct.target*, %struct.target** %7, align 8
  %398 = getelementptr inbounds %struct.target, %struct.target* %397, i32 0, i32 27
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.target*, %struct.target** %7, align 8
  %401 = getelementptr inbounds %struct.target, %struct.target* %400, i32 0, i32 9
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @send_SET(i32 %399, i64 %402)
  br label %404

404:                                              ; preds = %396, %391
  br label %405

405:                                              ; preds = %404
  %406 = load %struct.target*, %struct.target** %7, align 8
  %407 = getelementptr inbounds %struct.target, %struct.target* %406, i32 0, i32 29
  %408 = load %struct.target*, %struct.target** %407, align 8
  store %struct.target* %408, %struct.target** %7, align 8
  br label %378

409:                                              ; preds = %378
  %410 = call i32 (...) @send_END()
  %411 = load i8*, i8** %5, align 8
  %412 = load i32, i32* %6, align 4
  %413 = call i32 @send_BEGIN(i8* %411, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %412)
  %414 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %414, %struct.target** %7, align 8
  br label %415

415:                                              ; preds = %446, %409
  %416 = load %struct.target*, %struct.target** %7, align 8
  %417 = icmp ne %struct.target* %416, null
  br i1 %417, label %418, label %450

418:                                              ; preds = %415
  %419 = load %struct.target*, %struct.target** %7, align 8
  %420 = getelementptr inbounds %struct.target, %struct.target* %419, i32 0, i32 28
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %418
  %424 = load %struct.target*, %struct.target** %7, align 8
  %425 = getelementptr inbounds %struct.target, %struct.target* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br label %428

428:                                              ; preds = %423, %418
  %429 = phi i1 [ false, %418 ], [ %427, %423 ]
  %430 = zext i1 %429 to i32
  %431 = call i64 @unlikely(i32 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %445

433:                                              ; preds = %428
  %434 = load %struct.target*, %struct.target** %7, align 8
  %435 = getelementptr inbounds %struct.target, %struct.target* %434, i32 0, i32 27
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.target*, %struct.target** %7, align 8
  %438 = getelementptr inbounds %struct.target, %struct.target* %437, i32 0, i32 10
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.target*, %struct.target** %7, align 8
  %441 = getelementptr inbounds %struct.target, %struct.target* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = udiv i64 %439, %442
  %444 = call i32 @send_SET(i32 %436, i64 %443)
  br label %445

445:                                              ; preds = %433, %428
  br label %446

446:                                              ; preds = %445
  %447 = load %struct.target*, %struct.target** %7, align 8
  %448 = getelementptr inbounds %struct.target, %struct.target* %447, i32 0, i32 29
  %449 = load %struct.target*, %struct.target** %448, align 8
  store %struct.target* %449, %struct.target** %7, align 8
  br label %415

450:                                              ; preds = %415
  %451 = call i32 (...) @send_END()
  %452 = load i8*, i8** %5, align 8
  %453 = load i32, i32* %6, align 4
  %454 = call i32 @send_BEGIN(i8* %452, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %453)
  %455 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %455, %struct.target** %7, align 8
  br label %456

456:                                              ; preds = %483, %450
  %457 = load %struct.target*, %struct.target** %7, align 8
  %458 = icmp ne %struct.target* %457, null
  br i1 %458, label %459, label %487

459:                                              ; preds = %456
  %460 = load %struct.target*, %struct.target** %7, align 8
  %461 = getelementptr inbounds %struct.target, %struct.target* %460, i32 0, i32 28
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %469

464:                                              ; preds = %459
  %465 = load %struct.target*, %struct.target** %7, align 8
  %466 = getelementptr inbounds %struct.target, %struct.target* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br label %469

469:                                              ; preds = %464, %459
  %470 = phi i1 [ false, %459 ], [ %468, %464 ]
  %471 = zext i1 %470 to i32
  %472 = call i64 @unlikely(i32 %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %482

474:                                              ; preds = %469
  %475 = load %struct.target*, %struct.target** %7, align 8
  %476 = getelementptr inbounds %struct.target, %struct.target* %475, i32 0, i32 27
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.target*, %struct.target** %7, align 8
  %479 = getelementptr inbounds %struct.target, %struct.target* %478, i32 0, i32 11
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @send_SET(i32 %477, i64 %480)
  br label %482

482:                                              ; preds = %474, %469
  br label %483

483:                                              ; preds = %482
  %484 = load %struct.target*, %struct.target** %7, align 8
  %485 = getelementptr inbounds %struct.target, %struct.target* %484, i32 0, i32 29
  %486 = load %struct.target*, %struct.target** %485, align 8
  store %struct.target* %486, %struct.target** %7, align 8
  br label %456

487:                                              ; preds = %456
  %488 = call i32 (...) @send_END()
  %489 = load i8*, i8** %5, align 8
  %490 = load i32, i32* %6, align 4
  %491 = call i32 @send_BEGIN(i8* %489, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %490)
  %492 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %492, %struct.target** %7, align 8
  br label %493

493:                                              ; preds = %535, %487
  %494 = load %struct.target*, %struct.target** %7, align 8
  %495 = icmp ne %struct.target* %494, null
  br i1 %495, label %496, label %539

496:                                              ; preds = %493
  %497 = load %struct.target*, %struct.target** %7, align 8
  %498 = getelementptr inbounds %struct.target, %struct.target* %497, i32 0, i32 28
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %496
  %502 = load %struct.target*, %struct.target** %7, align 8
  %503 = getelementptr inbounds %struct.target, %struct.target* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br label %506

506:                                              ; preds = %501, %496
  %507 = phi i1 [ false, %496 ], [ %505, %501 ]
  %508 = zext i1 %507 to i32
  %509 = call i64 @unlikely(i32 %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %534

511:                                              ; preds = %506
  %512 = load %struct.target*, %struct.target** %7, align 8
  %513 = getelementptr inbounds %struct.target, %struct.target* %512, i32 0, i32 27
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.target*, %struct.target** %7, align 8
  %516 = getelementptr inbounds %struct.target, %struct.target* %515, i32 0, i32 12
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.target*, %struct.target** %7, align 8
  %519 = getelementptr inbounds %struct.target, %struct.target* %518, i32 0, i32 13
  %520 = load i64, i64* %519, align 8
  %521 = icmp sgt i64 %517, %520
  br i1 %521, label %522, label %530

522:                                              ; preds = %511
  %523 = load %struct.target*, %struct.target** %7, align 8
  %524 = getelementptr inbounds %struct.target, %struct.target* %523, i32 0, i32 12
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.target*, %struct.target** %7, align 8
  %527 = getelementptr inbounds %struct.target, %struct.target* %526, i32 0, i32 13
  %528 = load i64, i64* %527, align 8
  %529 = sub nsw i64 %525, %528
  br label %531

530:                                              ; preds = %511
  br label %531

531:                                              ; preds = %530, %522
  %532 = phi i64 [ %529, %522 ], [ 0, %530 ]
  %533 = call i32 @send_SET(i32 %514, i64 %532)
  br label %534

534:                                              ; preds = %531, %506
  br label %535

535:                                              ; preds = %534
  %536 = load %struct.target*, %struct.target** %7, align 8
  %537 = getelementptr inbounds %struct.target, %struct.target* %536, i32 0, i32 29
  %538 = load %struct.target*, %struct.target** %537, align 8
  store %struct.target* %538, %struct.target** %7, align 8
  br label %493

539:                                              ; preds = %493
  %540 = call i32 (...) @send_END()
  %541 = load i8*, i8** %5, align 8
  %542 = load i32, i32* %6, align 4
  %543 = call i32 @send_BEGIN(i8* %541, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %542)
  %544 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %544, %struct.target** %7, align 8
  br label %545

545:                                              ; preds = %572, %539
  %546 = load %struct.target*, %struct.target** %7, align 8
  %547 = icmp ne %struct.target* %546, null
  br i1 %547, label %548, label %576

548:                                              ; preds = %545
  %549 = load %struct.target*, %struct.target** %7, align 8
  %550 = getelementptr inbounds %struct.target, %struct.target* %549, i32 0, i32 28
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %548
  %554 = load %struct.target*, %struct.target** %7, align 8
  %555 = getelementptr inbounds %struct.target, %struct.target* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %556, 0
  br label %558

558:                                              ; preds = %553, %548
  %559 = phi i1 [ false, %548 ], [ %557, %553 ]
  %560 = zext i1 %559 to i32
  %561 = call i64 @unlikely(i32 %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %571

563:                                              ; preds = %558
  %564 = load %struct.target*, %struct.target** %7, align 8
  %565 = getelementptr inbounds %struct.target, %struct.target* %564, i32 0, i32 27
  %566 = load i32, i32* %565, align 8
  %567 = load %struct.target*, %struct.target** %7, align 8
  %568 = getelementptr inbounds %struct.target, %struct.target* %567, i32 0, i32 14
  %569 = load i64, i64* %568, align 8
  %570 = call i32 @send_SET(i32 %566, i64 %569)
  br label %571

571:                                              ; preds = %563, %558
  br label %572

572:                                              ; preds = %571
  %573 = load %struct.target*, %struct.target** %7, align 8
  %574 = getelementptr inbounds %struct.target, %struct.target* %573, i32 0, i32 29
  %575 = load %struct.target*, %struct.target** %574, align 8
  store %struct.target* %575, %struct.target** %7, align 8
  br label %545

576:                                              ; preds = %545
  %577 = call i32 (...) @send_END()
  %578 = load i8*, i8** %5, align 8
  %579 = load i32, i32* %6, align 4
  %580 = call i32 @send_BEGIN(i8* %578, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %579)
  %581 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %581, %struct.target** %7, align 8
  br label %582

582:                                              ; preds = %609, %576
  %583 = load %struct.target*, %struct.target** %7, align 8
  %584 = icmp ne %struct.target* %583, null
  br i1 %584, label %585, label %613

585:                                              ; preds = %582
  %586 = load %struct.target*, %struct.target** %7, align 8
  %587 = getelementptr inbounds %struct.target, %struct.target* %586, i32 0, i32 28
  %588 = load i64, i64* %587, align 8
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %595

590:                                              ; preds = %585
  %591 = load %struct.target*, %struct.target** %7, align 8
  %592 = getelementptr inbounds %struct.target, %struct.target* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = icmp ne i64 %593, 0
  br label %595

595:                                              ; preds = %590, %585
  %596 = phi i1 [ false, %585 ], [ %594, %590 ]
  %597 = zext i1 %596 to i32
  %598 = call i64 @unlikely(i32 %597)
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %608

600:                                              ; preds = %595
  %601 = load %struct.target*, %struct.target** %7, align 8
  %602 = getelementptr inbounds %struct.target, %struct.target* %601, i32 0, i32 27
  %603 = load i32, i32* %602, align 8
  %604 = load %struct.target*, %struct.target** %7, align 8
  %605 = getelementptr inbounds %struct.target, %struct.target* %604, i32 0, i32 15
  %606 = load i64, i64* %605, align 8
  %607 = call i32 @send_SET(i32 %603, i64 %606)
  br label %608

608:                                              ; preds = %600, %595
  br label %609

609:                                              ; preds = %608
  %610 = load %struct.target*, %struct.target** %7, align 8
  %611 = getelementptr inbounds %struct.target, %struct.target* %610, i32 0, i32 29
  %612 = load %struct.target*, %struct.target** %611, align 8
  store %struct.target* %612, %struct.target** %7, align 8
  br label %582

613:                                              ; preds = %582
  %614 = call i32 (...) @send_END()
  %615 = load i8*, i8** %5, align 8
  %616 = load i32, i32* %6, align 4
  %617 = call i32 @send_BEGIN(i8* %615, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %616)
  %618 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %618, %struct.target** %7, align 8
  br label %619

619:                                              ; preds = %662, %613
  %620 = load %struct.target*, %struct.target** %7, align 8
  %621 = icmp ne %struct.target* %620, null
  br i1 %621, label %622, label %666

622:                                              ; preds = %619
  %623 = load %struct.target*, %struct.target** %7, align 8
  %624 = getelementptr inbounds %struct.target, %struct.target* %623, i32 0, i32 28
  %625 = load i64, i64* %624, align 8
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %632

627:                                              ; preds = %622
  %628 = load %struct.target*, %struct.target** %7, align 8
  %629 = getelementptr inbounds %struct.target, %struct.target* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = icmp ne i64 %630, 0
  br label %632

632:                                              ; preds = %627, %622
  %633 = phi i1 [ false, %622 ], [ %631, %627 ]
  %634 = zext i1 %633 to i32
  %635 = call i64 @unlikely(i32 %634)
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %661

637:                                              ; preds = %632
  %638 = load %struct.target*, %struct.target** %7, align 8
  %639 = getelementptr inbounds %struct.target, %struct.target* %638, i32 0, i32 27
  %640 = load i32, i32* %639, align 8
  %641 = load %struct.target*, %struct.target** %7, align 8
  %642 = getelementptr inbounds %struct.target, %struct.target* %641, i32 0, i32 16
  %643 = load i32, i32* %642, align 8
  %644 = load i32, i32* @minflt_fix_ratio, align 4
  %645 = mul nsw i32 %643, %644
  %646 = sext i32 %645 to i64
  %647 = load i64, i64* @include_exited_childs, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %656

649:                                              ; preds = %637
  %650 = load %struct.target*, %struct.target** %7, align 8
  %651 = getelementptr inbounds %struct.target, %struct.target* %650, i32 0, i32 17
  %652 = load i32, i32* %651, align 4
  %653 = load i32, i32* @cminflt_fix_ratio, align 4
  %654 = mul nsw i32 %652, %653
  %655 = sext i32 %654 to i64
  br label %657

656:                                              ; preds = %637
  br label %657

657:                                              ; preds = %656, %649
  %658 = phi i64 [ %655, %649 ], [ 0, %656 ]
  %659 = add i64 %646, %658
  %660 = call i32 @send_SET(i32 %640, i64 %659)
  br label %661

661:                                              ; preds = %657, %632
  br label %662

662:                                              ; preds = %661
  %663 = load %struct.target*, %struct.target** %7, align 8
  %664 = getelementptr inbounds %struct.target, %struct.target* %663, i32 0, i32 29
  %665 = load %struct.target*, %struct.target** %664, align 8
  store %struct.target* %665, %struct.target** %7, align 8
  br label %619

666:                                              ; preds = %619
  %667 = call i32 (...) @send_END()
  %668 = load i8*, i8** %5, align 8
  %669 = load i32, i32* %6, align 4
  %670 = call i32 @send_BEGIN(i8* %668, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %669)
  %671 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %671, %struct.target** %7, align 8
  br label %672

672:                                              ; preds = %715, %666
  %673 = load %struct.target*, %struct.target** %7, align 8
  %674 = icmp ne %struct.target* %673, null
  br i1 %674, label %675, label %719

675:                                              ; preds = %672
  %676 = load %struct.target*, %struct.target** %7, align 8
  %677 = getelementptr inbounds %struct.target, %struct.target* %676, i32 0, i32 28
  %678 = load i64, i64* %677, align 8
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %685

680:                                              ; preds = %675
  %681 = load %struct.target*, %struct.target** %7, align 8
  %682 = getelementptr inbounds %struct.target, %struct.target* %681, i32 0, i32 0
  %683 = load i64, i64* %682, align 8
  %684 = icmp ne i64 %683, 0
  br label %685

685:                                              ; preds = %680, %675
  %686 = phi i1 [ false, %675 ], [ %684, %680 ]
  %687 = zext i1 %686 to i32
  %688 = call i64 @unlikely(i32 %687)
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %690, label %714

690:                                              ; preds = %685
  %691 = load %struct.target*, %struct.target** %7, align 8
  %692 = getelementptr inbounds %struct.target, %struct.target* %691, i32 0, i32 27
  %693 = load i32, i32* %692, align 8
  %694 = load %struct.target*, %struct.target** %7, align 8
  %695 = getelementptr inbounds %struct.target, %struct.target* %694, i32 0, i32 18
  %696 = load i32, i32* %695, align 8
  %697 = load i32, i32* @majflt_fix_ratio, align 4
  %698 = mul nsw i32 %696, %697
  %699 = sext i32 %698 to i64
  %700 = load i64, i64* @include_exited_childs, align 8
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %709

702:                                              ; preds = %690
  %703 = load %struct.target*, %struct.target** %7, align 8
  %704 = getelementptr inbounds %struct.target, %struct.target* %703, i32 0, i32 19
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* @cmajflt_fix_ratio, align 4
  %707 = mul nsw i32 %705, %706
  %708 = sext i32 %707 to i64
  br label %710

709:                                              ; preds = %690
  br label %710

710:                                              ; preds = %709, %702
  %711 = phi i64 [ %708, %702 ], [ 0, %709 ]
  %712 = add i64 %699, %711
  %713 = call i32 @send_SET(i32 %693, i64 %712)
  br label %714

714:                                              ; preds = %710, %685
  br label %715

715:                                              ; preds = %714
  %716 = load %struct.target*, %struct.target** %7, align 8
  %717 = getelementptr inbounds %struct.target, %struct.target* %716, i32 0, i32 29
  %718 = load %struct.target*, %struct.target** %717, align 8
  store %struct.target* %718, %struct.target** %7, align 8
  br label %672

719:                                              ; preds = %672
  %720 = call i32 (...) @send_END()
  %721 = load i8*, i8** %5, align 8
  %722 = load i32, i32* %6, align 4
  %723 = call i32 @send_BEGIN(i8* %721, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %722)
  %724 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %724, %struct.target** %7, align 8
  br label %725

725:                                              ; preds = %752, %719
  %726 = load %struct.target*, %struct.target** %7, align 8
  %727 = icmp ne %struct.target* %726, null
  br i1 %727, label %728, label %756

728:                                              ; preds = %725
  %729 = load %struct.target*, %struct.target** %7, align 8
  %730 = getelementptr inbounds %struct.target, %struct.target* %729, i32 0, i32 28
  %731 = load i64, i64* %730, align 8
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %738

733:                                              ; preds = %728
  %734 = load %struct.target*, %struct.target** %7, align 8
  %735 = getelementptr inbounds %struct.target, %struct.target* %734, i32 0, i32 0
  %736 = load i64, i64* %735, align 8
  %737 = icmp ne i64 %736, 0
  br label %738

738:                                              ; preds = %733, %728
  %739 = phi i1 [ false, %728 ], [ %737, %733 ]
  %740 = zext i1 %739 to i32
  %741 = call i64 @unlikely(i32 %740)
  %742 = icmp ne i64 %741, 0
  br i1 %742, label %743, label %751

743:                                              ; preds = %738
  %744 = load %struct.target*, %struct.target** %7, align 8
  %745 = getelementptr inbounds %struct.target, %struct.target* %744, i32 0, i32 27
  %746 = load i32, i32* %745, align 8
  %747 = load %struct.target*, %struct.target** %7, align 8
  %748 = getelementptr inbounds %struct.target, %struct.target* %747, i32 0, i32 20
  %749 = load i64, i64* %748, align 8
  %750 = call i32 @send_SET(i32 %746, i64 %749)
  br label %751

751:                                              ; preds = %743, %738
  br label %752

752:                                              ; preds = %751
  %753 = load %struct.target*, %struct.target** %7, align 8
  %754 = getelementptr inbounds %struct.target, %struct.target* %753, i32 0, i32 29
  %755 = load %struct.target*, %struct.target** %754, align 8
  store %struct.target* %755, %struct.target** %7, align 8
  br label %725

756:                                              ; preds = %725
  %757 = call i32 (...) @send_END()
  %758 = load i8*, i8** %5, align 8
  %759 = load i32, i32* %6, align 4
  %760 = call i32 @send_BEGIN(i8* %758, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %759)
  %761 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %761, %struct.target** %7, align 8
  br label %762

762:                                              ; preds = %789, %756
  %763 = load %struct.target*, %struct.target** %7, align 8
  %764 = icmp ne %struct.target* %763, null
  br i1 %764, label %765, label %793

765:                                              ; preds = %762
  %766 = load %struct.target*, %struct.target** %7, align 8
  %767 = getelementptr inbounds %struct.target, %struct.target* %766, i32 0, i32 28
  %768 = load i64, i64* %767, align 8
  %769 = icmp ne i64 %768, 0
  br i1 %769, label %770, label %775

770:                                              ; preds = %765
  %771 = load %struct.target*, %struct.target** %7, align 8
  %772 = getelementptr inbounds %struct.target, %struct.target* %771, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = icmp ne i64 %773, 0
  br label %775

775:                                              ; preds = %770, %765
  %776 = phi i1 [ false, %765 ], [ %774, %770 ]
  %777 = zext i1 %776 to i32
  %778 = call i64 @unlikely(i32 %777)
  %779 = icmp ne i64 %778, 0
  br i1 %779, label %780, label %788

780:                                              ; preds = %775
  %781 = load %struct.target*, %struct.target** %7, align 8
  %782 = getelementptr inbounds %struct.target, %struct.target* %781, i32 0, i32 27
  %783 = load i32, i32* %782, align 8
  %784 = load %struct.target*, %struct.target** %7, align 8
  %785 = getelementptr inbounds %struct.target, %struct.target* %784, i32 0, i32 21
  %786 = load i64, i64* %785, align 8
  %787 = call i32 @send_SET(i32 %783, i64 %786)
  br label %788

788:                                              ; preds = %780, %775
  br label %789

789:                                              ; preds = %788
  %790 = load %struct.target*, %struct.target** %7, align 8
  %791 = getelementptr inbounds %struct.target, %struct.target* %790, i32 0, i32 29
  %792 = load %struct.target*, %struct.target** %791, align 8
  store %struct.target* %792, %struct.target** %7, align 8
  br label %762

793:                                              ; preds = %762
  %794 = call i32 (...) @send_END()
  %795 = load i8*, i8** %5, align 8
  %796 = load i32, i32* %6, align 4
  %797 = call i32 @send_BEGIN(i8* %795, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %796)
  %798 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %798, %struct.target** %7, align 8
  br label %799

799:                                              ; preds = %826, %793
  %800 = load %struct.target*, %struct.target** %7, align 8
  %801 = icmp ne %struct.target* %800, null
  br i1 %801, label %802, label %830

802:                                              ; preds = %799
  %803 = load %struct.target*, %struct.target** %7, align 8
  %804 = getelementptr inbounds %struct.target, %struct.target* %803, i32 0, i32 28
  %805 = load i64, i64* %804, align 8
  %806 = icmp ne i64 %805, 0
  br i1 %806, label %807, label %812

807:                                              ; preds = %802
  %808 = load %struct.target*, %struct.target** %7, align 8
  %809 = getelementptr inbounds %struct.target, %struct.target* %808, i32 0, i32 0
  %810 = load i64, i64* %809, align 8
  %811 = icmp ne i64 %810, 0
  br label %812

812:                                              ; preds = %807, %802
  %813 = phi i1 [ false, %802 ], [ %811, %807 ]
  %814 = zext i1 %813 to i32
  %815 = call i64 @unlikely(i32 %814)
  %816 = icmp ne i64 %815, 0
  br i1 %816, label %817, label %825

817:                                              ; preds = %812
  %818 = load %struct.target*, %struct.target** %7, align 8
  %819 = getelementptr inbounds %struct.target, %struct.target* %818, i32 0, i32 27
  %820 = load i32, i32* %819, align 8
  %821 = load %struct.target*, %struct.target** %7, align 8
  %822 = getelementptr inbounds %struct.target, %struct.target* %821, i32 0, i32 22
  %823 = load i64, i64* %822, align 8
  %824 = call i32 @send_SET(i32 %820, i64 %823)
  br label %825

825:                                              ; preds = %817, %812
  br label %826

826:                                              ; preds = %825
  %827 = load %struct.target*, %struct.target** %7, align 8
  %828 = getelementptr inbounds %struct.target, %struct.target* %827, i32 0, i32 29
  %829 = load %struct.target*, %struct.target** %828, align 8
  store %struct.target* %829, %struct.target** %7, align 8
  br label %799

830:                                              ; preds = %799
  %831 = call i32 (...) @send_END()
  %832 = load i8*, i8** %5, align 8
  %833 = load i32, i32* %6, align 4
  %834 = call i32 @send_BEGIN(i8* %832, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %833)
  %835 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %835, %struct.target** %7, align 8
  br label %836

836:                                              ; preds = %863, %830
  %837 = load %struct.target*, %struct.target** %7, align 8
  %838 = icmp ne %struct.target* %837, null
  br i1 %838, label %839, label %867

839:                                              ; preds = %836
  %840 = load %struct.target*, %struct.target** %7, align 8
  %841 = getelementptr inbounds %struct.target, %struct.target* %840, i32 0, i32 28
  %842 = load i64, i64* %841, align 8
  %843 = icmp ne i64 %842, 0
  br i1 %843, label %844, label %849

844:                                              ; preds = %839
  %845 = load %struct.target*, %struct.target** %7, align 8
  %846 = getelementptr inbounds %struct.target, %struct.target* %845, i32 0, i32 0
  %847 = load i64, i64* %846, align 8
  %848 = icmp ne i64 %847, 0
  br label %849

849:                                              ; preds = %844, %839
  %850 = phi i1 [ false, %839 ], [ %848, %844 ]
  %851 = zext i1 %850 to i32
  %852 = call i64 @unlikely(i32 %851)
  %853 = icmp ne i64 %852, 0
  br i1 %853, label %854, label %862

854:                                              ; preds = %849
  %855 = load %struct.target*, %struct.target** %7, align 8
  %856 = getelementptr inbounds %struct.target, %struct.target* %855, i32 0, i32 27
  %857 = load i32, i32* %856, align 8
  %858 = load %struct.target*, %struct.target** %7, align 8
  %859 = getelementptr inbounds %struct.target, %struct.target* %858, i32 0, i32 23
  %860 = load i64, i64* %859, align 8
  %861 = call i32 @send_SET(i32 %857, i64 %860)
  br label %862

862:                                              ; preds = %854, %849
  br label %863

863:                                              ; preds = %862
  %864 = load %struct.target*, %struct.target** %7, align 8
  %865 = getelementptr inbounds %struct.target, %struct.target* %864, i32 0, i32 29
  %866 = load %struct.target*, %struct.target** %865, align 8
  store %struct.target* %866, %struct.target** %7, align 8
  br label %836

867:                                              ; preds = %836
  %868 = call i32 (...) @send_END()
  %869 = load i64, i64* @enable_file_charts, align 8
  %870 = icmp ne i64 %869, 0
  br i1 %870, label %871, label %983

871:                                              ; preds = %867
  %872 = load i8*, i8** %5, align 8
  %873 = load i32, i32* %6, align 4
  %874 = call i32 @send_BEGIN(i8* %872, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %873)
  %875 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %875, %struct.target** %7, align 8
  br label %876

876:                                              ; preds = %903, %871
  %877 = load %struct.target*, %struct.target** %7, align 8
  %878 = icmp ne %struct.target* %877, null
  br i1 %878, label %879, label %907

879:                                              ; preds = %876
  %880 = load %struct.target*, %struct.target** %7, align 8
  %881 = getelementptr inbounds %struct.target, %struct.target* %880, i32 0, i32 28
  %882 = load i64, i64* %881, align 8
  %883 = icmp ne i64 %882, 0
  br i1 %883, label %884, label %889

884:                                              ; preds = %879
  %885 = load %struct.target*, %struct.target** %7, align 8
  %886 = getelementptr inbounds %struct.target, %struct.target* %885, i32 0, i32 0
  %887 = load i64, i64* %886, align 8
  %888 = icmp ne i64 %887, 0
  br label %889

889:                                              ; preds = %884, %879
  %890 = phi i1 [ false, %879 ], [ %888, %884 ]
  %891 = zext i1 %890 to i32
  %892 = call i64 @unlikely(i32 %891)
  %893 = icmp ne i64 %892, 0
  br i1 %893, label %894, label %902

894:                                              ; preds = %889
  %895 = load %struct.target*, %struct.target** %7, align 8
  %896 = getelementptr inbounds %struct.target, %struct.target* %895, i32 0, i32 27
  %897 = load i32, i32* %896, align 8
  %898 = load %struct.target*, %struct.target** %7, align 8
  %899 = getelementptr inbounds %struct.target, %struct.target* %898, i32 0, i32 24
  %900 = load i64, i64* %899, align 8
  %901 = call i32 @send_SET(i32 %897, i64 %900)
  br label %902

902:                                              ; preds = %894, %889
  br label %903

903:                                              ; preds = %902
  %904 = load %struct.target*, %struct.target** %7, align 8
  %905 = getelementptr inbounds %struct.target, %struct.target* %904, i32 0, i32 29
  %906 = load %struct.target*, %struct.target** %905, align 8
  store %struct.target* %906, %struct.target** %7, align 8
  br label %876

907:                                              ; preds = %876
  %908 = call i32 (...) @send_END()
  %909 = load i8*, i8** %5, align 8
  %910 = load i32, i32* %6, align 4
  %911 = call i32 @send_BEGIN(i8* %909, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %910)
  %912 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %912, %struct.target** %7, align 8
  br label %913

913:                                              ; preds = %940, %907
  %914 = load %struct.target*, %struct.target** %7, align 8
  %915 = icmp ne %struct.target* %914, null
  br i1 %915, label %916, label %944

916:                                              ; preds = %913
  %917 = load %struct.target*, %struct.target** %7, align 8
  %918 = getelementptr inbounds %struct.target, %struct.target* %917, i32 0, i32 28
  %919 = load i64, i64* %918, align 8
  %920 = icmp ne i64 %919, 0
  br i1 %920, label %921, label %926

921:                                              ; preds = %916
  %922 = load %struct.target*, %struct.target** %7, align 8
  %923 = getelementptr inbounds %struct.target, %struct.target* %922, i32 0, i32 0
  %924 = load i64, i64* %923, align 8
  %925 = icmp ne i64 %924, 0
  br label %926

926:                                              ; preds = %921, %916
  %927 = phi i1 [ false, %916 ], [ %925, %921 ]
  %928 = zext i1 %927 to i32
  %929 = call i64 @unlikely(i32 %928)
  %930 = icmp ne i64 %929, 0
  br i1 %930, label %931, label %939

931:                                              ; preds = %926
  %932 = load %struct.target*, %struct.target** %7, align 8
  %933 = getelementptr inbounds %struct.target, %struct.target* %932, i32 0, i32 27
  %934 = load i32, i32* %933, align 8
  %935 = load %struct.target*, %struct.target** %7, align 8
  %936 = getelementptr inbounds %struct.target, %struct.target* %935, i32 0, i32 25
  %937 = load i64, i64* %936, align 8
  %938 = call i32 @send_SET(i32 %934, i64 %937)
  br label %939

939:                                              ; preds = %931, %926
  br label %940

940:                                              ; preds = %939
  %941 = load %struct.target*, %struct.target** %7, align 8
  %942 = getelementptr inbounds %struct.target, %struct.target* %941, i32 0, i32 29
  %943 = load %struct.target*, %struct.target** %942, align 8
  store %struct.target* %943, %struct.target** %7, align 8
  br label %913

944:                                              ; preds = %913
  %945 = call i32 (...) @send_END()
  %946 = load i8*, i8** %5, align 8
  %947 = load i32, i32* %6, align 4
  %948 = call i32 @send_BEGIN(i8* %946, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %947)
  %949 = load %struct.target*, %struct.target** %4, align 8
  store %struct.target* %949, %struct.target** %7, align 8
  br label %950

950:                                              ; preds = %977, %944
  %951 = load %struct.target*, %struct.target** %7, align 8
  %952 = icmp ne %struct.target* %951, null
  br i1 %952, label %953, label %981

953:                                              ; preds = %950
  %954 = load %struct.target*, %struct.target** %7, align 8
  %955 = getelementptr inbounds %struct.target, %struct.target* %954, i32 0, i32 28
  %956 = load i64, i64* %955, align 8
  %957 = icmp ne i64 %956, 0
  br i1 %957, label %958, label %963

958:                                              ; preds = %953
  %959 = load %struct.target*, %struct.target** %7, align 8
  %960 = getelementptr inbounds %struct.target, %struct.target* %959, i32 0, i32 0
  %961 = load i64, i64* %960, align 8
  %962 = icmp ne i64 %961, 0
  br label %963

963:                                              ; preds = %958, %953
  %964 = phi i1 [ false, %953 ], [ %962, %958 ]
  %965 = zext i1 %964 to i32
  %966 = call i64 @unlikely(i32 %965)
  %967 = icmp ne i64 %966, 0
  br i1 %967, label %968, label %976

968:                                              ; preds = %963
  %969 = load %struct.target*, %struct.target** %7, align 8
  %970 = getelementptr inbounds %struct.target, %struct.target* %969, i32 0, i32 27
  %971 = load i32, i32* %970, align 8
  %972 = load %struct.target*, %struct.target** %7, align 8
  %973 = getelementptr inbounds %struct.target, %struct.target* %972, i32 0, i32 26
  %974 = load i64, i64* %973, align 8
  %975 = call i32 @send_SET(i32 %971, i64 %974)
  br label %976

976:                                              ; preds = %968, %963
  br label %977

977:                                              ; preds = %976
  %978 = load %struct.target*, %struct.target** %7, align 8
  %979 = getelementptr inbounds %struct.target, %struct.target* %978, i32 0, i32 29
  %980 = load %struct.target*, %struct.target** %979, align 8
  store %struct.target* %980, %struct.target** %7, align 8
  br label %950

981:                                              ; preds = %950
  %982 = call i32 (...) @send_END()
  br label %983

983:                                              ; preds = %981, %867
  ret void
}

declare dso_local i32 @send_BEGIN(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_SET(i32, i64) #1

declare dso_local i32 @send_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
