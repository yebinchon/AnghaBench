; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_devices_system_edac_mc.c_do_proc_sys_devices_system_edac_mc.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_devices_system_edac_mc.c_do_proc_sys_devices_system_edac_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc = type { i32, i64, i32, i64, i8*, i32, i64, %struct.mc*, i8*, i64, i8*, i8* }

@mc_root = common dso_local global %struct.mc* null, align 8
@do_proc_sys_devices_system_edac_mc.do_ce = internal global i32 -1, align 4
@do_proc_sys_devices_system_edac_mc.do_ue = internal global i32 -1, align 4
@.str = private unnamed_addr constant [40 x i8] c"plugin:proc:/sys/devices/system/edac/mc\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"enable ECC memory correctable errors\00", align 1
@CONFIG_BOOLEAN_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"enable ECC memory uncorrectable errors\00", align 1
@CONFIG_BOOLEAN_NO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@CONFIG_BOOLEAN_YES = common dso_local global i32 0, align 4
@netdata_zero_metrics_enabled = common dso_local global i32 0, align 4
@do_proc_sys_devices_system_edac_mc.ce_st = internal global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ecc_ce\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ecc\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ECC Memory Correctable Errors\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"/sys/devices/system/edac/mc\00", align 1
@NETDATA_CHART_PRIO_MEM_HW_ECC_CE = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@do_proc_sys_devices_system_edac_mc.ue_st = internal global i32* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"ecc_ue\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"ECC Memory Uncorrectable Errors\00", align 1
@NETDATA_CHART_PRIO_MEM_HW_ECC_UE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_proc_sys_devices_system_edac_mc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mc*, %struct.mc** @mc_root, align 8
  %11 = icmp eq %struct.mc* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = call i32 (...) @find_all_mc()
  %17 = load %struct.mc*, %struct.mc** @mc_root, align 8
  %18 = icmp eq %struct.mc* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %388

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %25 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ce, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %32 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 %32, i32* @do_proc_sys_devices_system_edac_mc.do_ce, align 4
  %33 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %34 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 %34, i32* @do_proc_sys_devices_system_edac_mc.do_ue, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ce, align 4
  %37 = load i32, i32* @CONFIG_BOOLEAN_NO, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %129

39:                                               ; preds = %35
  %40 = load %struct.mc*, %struct.mc** @mc_root, align 8
  store %struct.mc* %40, %struct.mc** %8, align 8
  br label %41

41:                                               ; preds = %124, %39
  %42 = load %struct.mc*, %struct.mc** %8, align 8
  %43 = icmp ne %struct.mc* %42, null
  br i1 %43, label %44, label %128

44:                                               ; preds = %41
  %45 = load %struct.mc*, %struct.mc** %8, align 8
  %46 = getelementptr inbounds %struct.mc, %struct.mc* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %123

