; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_send_resource_usage_to_netdata.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_send_resource_usage_to_netdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rusage = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }

@send_resource_usage_to_netdata.last = internal global %struct.timeval zeroinitializer, align 4
@send_resource_usage_to_netdata.me_last = internal global %struct.rusage zeroinitializer, align 4
@RUSAGE_SELF = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@send_resource_usage_to_netdata.created_charts = internal global i8 0, align 1
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [628 x i8] c"CHART netdata.apps_cpu '' 'Apps Plugin CPU' 'milliseconds/s' apps.plugin netdata.apps_cpu stacked 140000 %1$d\0ADIMENSION user '' incremental 1 1000\0ADIMENSION system '' incremental 1 1000\0ACHART netdata.apps_sizes '' 'Apps Plugin Files' 'files/s' apps.plugin netdata.apps_sizes line 140001 %1$d\0ADIMENSION calls '' incremental 1 1\0ADIMENSION files '' incremental 1 1\0ADIMENSION filenames '' incremental 1 1\0ADIMENSION inode_changes '' incremental 1 1\0ADIMENSION link_changes '' incremental 1 1\0ADIMENSION pids '' absolute 1 1\0ADIMENSION fds '' absolute 1 1\0ADIMENSION targets '' absolute 1 1\0ADIMENSION new_pids 'new pids' incremental 1 1\0A\00", align 1
@update_every = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [308 x i8] c"CHART netdata.apps_fix '' 'Apps Plugin Normalization Ratios' 'percentage' apps.plugin netdata.apps_fix line 140002 %1$d\0ADIMENSION utime '' absolute 1 %2$llu\0ADIMENSION stime '' absolute 1 %2$llu\0ADIMENSION gtime '' absolute 1 %2$llu\0ADIMENSION minflt '' absolute 1 %2$llu\0ADIMENSION majflt '' absolute 1 %2$llu\0A\00", align 1
@RATES_DETAIL = common dso_local global i32 0, align 4
@include_exited_childs = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [347 x i8] c"CHART netdata.apps_children_fix '' 'Apps Plugin Exited Children Normalization Ratios' 'percentage' apps.plugin netdata.apps_children_fix line 140003 %1$d\0ADIMENSION cutime '' absolute 1 %2$llu\0ADIMENSION cstime '' absolute 1 %2$llu\0ADIMENSION cgtime '' absolute 1 %2$llu\0ADIMENSION cminflt '' absolute 1 %2$llu\0ADIMENSION cmajflt '' absolute 1 %2$llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [265 x i8] c"BEGIN netdata.apps_cpu %llu\0ASET user = %llu\0ASET system = %llu\0AEND\0ABEGIN netdata.apps_sizes %llu\0ASET calls = %zu\0ASET files = %zu\0ASET filenames = %zu\0ASET inode_changes = %zu\0ASET link_changes = %zu\0ASET pids = %zu\0ASET fds = %d\0ASET targets = %zu\0ASET new_pids = %zu\0AEND\0A\00", align 1
@calls_counter = common dso_local global i32 0, align 4
@file_counter = common dso_local global i32 0, align 4
@filenames_allocated_counter = common dso_local global i32 0, align 4
@inodes_changed_counter = common dso_local global i32 0, align 4
@links_changed_counter = common dso_local global i32 0, align 4
@all_pids_count = common dso_local global i32 0, align 4
@all_files_len = common dso_local global i32 0, align 4
@apps_groups_targets_count = common dso_local global i32 0, align 4
@targets_assignment_counter = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [110 x i8] c"BEGIN netdata.apps_fix %llu\0ASET utime = %u\0ASET stime = %u\0ASET gtime = %u\0ASET minflt = %u\0ASET majflt = %u\0AEND\0A\00", align 1
@utime_fix_ratio = common dso_local global i32 0, align 4
@stime_fix_ratio = common dso_local global i32 0, align 4
@gtime_fix_ratio = common dso_local global i32 0, align 4
@minflt_fix_ratio = common dso_local global i32 0, align 4
@majflt_fix_ratio = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [124 x i8] c"BEGIN netdata.apps_children_fix %llu\0ASET cutime = %u\0ASET cstime = %u\0ASET cgtime = %u\0ASET cminflt = %u\0ASET cmajflt = %u\0AEND\0A\00", align 1
@cutime_fix_ratio = common dso_local global i32 0, align 4
@cstime_fix_ratio = common dso_local global i32 0, align 4
@cgtime_fix_ratio = common dso_local global i32 0, align 4
@cminflt_fix_ratio = common dso_local global i32 0, align 4
@cmajflt_fix_ratio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_resource_usage_to_netdata(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.rusage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @send_resource_usage_to_netdata.last, i32 0, i32 2), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @now_monotonic_timeval(%struct.timeval* @send_resource_usage_to_netdata.last)
  %11 = load i32, i32* @RUSAGE_SELF, align 4
  %12 = call i32 @getrusage(i32 %11, %struct.timeval* bitcast (%struct.rusage* @send_resource_usage_to_netdata.me_last to %struct.timeval*))
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %39

