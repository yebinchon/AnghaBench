; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_getmntinfo.c_do_getmntinfo.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_getmntinfo.c_do_getmntinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i8*, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.mount_point = type { i32, i32, i32, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@do_getmntinfo.enable_new_mount_points = internal global i32 -1, align 4
@do_getmntinfo.do_space = internal global i32 -1, align 4
@do_getmntinfo.do_inodes = internal global i32 -1, align 4
@do_getmntinfo.excluded_mountpoints = internal global i32* null, align 8
@do_getmntinfo.excluded_filesystems = internal global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"plugin:freebsd:getmntinfo\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"enable new mount points detected at runtime\00", align 1
@CONFIG_BOOLEAN_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"space usage for all disks\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"inodes usage for all disks\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"exclude space metrics on paths\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/proc/*\00", align 1
@SIMPLE_PATTERN_EXACT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"exclude space metrics on filesystems\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"autofs procfs subfs devfs none\00", align 1
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"FREEBSD: getmntinfo() failed\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"DISABLED: disk_space.* charts\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"DISABLED: disk_inodes.* charts\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"DISABLED: getmntinfo module\00", align 1
@mount_points_found = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@CONFIG_BOOLEAN_NO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"space usage\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"inodes usage\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"Disk Space Usage for %s [%s]\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"disk_space\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"disk.space\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"getmntinfo\00", align 1
@NETDATA_CHART_PRIO_DISKSPACE_SPACE = common dso_local global i32 0, align 4
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"avail\00", align 1
@GIGA_FACTOR = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"reserved_for_root\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"reserved for root\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Disk Files (inodes) Usage for %s [%s]\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"disk_inodes\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"disk.inodes\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"inodes\00", align 1
@NETDATA_CHART_PRIO_DISKSPACE_INODES = common dso_local global i32 0, align 4
@CONFIG_SECTION_GETMNTINFO = common dso_local global i8* null, align 8
@DEFAULT_EXCLUDED_FILESYSTEMS = common dso_local global i32 0, align 4
@DELAULT_EXCLUDED_PATHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_getmntinfo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4097 x i8], align 16
  %10 = alloca %struct.mount_point*, align 8
  %11 = alloca [4097 x i8], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @do_getmntinfo.enable_new_mount_points, align 4
  %15 = icmp eq i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* @do_getmntinfo.enable_new_mount_points, align 4
  %24 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* @do_getmntinfo.do_space, align 4
  %28 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* @do_getmntinfo.do_inodes, align 4
  %32 = call i32 @config_get(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 ptrtoint ([8 x i8]* @.str.5 to i32))
  %33 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %34 = call i32* @simple_pattern_create(i32 %32, i32* null, i32 %33)
  store i32* %34, i32** @do_getmntinfo.excluded_mountpoints, align 8
  %35 = call i32 @config_get(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 ptrtoint ([31 x i8]* @.str.7 to i32))
  %36 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %37 = call i32* @simple_pattern_create(i32 %35, i32* null, i32 %36)
  store i32* %37, i32** @do_getmntinfo.excluded_filesystems, align 8
  br label %38

38:                                               ; preds = %19, %2
  %39 = load i32, i32* @do_getmntinfo.do_space, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @do_getmntinfo.do_inodes, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ true, %38 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %510