49:                                               ; preds = %44
  %50 = load %struct.mc*, %struct.mc** %8, align 8
  %51 = getelementptr inbounds %struct.mc, %struct.mc* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.mc*, %struct.mc** %8, align 8
  %53 = getelementptr inbounds %struct.mc, %struct.mc* %52, i32 0, i32 11
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %49
  %61 = load %struct.mc*, %struct.mc** %8, align 8
  %62 = getelementptr inbounds %struct.mc, %struct.mc* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %65 = call i8* @procfile_open(i64 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.mc*, %struct.mc** %8, align 8
  %67 = getelementptr inbounds %struct.mc, %struct.mc* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  %68 = load %struct.mc*, %struct.mc** %8, align 8
  %69 = getelementptr inbounds %struct.mc, %struct.mc* %68, i32 0, i32 11
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %124

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.mc*, %struct.mc** %8, align 8
  %80 = getelementptr inbounds %struct.mc, %struct.mc* %79, i32 0, i32 11
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @procfile_readall(i8* %81)
  %83 = load %struct.mc*, %struct.mc** %8, align 8
  %84 = getelementptr inbounds %struct.mc, %struct.mc* %83, i32 0, i32 11
  store i8* %82, i8** %84, align 8
  %85 = load %struct.mc*, %struct.mc** %8, align 8
  %86 = getelementptr inbounds %struct.mc, %struct.mc* %85, i32 0, i32 11
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %78
  %90 = load %struct.mc*, %struct.mc** %8, align 8
  %91 = getelementptr inbounds %struct.mc, %struct.mc* %90, i32 0, i32 11
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @procfile_lines(i8* %92)
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.mc*, %struct.mc** %8, align 8
  %97 = getelementptr inbounds %struct.mc, %struct.mc* %96, i32 0, i32 11
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @procfile_linewords(i8* %98, i32 0)
  %100 = icmp slt i32 %99, 1
  br label %101

101:                                              ; preds = %95, %89, %78
  %102 = phi i1 [ true, %89 ], [ true, %78 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %124

107:                                              ; preds = %101
  %108 = load %struct.mc*, %struct.mc** %8, align 8
  %109 = getelementptr inbounds %struct.mc, %struct.mc* %108, i32 0, i32 11
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @procfile_lineword(i8* %110, i32 0, i32 0)
  %112 = call i8* @str2ull(i32 %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.mc*, %struct.mc** %8, align 8
  %115 = getelementptr inbounds %struct.mc, %struct.mc* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.mc*, %struct.mc** %8, align 8
  %117 = getelementptr inbounds %struct.mc, %struct.mc* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %6, align 8
  %121 = load %struct.mc*, %struct.mc** %8, align 8
  %122 = getelementptr inbounds %struct.mc, %struct.mc* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %107, %44
  br label %124

124:                                              ; preds = %123, %106, %76
  %125 = load %struct.mc*, %struct.mc** %8, align 8
  %126 = getelementptr inbounds %struct.mc, %struct.mc* %125, i32 0, i32 7
  %127 = load %struct.mc*, %struct.mc** %126, align 8
  store %struct.mc* %127, %struct.mc** %8, align 8
  br label %41

128:                                              ; preds = %41
  br label %129

129:                                              ; preds = %128, %35
  %130 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ue, align 4
  %131 = load i32, i32* @CONFIG_BOOLEAN_NO, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %223

133:                                              ; preds = %129
  %134 = load %struct.mc*, %struct.mc** @mc_root, align 8
  store %struct.mc* %134, %struct.mc** %8, align 8
  br label %135

135:                                              ; preds = %218, %133
  %136 = load %struct.mc*, %struct.mc** %8, align 8
  %137 = icmp ne %struct.mc* %136, null
  br i1 %137, label %138, label %222

138:                                              ; preds = %135
  %139 = load %struct.mc*, %struct.mc** %8, align 8
  %140 = getelementptr inbounds %struct.mc, %struct.mc* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %217

143:                                              ; preds = %138
  %144 = load %struct.mc*, %struct.mc** %8, align 8
  %145 = getelementptr inbounds %struct.mc, %struct.mc* %144, i32 0, i32 2
  store i32 0, i32* %145, align 8
  %146 = load %struct.mc*, %struct.mc** %8, align 8
  %147 = getelementptr inbounds %struct.mc, %struct.mc* %146, i32 0, i32 10
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %143
  %155 = load %struct.mc*, %struct.mc** %8, align 8
  %156 = getelementptr inbounds %struct.mc, %struct.mc* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %159 = call i8* @procfile_open(i64 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load %struct.mc*, %struct.mc** %8, align 8
  %161 = getelementptr inbounds %struct.mc, %struct.mc* %160, i32 0, i32 10
  store i8* %159, i8** %161, align 8
  %162 = load %struct.mc*, %struct.mc** %8, align 8
  %163 = getelementptr inbounds %struct.mc, %struct.mc* %162, i32 0, i32 10
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %154
  br label %218

171:                                              ; preds = %154
  br label %172

172:                                              ; preds = %171, %143
  %173 = load %struct.mc*, %struct.mc** %8, align 8
  %174 = getelementptr inbounds %struct.mc, %struct.mc* %173, i32 0, i32 10
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @procfile_readall(i8* %175)
  %177 = load %struct.mc*, %struct.mc** %8, align 8
  %178 = getelementptr inbounds %struct.mc, %struct.mc* %177, i32 0, i32 10
  store i8* %176, i8** %178, align 8
  %179 = load %struct.mc*, %struct.mc** %8, align 8
  %180 = getelementptr inbounds %struct.mc, %struct.mc* %179, i32 0, i32 10
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %195

183:                                              ; preds = %172
  %184 = load %struct.mc*, %struct.mc** %8, align 8
  %185 = getelementptr inbounds %struct.mc, %struct.mc* %184, i32 0, i32 10
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @procfile_lines(i8* %186)
  %188 = icmp slt i32 %187, 1
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = load %struct.mc*, %struct.mc** %8, align 8
  %191 = getelementptr inbounds %struct.mc, %struct.mc* %190, i32 0, i32 10
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @procfile_linewords(i8* %192, i32 0)
  %194 = icmp slt i32 %193, 1
  br label %195

195:                                              ; preds = %189, %183, %172
  %196 = phi i1 [ true, %183 ], [ true, %172 ], [ %194, %189 ]
  %197 = zext i1 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %218

201:                                              ; preds = %195
  %202 = load %struct.mc*, %struct.mc** %8, align 8
  %203 = getelementptr inbounds %struct.mc, %struct.mc* %202, i32 0, i32 10
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @procfile_lineword(i8* %204, i32 0, i32 0)
  %206 = call i8* @str2ull(i32 %205)
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.mc*, %struct.mc** %8, align 8
  %209 = getelementptr inbounds %struct.mc, %struct.mc* %208, i32 0, i32 3
  store i64 %207, i64* %209, align 8
  %210 = load %struct.mc*, %struct.mc** %8, align 8
  %211 = getelementptr inbounds %struct.mc, %struct.mc* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %7, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %7, align 8
  %215 = load %struct.mc*, %struct.mc** %8, align 8
  %216 = getelementptr inbounds %struct.mc, %struct.mc* %215, i32 0, i32 2
  store i32 1, i32* %216, align 8
  br label %217

217:                                              ; preds = %201, %138
  br label %218

218:                                              ; preds = %217, %200, %170
  %219 = load %struct.mc*, %struct.mc** %8, align 8
  %220 = getelementptr inbounds %struct.mc, %struct.mc* %219, i32 0, i32 7
  %221 = load %struct.mc*, %struct.mc** %220, align 8
  store %struct.mc* %221, %struct.mc** %8, align 8
  br label %135

222:                                              ; preds = %135
  br label %223

223:                                              ; preds = %222, %129
  %224 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ce, align 4
  %225 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %238, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ce, align 4
  %229 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %305

231:                                              ; preds = %227
  %232 = load i64, i64* %6, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %236 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %305

238:                                              ; preds = %234, %231, %223
  %239 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %239, i32* @do_proc_sys_devices_system_edac_mc.do_ce, align 4
  %240 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ce_st, align 8
  %241 = icmp ne i32* %240, null
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = call i64 @unlikely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %238
  %247 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %248 = load i32, i32* @NETDATA_CHART_PRIO_MEM_HW_ECC_CE, align 4
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %251 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %247, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %248, i32 %249, i32 %250)
  store i32* %251, i32** @do_proc_sys_devices_system_edac_mc.ce_st, align 8
  br label %255

252:                                              ; preds = %238
  %253 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ce_st, align 8
  %254 = call i32 @rrdset_next(i32* %253)
  br label %255

255:                                              ; preds = %252, %246
  %256 = load %struct.mc*, %struct.mc** @mc_root, align 8
  store %struct.mc* %256, %struct.mc** %8, align 8
  br label %257

257:                                              ; preds = %298, %255
  %258 = load %struct.mc*, %struct.mc** %8, align 8
  %259 = icmp ne %struct.mc* %258, null
  br i1 %259, label %260, label %302

260:                                              ; preds = %257
  %261 = load %struct.mc*, %struct.mc** %8, align 8
  %262 = getelementptr inbounds %struct.mc, %struct.mc* %261, i32 0, i32 9
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %297

265:                                              ; preds = %260
  %266 = load %struct.mc*, %struct.mc** %8, align 8
  %267 = getelementptr inbounds %struct.mc, %struct.mc* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %297

270:                                              ; preds = %265
  %271 = load %struct.mc*, %struct.mc** %8, align 8
  %272 = getelementptr inbounds %struct.mc, %struct.mc* %271, i32 0, i32 8
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %273, null
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = call i64 @unlikely(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %270
  %280 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ce_st, align 8
  %281 = load %struct.mc*, %struct.mc** %8, align 8
  %282 = getelementptr inbounds %struct.mc, %struct.mc* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %285 = call i8* @rrddim_add(i32* %280, i32 %283, i32* null, i32 1, i32 1, i32 %284)
  %286 = load %struct.mc*, %struct.mc** %8, align 8
  %287 = getelementptr inbounds %struct.mc, %struct.mc* %286, i32 0, i32 8
  store i8* %285, i8** %287, align 8
  br label %288

288:                                              ; preds = %279, %270
  %289 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ce_st, align 8
  %290 = load %struct.mc*, %struct.mc** %8, align 8
  %291 = getelementptr inbounds %struct.mc, %struct.mc* %290, i32 0, i32 8
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.mc*, %struct.mc** %8, align 8
  %294 = getelementptr inbounds %struct.mc, %struct.mc* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @rrddim_set_by_pointer(i32* %289, i8* %292, i64 %295)
  br label %297

297:                                              ; preds = %288, %265, %260
  br label %298

298:                                              ; preds = %297
  %299 = load %struct.mc*, %struct.mc** %8, align 8
  %300 = getelementptr inbounds %struct.mc, %struct.mc* %299, i32 0, i32 7
  %301 = load %struct.mc*, %struct.mc** %300, align 8
  store %struct.mc* %301, %struct.mc** %8, align 8
  br label %257

302:                                              ; preds = %257
  %303 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ce_st, align 8
  %304 = call i32 @rrdset_done(i32* %303)
  br label %305

305:                                              ; preds = %302, %234, %227
  %306 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ue, align 4
  %307 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %320, label %309

309:                                              ; preds = %305
  %310 = load i32, i32* @do_proc_sys_devices_system_edac_mc.do_ue, align 4
  %311 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %387

313:                                              ; preds = %309
  %314 = load i64, i64* %7, align 8
  %315 = icmp sgt i64 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %318 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %387

320:                                              ; preds = %316, %313, %305
  %321 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %321, i32* @do_proc_sys_devices_system_edac_mc.do_ue, align 4
  %322 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ue_st, align 8
  %323 = icmp ne i32* %322, null
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = call i64 @unlikely(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %320
  %329 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %330 = load i32, i32* @NETDATA_CHART_PRIO_MEM_HW_ECC_UE, align 4
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %333 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %329, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %330, i32 %331, i32 %332)
  store i32* %333, i32** @do_proc_sys_devices_system_edac_mc.ue_st, align 8
  br label %337

334:                                              ; preds = %320
  %335 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ue_st, align 8
  %336 = call i32 @rrdset_next(i32* %335)
  br label %337

337:                                              ; preds = %334, %328
  %338 = load %struct.mc*, %struct.mc** @mc_root, align 8
  store %struct.mc* %338, %struct.mc** %8, align 8
  br label %339

339:                                              ; preds = %380, %337
  %340 = load %struct.mc*, %struct.mc** %8, align 8
  %341 = icmp ne %struct.mc* %340, null
  br i1 %341, label %342, label %384

342:                                              ; preds = %339
  %343 = load %struct.mc*, %struct.mc** %8, align 8
  %344 = getelementptr inbounds %struct.mc, %struct.mc* %343, i32 0, i32 6
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %379

347:                                              ; preds = %342
  %348 = load %struct.mc*, %struct.mc** %8, align 8
  %349 = getelementptr inbounds %struct.mc, %struct.mc* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %379

352:                                              ; preds = %347
  %353 = load %struct.mc*, %struct.mc** %8, align 8
  %354 = getelementptr inbounds %struct.mc, %struct.mc* %353, i32 0, i32 4
  %355 = load i8*, i8** %354, align 8
  %356 = icmp ne i8* %355, null
  %357 = xor i1 %356, true
  %358 = zext i1 %357 to i32
  %359 = call i64 @unlikely(i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %352
  %362 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ue_st, align 8
  %363 = load %struct.mc*, %struct.mc** %8, align 8
  %364 = getelementptr inbounds %struct.mc, %struct.mc* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %367 = call i8* @rrddim_add(i32* %362, i32 %365, i32* null, i32 1, i32 1, i32 %366)
  %368 = load %struct.mc*, %struct.mc** %8, align 8
  %369 = getelementptr inbounds %struct.mc, %struct.mc* %368, i32 0, i32 4
  store i8* %367, i8** %369, align 8
  br label %370

370:                                              ; preds = %361, %352
  %371 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ue_st, align 8
  %372 = load %struct.mc*, %struct.mc** %8, align 8
  %373 = getelementptr inbounds %struct.mc, %struct.mc* %372, i32 0, i32 4
  %374 = load i8*, i8** %373, align 8
  %375 = load %struct.mc*, %struct.mc** %8, align 8
  %376 = getelementptr inbounds %struct.mc, %struct.mc* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = call i32 @rrddim_set_by_pointer(i32* %371, i8* %374, i64 %377)
  br label %379

379:                                              ; preds = %370, %347, %342
  br label %380

380:                                              ; preds = %379
  %381 = load %struct.mc*, %struct.mc** %8, align 8
  %382 = getelementptr inbounds %struct.mc, %struct.mc* %381, i32 0, i32 7
  %383 = load %struct.mc*, %struct.mc** %382, align 8
  store %struct.mc* %383, %struct.mc** %8, align 8
  br label %339

384:                                              ; preds = %339
  %385 = load i32*, i32** @do_proc_sys_devices_system_edac_mc.ue_st, align 8
  %386 = call i32 @rrdset_done(i32* %385)
  br label %387

387:                                              ; preds = %384, %316, %309
  store i32 0, i32* %3, align 4
  br label %388

388:                                              ; preds = %387, %22
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_all_mc(...) #1

declare dso_local i32 @config_get_boolean_ondemand(i8*, i8*, i32) #1

declare dso_local i8* @procfile_open(i64, i8*, i32) #1

declare dso_local i8* @procfile_readall(i8*) #1

declare dso_local i32 @procfile_lines(i8*) #1

declare dso_local i32 @procfile_linewords(i8*, i32) #1

declare dso_local i8* @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i8*, i32, i32) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i8* @rrddim_add(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i8*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
