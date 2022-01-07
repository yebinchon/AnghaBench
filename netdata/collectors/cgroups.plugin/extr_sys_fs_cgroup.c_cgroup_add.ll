; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_add.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i8*, i8*, i64, i32, i32, i32, i8*, %struct.cgroup*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@D_CGROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"adding to list, cgroup with id '%s'\00", align 1
@cgroup_root_count = common dso_local global i64 0, align 8
@cgroup_root_max = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"CGROUP: maximum number of cgroups reached (%d). Not adding cgroup '%s'\00", align 1
@enabled_cgroup_patterns = common dso_local global i32 0, align 4
@cgroup_enable_new_cgroups_detected_at_runtime = common dso_local global i32 0, align 4
@cgroup_use_unified_cgroups = common dso_local global i64 0, align 8
@CGROUP_OPTIONS_IS_UNIFIED = common dso_local global i32 0, align 4
@cgroup_root = common dso_local global %struct.cgroup* null, align 8
@enabled_cgroup_renames = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"cgroup '%s' renamed to '%s' (title: '%s')\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"cgroup '%s' will not be renamed - it matches the list of disabled cgroup renames (will be shown as '%s')\00", align 1
@cgroup_enable_systemd_services = common dso_local global i64 0, align 8
@systemd_services_cgroups = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [78 x i8] c"cgroup '%s' with chart id '%s' (title: '%s') matches systemd services cgroups\00", align 1
@CGROUP_CHARTID_LINE_MAX = common dso_local global i32 0, align 4
@CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [84 x i8] c"cgroup '%s' with chart id '%s' (title: '%s') does not match systemd services groups\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"enable cgroup %s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"plugin:cgroups\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"/system.slice/\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"/init.scope/system.slice/\00", align 1
@.str.11 = private unnamed_addr constant [147 x i8] c"CGROUP: chart id '%s' already exists with id '%s' and is enabled. Swapping them by enabling cgroup with id '%s' and disabling cgroup with id '%s'.\00", align 1
@.str.12 = private unnamed_addr constant [158 x i8] c"Control group with chart id '%s' already exists with id '%s' and is enabled. Swapping them by enabling cgroup with id '%s' and disabling cgroup with id '%s'.\00", align 1
@CGROUP_OPTIONS_DISABLED_DUPLICATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [111 x i8] c"CGROUP: chart id '%s' already exists with id '%s' and is enabled and available. Disabling cgroup with id '%s'.\00", align 1
@.str.14 = private unnamed_addr constant [122 x i8] c"Control group with chart id '%s' already exists with id '%s' and is enabled and available. Disabling cgroup with id '%s'.\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"ADDED CGROUP: '%s' with chart id '%s' and title '%s' as %s (default was %s)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup* (i8*)* @cgroup_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup* @cgroup_add(i8* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cgroup*, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* @D_CGROUP, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @debug(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i64, i64* @cgroup_root_count, align 8
  %27 = load i64, i64* @cgroup_root_max, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* @cgroup_root_count, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %30, i8* %31)
  store %struct.cgroup* null, %struct.cgroup** %2, align 8
  br label %447

33:                                               ; preds = %22
  %34 = load i32, i32* @enabled_cgroup_patterns, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @simple_pattern_matches(i32 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @cgroup_enable_new_cgroups_detected_at_runtime, align 4
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  store i32 %42, i32* %4, align 4
  %43 = call %struct.cgroup* @callocz(i32 1, i32 64)
  store %struct.cgroup* %43, %struct.cgroup** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i8* @strdupz(i8* %44)
  %46 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %47 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %49 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @simple_hash(i8* %50)
  %52 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %53 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i8* @cgroup_title_strdupz(i8* %54)
  %56 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %57 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i8* @cgroup_chart_id_strdupz(i8* %58)
  %60 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %61 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %63 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @simple_hash(i8* %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %68 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* @cgroup_use_unified_cgroups, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %41
  %72 = load i32, i32* @CGROUP_OPTIONS_IS_UNIFIED, align 4
  %73 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %74 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %41
  %78 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  %79 = icmp ne %struct.cgroup* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  store %struct.cgroup* %81, %struct.cgroup** @cgroup_root, align 8
  br label %98

82:                                               ; preds = %77
  %83 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  store %struct.cgroup* %83, %struct.cgroup** %6, align 8
  br label %84

84:                                               ; preds = %90, %82
  %85 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %86 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %85, i32 0, i32 7
  %87 = load %struct.cgroup*, %struct.cgroup** %86, align 8
  %88 = icmp ne %struct.cgroup* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %92 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %91, i32 0, i32 7
  %93 = load %struct.cgroup*, %struct.cgroup** %92, align 8
  store %struct.cgroup* %93, %struct.cgroup** %6, align 8
  br label %84

94:                                               ; preds = %84
  %95 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %96 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %97 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %96, i32 0, i32 7
  store %struct.cgroup* %95, %struct.cgroup** %97, align 8
  br label %98

98:                                               ; preds = %94, %80
  %99 = load i64, i64* @cgroup_root_count, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* @cgroup_root_count, align 8
  %101 = load i32, i32* @enabled_cgroup_renames, align 4
  %102 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %103 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @simple_pattern_matches(i32 %101, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %98
  %108 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %109 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %108, i32 0, i32 4
  store i32 2, i32* %109, align 4
  %110 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %111 = call i32 @cgroup_get_chart_name(%struct.cgroup* %110)
  %112 = load i32, i32* @D_CGROUP, align 4
  %113 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %114 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %117 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %120 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %119, i32 0, i32 6
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i32, i8*, i8*, ...) @debug(i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %115, i8* %118, i8* %121)
  br label %132

123:                                              ; preds = %98
  %124 = load i32, i32* @D_CGROUP, align 4
  %125 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %126 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %129 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, i8*, ...) @debug(i32 %124, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i8* %127, i8* %130)
  br label %132

132:                                              ; preds = %123, %107
  store i32 1, i32* %7, align 4
  %133 = load i64, i64* @cgroup_enable_systemd_services, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %264

135:                                              ; preds = %132
  %136 = load i32, i32* @systemd_services_cgroups, align 4
  %137 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %138 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @simple_pattern_matches(i32 %136, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @systemd_services_cgroups, align 4
  %144 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %145 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @simple_pattern_matches(i32 %143, i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %251

149:                                              ; preds = %142, %135
  %150 = load i32, i32* @D_CGROUP, align 4
  %151 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %152 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %155 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %158 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i32, i8*, i8*, ...) @debug(i32 %150, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0), i8* %153, i8* %156, i8* %159)
  %161 = load i32, i32* @CGROUP_CHARTID_LINE_MAX, align 4
  %162 = add nsw i32 %161, 1
  %163 = zext i32 %162 to i64
  %164 = call i8* @llvm.stacksave()
  store i8* %164, i8** %8, align 8
  %165 = alloca i8, i64 %163, align 16
  store i64 %163, i64* %9, align 8
  %166 = load i32, i32* @CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE, align 4
  %167 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %168 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %172 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @CGROUP_CHARTID_LINE_MAX, align 4
  %175 = call i32 @strncpy(i8* %165, i8* %173, i32 %174)
  store i8* %165, i8** %10, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = call i64 @strlen(i8* %176)
  store i64 %177, i64* %11, align 8
  br label %178

178:                                              ; preds = %193, %149
  %179 = load i64, i64* %11, align 8
  %180 = add i64 %179, -1
  store i64 %180, i64* %11, align 8
  %181 = icmp ne i64 %179, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load i8*, i8** %10, align 8
  %184 = load i64, i64* %11, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 47
  %189 = zext i1 %188 to i32
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %194

193:                                              ; preds = %182
  br label %178

194:                                              ; preds = %192, %178
  %195 = load i64, i64* %11, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i8*, i8** %10, align 8
  %199 = load i64, i64* %11, align 8
  %200 = add i64 %199, 1
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8* %201, i8** %10, align 8
  br label %202

202:                                              ; preds = %197, %194
  %203 = load i8*, i8** %10, align 8
  %204 = call i64 @strlen(i8* %203)
  store i64 %204, i64* %11, align 8
  br label %205

205:                                              ; preds = %220, %202
  %206 = load i64, i64* %11, align 8
  %207 = add i64 %206, -1
  store i64 %207, i64* %11, align 8
  %208 = icmp ne i64 %206, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %205
  %210 = load i8*, i8** %10, align 8
  %211 = load i64, i64* %11, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 46
  %216 = zext i1 %215 to i32
  %217 = call i64 @unlikely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %221

220:                                              ; preds = %209
  br label %205

221:                                              ; preds = %219, %205
  %222 = load i64, i64* %11, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i8*, i8** %10, align 8
  %226 = load i64, i64* %11, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8 0, i8* %227, align 1
  br label %228

228:                                              ; preds = %224, %221
  %229 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %230 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %229, i32 0, i32 6
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @freez(i8* %231)
  %233 = load i8*, i8** %10, align 8
  %234 = call i8* @cgroup_title_strdupz(i8* %233)
  %235 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %236 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %235, i32 0, i32 6
  store i8* %234, i8** %236, align 8
  %237 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %238 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %237, i32 0, i32 5
  store i32 1, i32* %238, align 8
  store i32 0, i32* %7, align 4
  %239 = load i32, i32* @D_CGROUP, align 4
  %240 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %241 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %244 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %247 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %246, i32 0, i32 6
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i32, i8*, i8*, ...) @debug(i32 %239, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %242, i8* %245, i8* %248)
  %250 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %250)
  br label %263

