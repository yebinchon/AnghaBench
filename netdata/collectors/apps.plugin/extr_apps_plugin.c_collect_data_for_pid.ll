; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_collect_data_for_pid.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_collect_data_for_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.pid_stat = type { i32, i64, i8*, i32, i64, i64, i32, i32 }

@pid_max = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Invalid pid %d read (expected %d to %d). Ignoring process.\00", align 1
@PID_LOG_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Pid %d (command '%s') states invalid parent pid %d. Using 0.\00", align 1
@PID_LOG_IO = common dso_local global i32 0, align 4
@PID_LOG_STATUS = common dso_local global i32 0, align 4
@enable_file_charts = common dso_local global i64 0, align 8
@PID_LOG_FDS = common dso_local global i32 0, align 4
@debug_enabled = common dso_local global i64 0, align 8
@include_exited_childs = common dso_local global i64 0, align 8
@all_pids_count = common dso_local global i64 0, align 8
@all_pids = common dso_local global %struct.TYPE_2__** null, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"Read process %d (%s) sortlisted %d, but its parent %d (%s) sortlisted %d, is not read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @collect_data_for_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_data_for_pid(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pid_stat*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @pid_max, align 8
  %12 = icmp sgt i64 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @pid_max, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %19, i8* null, i64 %20)
  store i32 0, i32* %3, align 4
  br label %189

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = call %struct.pid_stat* @get_pid_entry(i64 %23)
  store %struct.pid_stat* %24, %struct.pid_stat** %6, align 8
  %25 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %26 = icmp ne %struct.pid_stat* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %29 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %189

38:                                               ; preds = %32
  %39 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %40 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %42 = load i32, i32* @PID_LOG_STAT, align 4
  %43 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @read_proc_pid_stat(%struct.pid_stat* %43, i8* %44)
  %46 = call i32 @managed_log(%struct.pid_stat* %41, i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %189

53:                                               ; preds = %38
  %54 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %55 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %60 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @pid_max, align 8
  %63 = icmp sgt i64 %61, %62
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ true, %53 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %72 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %75 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %70, i8* %73, i64 %76)
  %78 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %79 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %69, %64
  %81 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %82 = load i32, i32* @PID_LOG_IO, align 4
  %83 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @read_proc_pid_io(%struct.pid_stat* %83, i8* %84)
  %86 = call i32 @managed_log(%struct.pid_stat* %81, i32 %82, i32 %85)
  %87 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %88 = load i32, i32* @PID_LOG_STATUS, align 4
  %89 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @read_proc_pid_status(%struct.pid_stat* %89, i8* %90)
  %92 = call i32 @managed_log(%struct.pid_stat* %87, i32 %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %189

99:                                               ; preds = %80
  %100 = load i64, i64* @enable_file_charts, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %104 = load i32, i32* @PID_LOG_FDS, align 4
  %105 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @read_pid_file_descriptors(%struct.pid_stat* %105, i8* %106)
  %108 = call i32 @managed_log(%struct.pid_stat* %103, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %102, %99
  %110 = load i64, i64* @debug_enabled, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %109
  %113 = load i64, i64* @include_exited_childs, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %112
  %116 = load i64, i64* @all_pids_count, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %120 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118
  %124 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @all_pids, align 8
  %125 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %126 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %124, i64 %127
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = icmp ne %struct.TYPE_2__* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %123
  %132 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @all_pids, align 8
  %133 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %134 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %132, i64 %135
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %131, %123, %118, %115, %112, %109
  %143 = phi i1 [ false, %123 ], [ false, %118 ], [ false, %115 ], [ false, %112 ], [ false, %109 ], [ %141, %131 ]
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %142
  %148 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %149 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %152 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %155 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @all_pids, align 8
  %158 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %159 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %157, i64 %160
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @all_pids, align 8
  %166 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %167 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %165, i64 %168
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @all_pids, align 8
  %174 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %175 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %173, i64 %176
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @debug_log(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %150, i8* %153, i32 %156, i32 %164, i32 %172, i32 %180)
  br label %182

182:                                              ; preds = %147, %142
  %183 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %184 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %183, i32 0, i32 3
  store i32 1, i32* %184, align 8
  %185 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %186 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %185, i32 0, i32 5
  store i64 0, i64* %186, align 8
  %187 = load %struct.pid_stat*, %struct.pid_stat** %6, align 8
  %188 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  store i32 1, i32* %3, align 4
  br label %189

189:                                              ; preds = %182, %98, %52, %37, %18
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, i64, i8*, i64) #1

declare dso_local %struct.pid_stat* @get_pid_entry(i64) #1

declare dso_local i32 @managed_log(%struct.pid_stat*, i32, i32) #1

declare dso_local i32 @read_proc_pid_stat(%struct.pid_stat*, i8*) #1

declare dso_local i32 @read_proc_pid_io(%struct.pid_stat*, i8*) #1

declare dso_local i32 @read_proc_pid_status(%struct.pid_stat*, i8*) #1

declare dso_local i32 @read_pid_file_descriptors(%struct.pid_stat*, i8*) #1

declare dso_local i32 @debug_log(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
