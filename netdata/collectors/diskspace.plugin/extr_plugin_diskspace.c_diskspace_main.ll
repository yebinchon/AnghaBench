; ModuleID = '/home/carl/AnghaBench/netdata/collectors/diskspace.plugin/extr_plugin_diskspace.c_diskspace_main.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/diskspace.plugin/extr_plugin_diskspace.c_diskspace_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mountinfo = type { i32, %struct.mountinfo* }
%struct.rusage = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@diskspace_main_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"plugin:proc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"netdata server resources\00", align 1
@CONFIG_SECTION_DISKSPACE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"remove charts of unmounted disks\00", align 1
@cleanup_mount_points = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"update every\00", align 1
@localhost = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"check for new mount points every\00", align 1
@check_for_new_mountpoints_every = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@netdata_exit = common dso_local global i32 0, align 4
@disk_mountinfo_root = common dso_local global %struct.mountinfo* null, align 8
@MOUNTINFO_IS_DUMMY = common dso_local global i32 0, align 4
@MOUNTINFO_IS_BIND = common dso_local global i32 0, align 4
@dict_mountpoints = common dso_local global i64 0, align 8
@mount_point_cleanup = common dso_local global i32 0, align 4
@diskspace_main.stcpu_thread = internal global i32* null, align 8
@diskspace_main.st_duration = internal global i32* null, align 8
@diskspace_main.rd_user = internal global i32* null, align 8
@diskspace_main.rd_system = internal global i32* null, align 8
@diskspace_main.rd_duration = internal global i32* null, align 8
@RUSAGE_THREAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"netdata\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"plugin_diskspace\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"diskspace\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"NetData Disk Space Plugin CPU usage\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"milliseconds/s\00", align 1
@PLUGIN_DISKSPACE_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_NETDATA_DISKSPACE = common dso_local global i32 0, align 4
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"plugin_diskspace_dt\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"NetData Disk Space Plugin Duration\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"milliseconds/run\00", align 1
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @diskspace_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rusage, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mountinfo*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @diskspace_main_cleanup, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @netdata_thread_cleanup_push(i32 %10, i8* %11)
  %13 = call i32 @config_get_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %13, i32* %3, align 4
  %14 = load i8*, i8** @CONFIG_SECTION_DISKSPACE, align 8
  %15 = load i32, i32* @cleanup_mount_points, align 4
  %16 = call i32 @config_get_boolean(i8* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  store i32 %16, i32* @cleanup_mount_points, align 4
  %17 = load i8*, i8** @CONFIG_SECTION_DISKSPACE, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @localhost, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @config_get_number(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @localhost, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @localhost, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i8*, i8** @CONFIG_SECTION_DISKSPACE, align 8
  %34 = load i32, i32* @check_for_new_mountpoints_every, align 4
  %35 = call i64 @config_get_number(i8* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @check_for_new_mountpoints_every, align 4
  %37 = load i32, i32* @check_for_new_mountpoints_every, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* @check_for_new_mountpoints_every, align 4
  br label %42

42:                                               ; preds = %40, %32
  store i32 0, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @USEC_PER_SEC, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = call i32 @heartbeat_init(i32* %8)
  br label %47

47:                                               ; preds = %186, %42
  %48 = load i32, i32* @netdata_exit, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %187

51:                                               ; preds = %47
  %52 = call i32 @heartbeat_monotonic_dt_to_now_usec(i32* %8)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @heartbeat_next(i32* %8, i32 %53)
  %55 = load i32, i32* @netdata_exit, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %187

59:                                               ; preds = %51
  %60 = call i32 @mountinfo_reload(i32 0)
  %61 = load %struct.mountinfo*, %struct.mountinfo** @disk_mountinfo_root, align 8
  store %struct.mountinfo* %61, %struct.mountinfo** %9, align 8
  br label %62

62:                                               ; preds = %85, %59
  %63 = load %struct.mountinfo*, %struct.mountinfo** %9, align 8
  %64 = icmp ne %struct.mountinfo* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.mountinfo*, %struct.mountinfo** %9, align 8
  %67 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MOUNTINFO_IS_DUMMY, align 4
  %70 = load i32, i32* @MOUNTINFO_IS_BIND, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %85

76:                                               ; preds = %65
  %77 = load %struct.mountinfo*, %struct.mountinfo** %9, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @do_disk_space_stats(%struct.mountinfo* %77, i32 %78)
  %80 = load i32, i32* @netdata_exit, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %89

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %75
  %86 = load %struct.mountinfo*, %struct.mountinfo** %9, align 8
  %87 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %86, i32 0, i32 1
  %88 = load %struct.mountinfo*, %struct.mountinfo** %87, align 8
  store %struct.mountinfo* %88, %struct.mountinfo** %9, align 8
  br label %62

89:                                               ; preds = %83, %62
  %90 = load i32, i32* @netdata_exit, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %187

94:                                               ; preds = %89
  %95 = load i64, i64* @dict_mountpoints, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* @dict_mountpoints, align 8
  %99 = load i32, i32* @mount_point_cleanup, align 4
  %100 = call i32 @dictionary_get_all(i64 %98, i32 %99, i32* null)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %186

104:                                              ; preds = %101
  %105 = load i32, i32* @RUSAGE_THREAD, align 4
  %106 = call i32 @getrusage(i32 %105, %struct.rusage* %5)
  %107 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %108 = icmp ne i32* %107, null
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %104
  %114 = load i32, i32* @PLUGIN_DISKSPACE_NAME, align 4
  %115 = load i32, i32* @NETDATA_CHART_PRIO_NETDATA_DISKSPACE, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %118 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %114, i32* null, i32 %115, i32 %116, i32 %117)
  store i32* %118, i32** @diskspace_main.stcpu_thread, align 8
  %119 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %120 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %121 = call i32* @rrddim_add(i32* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %120)
  store i32* %121, i32** @diskspace_main.rd_user, align 8
  %122 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %123 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %124 = call i32* @rrddim_add(i32* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %123)
  store i32* %124, i32** @diskspace_main.rd_system, align 8
  br label %128

125:                                              ; preds = %104
  %126 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %127 = call i32 @rrdset_next(i32* %126)
  br label %128

128:                                              ; preds = %125, %113
  %129 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %130 = load i32*, i32** @diskspace_main.rd_user, align 8
  %131 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = mul i64 %133, 1000000
  %135 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add i64 %134, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @rrddim_set_by_pointer(i32* %129, i32* %130, i32 %140)
  %142 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %143 = load i32*, i32** @diskspace_main.rd_system, align 8
  %144 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 %146, 1000000
  %148 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add i64 %147, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @rrddim_set_by_pointer(i32* %142, i32* %143, i32 %153)
  %155 = load i32*, i32** @diskspace_main.stcpu_thread, align 8
  %156 = call i32 @rrdset_done(i32* %155)
  %157 = load i32*, i32** @diskspace_main.st_duration, align 8
  %158 = icmp ne i32* %157, null
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %128
  %164 = load i32, i32* @PLUGIN_DISKSPACE_NAME, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %167 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %164, i32* null, i32 132021, i32 %165, i32 %166)
  store i32* %167, i32** @diskspace_main.st_duration, align 8
  %168 = load i32*, i32** @diskspace_main.st_duration, align 8
  %169 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %170 = call i32* @rrddim_add(i32* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %169)
  store i32* %170, i32** @diskspace_main.rd_duration, align 8
  br label %174

171:                                              ; preds = %128
  %172 = load i32*, i32** @diskspace_main.st_duration, align 8
  %173 = call i32 @rrdset_next(i32* %172)
  br label %174

174:                                              ; preds = %171, %163
  %175 = load i32*, i32** @diskspace_main.st_duration, align 8
  %176 = load i32*, i32** @diskspace_main.rd_duration, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @rrddim_set_by_pointer(i32* %175, i32* %176, i32 %177)
  %179 = load i32*, i32** @diskspace_main.st_duration, align 8
  %180 = call i32 @rrdset_done(i32* %179)
  %181 = load i32, i32* @netdata_exit, align 4
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %187

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %101
  br label %47

187:                                              ; preds = %184, %93, %58, %47
  %188 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i64 @config_get_number(i8*, i8*, i32) #1

declare dso_local i32 @heartbeat_init(i32*) #1

declare dso_local i32 @heartbeat_monotonic_dt_to_now_usec(i32*) #1

declare dso_local i32 @heartbeat_next(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mountinfo_reload(i32) #1

declare dso_local i32 @do_disk_space_stats(%struct.mountinfo*, i32) #1

declare dso_local i32 @dictionary_get_all(i64, i32, i32*) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