251:                                              ; preds = %142
  %252 = load i32, i32* @D_CGROUP, align 4
  %253 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %254 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %257 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %260 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %259, i32 0, i32 6
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 (i32, i8*, i8*, ...) @debug(i32 %252, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i8* %255, i8* %258, i8* %261)
  br label %263

263:                                              ; preds = %251, %228
  br label %264

264:                                              ; preds = %263, %132
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %285

267:                                              ; preds = %264
  %268 = load i32, i32* @FILENAME_MAX, align 4
  %269 = add nsw i32 %268, 1
  %270 = zext i32 %269 to i64
  %271 = call i8* @llvm.stacksave()
  store i8* %271, i8** %12, align 8
  %272 = alloca i8, i64 %270, align 16
  store i64 %270, i64* %13, align 8
  %273 = load i32, i32* @FILENAME_MAX, align 4
  %274 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %275 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %274, i32 0, i32 6
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @snprintfz(i8* %272, i32 %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %276)
  %278 = load i32, i32* %4, align 4
  %279 = call i64 @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %272, i32 %278)
  %280 = trunc i64 %279 to i8
  %281 = sext i8 %280 to i32
  %282 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %283 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 8
  %284 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %284)
  br label %285

285:                                              ; preds = %267, %264
  %286 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %287 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %404

