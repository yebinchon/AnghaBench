; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup2_read_cpuacct_stat.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup2_read_cpuacct_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuacct_stat = type { i32, i64, i8*, i8*, i32 }

@cgroup2_read_cpuacct_stat.ff = internal global i32* null, align 8
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@cgroups_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CGROUP: file '%s' should have 3+ lines.\00", align 1
@CONFIG_BOOLEAN_AUTO = common dso_local global i64 0, align 8
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuacct_stat*)* @cgroup2_read_cpuacct_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup2_read_cpuacct_stat(%struct.cpuacct_stat* %0) #0 {
  %2 = alloca %struct.cpuacct_stat*, align 8
  %3 = alloca i64, align 8
  store %struct.cpuacct_stat* %0, %struct.cpuacct_stat** %2, align 8
  %4 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %5 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %96

9:                                                ; preds = %1
  %10 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %11 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %12 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %15 = call i32* @procfile_reopen(i32* %10, i32 %13, i32* null, i32 %14)
  store i32* %15, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %16 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %24 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %96

25:                                               ; preds = %9
  %26 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %27 = call i32* @procfile_readall(i32* %26)
  store i32* %27, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %28 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %29 = icmp ne i32* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %36 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %96

37:                                               ; preds = %25
  %38 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %39 = call i64 @procfile_lines(i32* %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ult i64 %40, 3
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %47 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %51 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %96

52:                                               ; preds = %37
  %53 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %54 = call i32 @procfile_lineword(i32* %53, i32 1, i32 1)
  %55 = call i8* @str2ull(i32 %54)
  %56 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %57 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** @cgroup2_read_cpuacct_stat.ff, align 8
  %59 = call i32 @procfile_lineword(i32* %58, i32 2, i32 1)
  %60 = call i8* @str2ull(i32 %59)
  %61 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %62 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %64 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %66 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %52
  %71 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %72 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %77 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %82 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %80, %75, %70
  %85 = phi i1 [ true, %75 ], [ true, %70 ], [ %83, %80 ]
  br label %86

86:                                               ; preds = %84, %52
  %87 = phi i1 [ false, %52 ], [ %85, %84 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %93 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %94 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %22, %34, %45, %95, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @procfile_reopen(i32*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i8* @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