49:                                               ; preds = %44
  %50 = load i32, i32* @MNT_NOWAIT, align 4
  %51 = call i32 @getmntinfo(%struct.statfs** %6, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @do_getmntinfo.do_space, align 4
  %59 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* @do_getmntinfo.do_inodes, align 4
  %60 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %61 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %514

62:                                               ; preds = %49
  store i64 0, i64* @mount_points_found, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %505, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %508

67:                                               ; preds = %63
  %68 = load %struct.statfs*, %struct.statfs** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.statfs, %struct.statfs* %68, i64 %70
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.mount_point* @get_mount_point(i8* %73)
  store %struct.mount_point* %74, %struct.mount_point** %10, align 8
  %75 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %76 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i64, i64* @mount_points_found, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* @mount_points_found, align 8
  %79 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %80 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %163

87:                                               ; preds = %67
  %88 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %89 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* @do_getmntinfo.enable_new_mount_points, align 4
  %91 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %92 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %94 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @likely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %87
  %99 = load i32*, i32** @do_getmntinfo.excluded_mountpoints, align 8
  %100 = load %struct.statfs*, %struct.statfs** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.statfs, %struct.statfs* %100, i64 %102
  %104 = getelementptr inbounds %struct.statfs, %struct.statfs* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @simple_pattern_matches(i32* %99, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %98
  %109 = load i32*, i32** @do_getmntinfo.excluded_filesystems, align 8
  %110 = load %struct.statfs*, %struct.statfs** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.statfs, %struct.statfs* %110, i64 %112
  %114 = getelementptr inbounds %struct.statfs, %struct.statfs* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @simple_pattern_matches(i32* %109, i8* %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %108, %98
  %119 = phi i1 [ true, %98 ], [ %117, %108 ]
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %123 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %118, %87
  %125 = getelementptr inbounds [4097 x i8], [4097 x i8]* %11, i64 0, i64 0
  %126 = load %struct.statfs*, %struct.statfs** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.statfs, %struct.statfs* %126, i64 %128
  %130 = getelementptr inbounds %struct.statfs, %struct.statfs* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @snprintfz(i8* %125, i32 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %131)
  %133 = getelementptr inbounds [4097 x i8], [4097 x i8]* %11, i64 0, i64 0
  %134 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %135 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @config_get_boolean_ondemand(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %140 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %142 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @CONFIG_BOOLEAN_NO, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %124
  br label %505

150:                                              ; preds = %124
  %151 = getelementptr inbounds [4097 x i8], [4097 x i8]* %11, i64 0, i64 0
  %152 = load i32, i32* @do_getmntinfo.do_space, align 4
  %153 = call i8* @config_get_boolean_ondemand(i8* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %152)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %156 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = getelementptr inbounds [4097 x i8], [4097 x i8]* %11, i64 0, i64 0
  %158 = load i32, i32* @do_getmntinfo.do_inodes, align 4
  %159 = call i8* @config_get_boolean_ondemand(i8* %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %158)
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %162 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %161, i32 0, i32 4
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %150, %67
  %164 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %165 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %505

173:                                              ; preds = %163
  %174 = load %struct.statfs*, %struct.statfs** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.statfs, %struct.statfs* %174, i64 %176
  %178 = getelementptr inbounds %struct.statfs, %struct.statfs* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @MNT_RDONLY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %173
  %184 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %185 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %183, %173
  %190 = phi i1 [ false, %173 ], [ %188, %183 ]
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %505

195:                                              ; preds = %189
  store i32 0, i32* %12, align 4
  %196 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %197 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %219, label %201

201:                                              ; preds = %195
  %202 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %203 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %369

207:                                              ; preds = %201
  %208 = load %struct.statfs*, %struct.statfs** %6, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.statfs, %struct.statfs* %208, i64 %210
  %212 = getelementptr inbounds %struct.statfs, %struct.statfs* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 2
  br i1 %214, label %219, label %215

215:                                              ; preds = %207
  %216 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %217 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %369

219:                                              ; preds = %215, %207, %195
  %220 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %221 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %220, i32 0, i32 9
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %304

228:                                              ; preds = %219
  %229 = getelementptr inbounds [4097 x i8], [4097 x i8]* %9, i64 0, i64 0
  %230 = load %struct.statfs*, %struct.statfs** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.statfs, %struct.statfs* %230, i64 %232
  %234 = getelementptr inbounds %struct.statfs, %struct.statfs* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.statfs*, %struct.statfs** %6, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.statfs, %struct.statfs* %236, i64 %238
  %240 = getelementptr inbounds %struct.statfs, %struct.statfs* %239, i32 0, i32 4
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @snprintfz(i8* %229, i32 4096, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %235, i8* %241)
  %243 = load %struct.statfs*, %struct.statfs** %6, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.statfs, %struct.statfs* %243, i64 %245
  %247 = getelementptr inbounds %struct.statfs, %struct.statfs* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.statfs*, %struct.statfs** %6, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.statfs, %struct.statfs* %249, i64 %251
  %253 = getelementptr inbounds %struct.statfs, %struct.statfs* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds [4097 x i8], [4097 x i8]* %9, i64 0, i64 0
  %256 = load i32, i32* @NETDATA_CHART_PRIO_DISKSPACE_SPACE, align 4
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %259 = call i8* @rrdset_create_localhost(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %248, i32* null, i8* %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %256, i32 %257, i32 %258)
  %260 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %261 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %260, i32 0, i32 9
  store i8* %259, i8** %261, align 8
  %262 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %263 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %262, i32 0, i32 9
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.statfs*, %struct.statfs** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.statfs, %struct.statfs* %265, i64 %267
  %269 = getelementptr inbounds %struct.statfs, %struct.statfs* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @GIGA_FACTOR, align 4
  %272 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %273 = call i8* @rrddim_add(i8* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* null, i32 %270, i32 %271, i32 %272)
  %274 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %275 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %274, i32 0, i32 12
  store i8* %273, i8** %275, align 8
  %276 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %277 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %276, i32 0, i32 9
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.statfs*, %struct.statfs** %6, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.statfs, %struct.statfs* %279, i64 %281
  %283 = getelementptr inbounds %struct.statfs, %struct.statfs* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @GIGA_FACTOR, align 4
  %286 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %287 = call i8* @rrddim_add(i8* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 %284, i32 %285, i32 %286)
  %288 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %289 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %288, i32 0, i32 11
  store i8* %287, i8** %289, align 8
  %290 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %291 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %290, i32 0, i32 9
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.statfs*, %struct.statfs** %6, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.statfs, %struct.statfs* %293, i64 %295
  %297 = getelementptr inbounds %struct.statfs, %struct.statfs* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @GIGA_FACTOR, align 4
  %300 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %301 = call i8* @rrddim_add(i8* %292, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %298, i32 %299, i32 %300)
  %302 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %303 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %302, i32 0, i32 10
  store i8* %301, i8** %303, align 8
  br label %309

304:                                              ; preds = %219
  %305 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %306 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %305, i32 0, i32 9
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @rrdset_next(i8* %307)
  br label %309

309:                                              ; preds = %304, %228
  %310 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %311 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %310, i32 0, i32 9
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %314 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %313, i32 0, i32 12
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.statfs*, %struct.statfs** %6, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.statfs, %struct.statfs* %316, i64 %318
  %320 = getelementptr inbounds %struct.statfs, %struct.statfs* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @rrddim_set_by_pointer(i8* %312, i8* %315, i32 %321)
  %323 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %324 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %323, i32 0, i32 9
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %327 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %326, i32 0, i32 11
  %328 = load i8*, i8** %327, align 8
  %329 = load %struct.statfs*, %struct.statfs** %6, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.statfs, %struct.statfs* %329, i64 %331
  %333 = getelementptr inbounds %struct.statfs, %struct.statfs* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.statfs*, %struct.statfs** %6, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.statfs, %struct.statfs* %335, i64 %337
  %339 = getelementptr inbounds %struct.statfs, %struct.statfs* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 8
  %341 = sub nsw i32 %334, %340
  %342 = call i32 @rrddim_set_by_pointer(i8* %325, i8* %328, i32 %341)
  %343 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %344 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %343, i32 0, i32 9
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %347 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %346, i32 0, i32 10
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.statfs*, %struct.statfs** %6, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.statfs, %struct.statfs* %349, i64 %351
  %353 = getelementptr inbounds %struct.statfs, %struct.statfs* %352, i32 0, i32 7
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.statfs*, %struct.statfs** %6, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.statfs, %struct.statfs* %355, i64 %357
  %359 = getelementptr inbounds %struct.statfs, %struct.statfs* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %354, %360
  %362 = call i32 @rrddim_set_by_pointer(i8* %345, i8* %348, i32 %361)
  %363 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %364 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %363, i32 0, i32 9
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @rrdset_done(i8* %365)
  %367 = load i32, i32* %12, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %12, align 4
  br label %369

369:                                              ; preds = %309, %215, %201
  %370 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %371 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %393, label %375

375:                                              ; preds = %369
  %376 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %377 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %495

381:                                              ; preds = %375
  %382 = load %struct.statfs*, %struct.statfs** %6, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.statfs, %struct.statfs* %382, i64 %384
  %386 = getelementptr inbounds %struct.statfs, %struct.statfs* %385, i32 0, i32 8
  %387 = load i32, i32* %386, align 4
  %388 = icmp sgt i32 %387, 1
  br i1 %388, label %393, label %389

389:                                              ; preds = %381
  %390 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %391 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %495

393:                                              ; preds = %389, %381, %369
  %394 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %395 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %394, i32 0, i32 6
  %396 = load i8*, i8** %395, align 8
  %397 = icmp ne i8* %396, null
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = call i64 @unlikely(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %450

402:                                              ; preds = %393
  %403 = getelementptr inbounds [4097 x i8], [4097 x i8]* %9, i64 0, i64 0
  %404 = load %struct.statfs*, %struct.statfs** %6, align 8
  %405 = load i32, i32* %8, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.statfs, %struct.statfs* %404, i64 %406
  %408 = getelementptr inbounds %struct.statfs, %struct.statfs* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.statfs*, %struct.statfs** %6, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.statfs, %struct.statfs* %410, i64 %412
  %414 = getelementptr inbounds %struct.statfs, %struct.statfs* %413, i32 0, i32 4
  %415 = load i8*, i8** %414, align 8
  %416 = call i32 @snprintfz(i8* %403, i32 4096, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* %409, i8* %415)
  %417 = load %struct.statfs*, %struct.statfs** %6, align 8
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.statfs, %struct.statfs* %417, i64 %419
  %421 = getelementptr inbounds %struct.statfs, %struct.statfs* %420, i32 0, i32 0
  %422 = load i8*, i8** %421, align 8
  %423 = load %struct.statfs*, %struct.statfs** %6, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.statfs, %struct.statfs* %423, i64 %425
  %427 = getelementptr inbounds %struct.statfs, %struct.statfs* %426, i32 0, i32 0
  %428 = load i8*, i8** %427, align 8
  %429 = getelementptr inbounds [4097 x i8], [4097 x i8]* %9, i64 0, i64 0
  %430 = load i32, i32* @NETDATA_CHART_PRIO_DISKSPACE_INODES, align 4
  %431 = load i32, i32* %4, align 4
  %432 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %433 = call i8* @rrdset_create_localhost(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* %422, i32* null, i8* %428, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* %429, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %430, i32 %431, i32 %432)
  %434 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %435 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %434, i32 0, i32 6
  store i8* %433, i8** %435, align 8
  %436 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %437 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %436, i32 0, i32 6
  %438 = load i8*, i8** %437, align 8
  %439 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %440 = call i8* @rrddim_add(i8* %438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %439)
  %441 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %442 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %441, i32 0, i32 8
  store i8* %440, i8** %442, align 8
  %443 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %444 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %443, i32 0, i32 6
  %445 = load i8*, i8** %444, align 8
  %446 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %447 = call i8* @rrddim_add(i8* %445, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %446)
  %448 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %449 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %448, i32 0, i32 7
  store i8* %447, i8** %449, align 8
  br label %455

450:                                              ; preds = %393
  %451 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %452 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %451, i32 0, i32 6
  %453 = load i8*, i8** %452, align 8
  %454 = call i32 @rrdset_next(i8* %453)
  br label %455

455:                                              ; preds = %450, %402
  %456 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %457 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %456, i32 0, i32 6
  %458 = load i8*, i8** %457, align 8
  %459 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %460 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %459, i32 0, i32 8
  %461 = load i8*, i8** %460, align 8
  %462 = load %struct.statfs*, %struct.statfs** %6, align 8
  %463 = load i32, i32* %8, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.statfs, %struct.statfs* %462, i64 %464
  %466 = getelementptr inbounds %struct.statfs, %struct.statfs* %465, i32 0, i32 9
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @rrddim_set_by_pointer(i8* %458, i8* %461, i32 %467)
  %469 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %470 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %469, i32 0, i32 6
  %471 = load i8*, i8** %470, align 8
  %472 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %473 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %472, i32 0, i32 7
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.statfs*, %struct.statfs** %6, align 8
  %476 = load i32, i32* %8, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.statfs, %struct.statfs* %475, i64 %477
  %479 = getelementptr inbounds %struct.statfs, %struct.statfs* %478, i32 0, i32 8
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.statfs*, %struct.statfs** %6, align 8
  %482 = load i32, i32* %8, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.statfs, %struct.statfs* %481, i64 %483
  %485 = getelementptr inbounds %struct.statfs, %struct.statfs* %484, i32 0, i32 9
  %486 = load i32, i32* %485, align 8
  %487 = sub nsw i32 %480, %486
  %488 = call i32 @rrddim_set_by_pointer(i8* %471, i8* %474, i32 %487)
  %489 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %490 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %489, i32 0, i32 6
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @rrdset_done(i8* %491)
  %493 = load i32, i32* %12, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %12, align 4
  br label %495

495:                                              ; preds = %455, %389, %375
  %496 = load i32, i32* %12, align 4
  %497 = call i64 @likely(i32 %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %495
  %500 = load %struct.mount_point*, %struct.mount_point** %10, align 8
  %501 = getelementptr inbounds %struct.mount_point, %struct.mount_point* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 8
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %501, align 8
  br label %504

504:                                              ; preds = %499, %495
  br label %505

505:                                              ; preds = %504, %194, %172, %149
  %506 = load i32, i32* %8, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %8, align 4
  br label %63

508:                                              ; preds = %63
  br label %509

509:                                              ; preds = %508
  br label %512

510:                                              ; preds = %44
  %511 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %514

512:                                              ; preds = %509
  %513 = call i32 (...) @mount_points_cleanup()
  store i32 0, i32* %3, align 4
  br label %514

514:                                              ; preds = %512, %510, %57
  %515 = load i32, i32* %3, align 4
  ret i32 %515
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @config_get_boolean_ondemand(i8*, i8*, i32) #1

declare dso_local i32* @simple_pattern_create(i32, i32*, i32) #1

declare dso_local i32 @config_get(i8*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.mount_point* @get_mount_point(i8*) #1

declare dso_local i64 @simple_pattern_matches(i32*, i8*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @rrddim_add(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i8*) #1

declare dso_local i32 @rrddim_set_by_pointer(i8*, i8*, i32) #1

declare dso_local i32 @rrdset_done(i8*) #1

declare dso_local i32 @mount_points_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