290:                                              ; preds = %285
  %291 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  store %struct.cgroup* %291, %struct.cgroup** %14, align 8
  br label %292

292:                                              ; preds = %399, %290
  %293 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %294 = icmp ne %struct.cgroup* %293, null
  br i1 %294, label %295, label %403

295:                                              ; preds = %292
  %296 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %297 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %298 = icmp ne %struct.cgroup* %296, %297
  br i1 %298, label %299, label %398

299:                                              ; preds = %295
  %300 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %301 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %398

304:                                              ; preds = %299
  %305 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %306 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %309 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp eq i64 %307, %310
  br i1 %311, label %312, label %398

312:                                              ; preds = %304
  %313 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %314 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %313, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %317 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %316, i32 0, i32 1
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @strcmp(i8* %315, i8* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %398, label %321

321:                                              ; preds = %312
  %322 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %323 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @strncmp(i8* %324, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 14)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %368, label %327

327:                                              ; preds = %321
  %328 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %329 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %328, i32 0, i32 1
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @strncmp(i8* %330, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 25)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %368, label %333

333:                                              ; preds = %327
  %334 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %335 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %334, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %338 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %341 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %344 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.11, i64 0, i64 0), i8* %336, i8* %339, i8* %342, i8* %345)
  %347 = load i32, i32* @D_CGROUP, align 4
  %348 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %349 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %352 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %351, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %355 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %358 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (i32, i8*, i8*, ...) @debug(i32 %347, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.12, i64 0, i64 0), i8* %350, i8* %353, i8* %356, i8* %359)
  %361 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %362 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %361, i32 0, i32 5
  store i32 0, i32* %362, align 8
  %363 = load i32, i32* @CGROUP_OPTIONS_DISABLED_DUPLICATE, align 4
  %364 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %365 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  br label %397