13:                                               ; preds = %1
  %14 = call i32 @now_monotonic_timeval(%struct.timeval* %3)
  %15 = load i32, i32* @RUSAGE_SELF, align 4
  %16 = bitcast %struct.rusage* %4 to %struct.timeval*
  %17 = call i32 @getrusage(i32 %15, %struct.timeval* %16)
  %18 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USEC_PER_SEC, align 4
  %22 = mul nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @USEC_PER_SEC, align 4
  %31 = mul nsw i32 %29, %30
  %32 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = call i32 @memmove(%struct.timeval* @send_resource_usage_to_netdata.last, %struct.timeval* %3, i32 28)
  %37 = bitcast %struct.rusage* %4 to %struct.timeval*
  %38 = call i32 @memmove(%struct.timeval* bitcast (%struct.rusage* @send_resource_usage_to_netdata.me_last to %struct.timeval*), %struct.timeval* %37, i32 28)
  br label %39

39:                                               ; preds = %13, %9
  %40 = load i8, i8* @send_resource_usage_to_netdata.created_charts, align 1
  %41 = icmp ne i8 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  store i8 1, i8* @send_resource_usage_to_netdata.created_charts, align 1
  %47 = load i32, i32* @stdout, align 4
  %48 = load i32, i32* @update_every, align 4
  %49 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([628 x i8], [628 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @stdout, align 4
  %51 = load i32, i32* @update_every, align 4
  %52 = load i32, i32* @RATES_DETAIL, align 4
  %53 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([308 x i8], [308 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i64, i64* @include_exited_childs, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @stdout, align 4
  %58 = load i32, i32* @update_every, align 4
  %59 = load i32, i32* @RATES_DETAIL, align 4
  %60 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([347 x i8], [347 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %46
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* @stdout, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @calls_counter, align 4
  %69 = load i32, i32* @file_counter, align 4
  %70 = load i32, i32* @filenames_allocated_counter, align 4
  %71 = load i32, i32* @inodes_changed_counter, align 4
  %72 = load i32, i32* @links_changed_counter, align 4
  %73 = load i32, i32* @all_pids_count, align 4
  %74 = load i32, i32* @all_files_len, align 4
  %75 = load i32, i32* @apps_groups_targets_count, align 4
  %76 = load i32, i32* @targets_assignment_counter, align 4
  %77 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* @stdout, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @utime_fix_ratio, align 4
  %81 = mul nsw i32 %80, 100
  %82 = load i32, i32* @RATES_DETAIL, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @stime_fix_ratio, align 4
  %85 = mul nsw i32 %84, 100
  %86 = load i32, i32* @RATES_DETAIL, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* @gtime_fix_ratio, align 4
  %89 = mul nsw i32 %88, 100
  %90 = load i32, i32* @RATES_DETAIL, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* @minflt_fix_ratio, align 4
  %93 = mul nsw i32 %92, 100
  %94 = load i32, i32* @RATES_DETAIL, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* @majflt_fix_ratio, align 4
  %97 = mul nsw i32 %96, 100
  %98 = load i32, i32* @RATES_DETAIL, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %83, i32 %87, i32 %91, i32 %95, i32 %99)
  %101 = load i64, i64* @include_exited_childs, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %62
  %104 = load i32, i32* @stdout, align 4
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @cutime_fix_ratio, align 4
  %107 = mul nsw i32 %106, 100
  %108 = load i32, i32* @RATES_DETAIL, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* @cstime_fix_ratio, align 4
  %111 = mul nsw i32 %110, 100
  %112 = load i32, i32* @RATES_DETAIL, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* @cgtime_fix_ratio, align 4
  %115 = mul nsw i32 %114, 100
  %116 = load i32, i32* @RATES_DETAIL, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* @cminflt_fix_ratio, align 4
  %119 = mul nsw i32 %118, 100
  %120 = load i32, i32* @RATES_DETAIL, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* @cmajflt_fix_ratio, align 4
  %123 = mul nsw i32 %122, 100
  %124 = load i32, i32* @RATES_DETAIL, align 4
  %125 = mul nsw i32 %123, %124
  %126 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %109, i32 %113, i32 %117, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %103, %62
  ret void
}

declare dso_local i32 @now_monotonic_timeval(%struct.timeval*) #1

declare dso_local i32 @getrusage(i32, %struct.timeval*) #1

declare dso_local i32 @memmove(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