368:                                              ; preds = %327, %321
  %369 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %370 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %373 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %372, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %376 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %375, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 (i8*, i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.13, i64 0, i64 0), i8* %371, i8* %374, i8* %377)
  %379 = load i32, i32* @D_CGROUP, align 4
  %380 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %381 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %384 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %383, i32 0, i32 0
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %387 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 (i32, i8*, i8*, ...) @debug(i32 %379, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.14, i64 0, i64 0), i8* %382, i8* %385, i8* %388)
  %390 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %391 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %390, i32 0, i32 5
  store i32 0, i32* %391, align 8
  %392 = load i32, i32* @CGROUP_OPTIONS_DISABLED_DUPLICATE, align 4
  %393 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %394 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  br label %397

397:                                              ; preds = %368, %333
  br label %403

398:                                              ; preds = %312, %304, %299, %295
  br label %399

399:                                              ; preds = %398
  %400 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  %401 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %400, i32 0, i32 7
  %402 = load %struct.cgroup*, %struct.cgroup** %401, align 8
  store %struct.cgroup* %402, %struct.cgroup** %14, align 8
  br label %292

403:                                              ; preds = %397, %292
  br label %404

404:                                              ; preds = %403, %285
  %405 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %406 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 8
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %424

409:                                              ; preds = %404
  %410 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %411 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %424, label %414

414:                                              ; preds = %409
  %415 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %416 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %414
  %422 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %423 = call i32 @read_cgroup_network_interfaces(%struct.cgroup* %422)
  br label %424

424:                                              ; preds = %421, %414, %409, %404
  %425 = load i32, i32* @D_CGROUP, align 4
  %426 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %427 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %426, i32 0, i32 0
  %428 = load i8*, i8** %427, align 8
  %429 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %430 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %429, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %433 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %432, i32 0, i32 6
  %434 = load i8*, i8** %433, align 8
  %435 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %436 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %437, 0
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)
  %441 = load i32, i32* %4, align 4
  %442 = icmp ne i32 %441, 0
  %443 = zext i1 %442 to i64
  %444 = select i1 %442, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)
  %445 = call i32 (i32, i8*, i8*, ...) @debug(i32 %425, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0), i8* %428, i8* %431, i8* %434, i8* %440, i8* %444)
  %446 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  store %struct.cgroup* %446, %struct.cgroup** %2, align 8
  br label %447

447:                                              ; preds = %424, %29
  %448 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  ret %struct.cgroup* %448
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i32 @info(i8*, i64, i8*) #1

declare dso_local i64 @simple_pattern_matches(i32, i8*) #1

declare dso_local %struct.cgroup* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i8* @cgroup_title_strdupz(i8*) #1

declare dso_local i8* @cgroup_chart_id_strdupz(i8*) #1

declare dso_local i32 @cgroup_get_chart_name(%struct.cgroup*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @freez(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #1

declare dso_local i64 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @read_cgroup_network_interfaces(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
