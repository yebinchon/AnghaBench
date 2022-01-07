; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read_cpuacct_stat.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read_cpuacct_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuacct_stat = type { i32, i64, i8*, i8*, i32 }

@cgroup_read_cpuacct_stat.ff = internal global i32* null, align 8
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@cgroups_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CGROUP: file '%s' should have 1+ lines.\00", align 1
@user_hash = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@system_hash = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@CONFIG_BOOLEAN_AUTO = common dso_local global i64 0, align 8
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuacct_stat*)* @cgroup_read_cpuacct_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_read_cpuacct_stat(%struct.cpuacct_stat* %0) #0 {
  %2 = alloca %struct.cpuacct_stat*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.cpuacct_stat* %0, %struct.cpuacct_stat** %2, align 8
  %7 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %8 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %146

12:                                               ; preds = %1
  %13 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %14 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %15 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %18 = call i32* @procfile_reopen(i32* %13, i32 %16, i32* null, i32 %17)
  store i32* %18, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %19 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %20 = icmp ne i32* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %27 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %146

28:                                               ; preds = %12
  %29 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %30 = call i32* @procfile_readall(i32* %29)
  store i32* %30, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %31 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %39 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %146

40:                                               ; preds = %28
  %41 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %42 = call i64 @procfile_lines(i32* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ult i64 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %50 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %54 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %146

55:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %56

56:                                               ; preds = %109, %55
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %56
  %61 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i8* @procfile_lineword(i32* %61, i64 %62, i32 0)
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @simple_hash(i8* %64)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @user_hash, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %60
  %75 = phi i1 [ false, %60 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %81 = load i64, i64* %3, align 8
  %82 = call i8* @procfile_lineword(i32* %80, i64 %81, i32 1)
  %83 = call i8* @str2ull(i8* %82)
  %84 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %85 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  br label %108

86:                                               ; preds = %74
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @system_hash, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %90, %86
  %96 = phi i1 [ false, %86 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32*, i32** @cgroup_read_cpuacct_stat.ff, align 8
  %102 = load i64, i64* %3, align 8
  %103 = call i8* @procfile_lineword(i32* %101, i64 %102, i32 1)
  %104 = call i8* @str2ull(i8* %103)
  %105 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %106 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %100, %95
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %3, align 8
  br label %56

112:                                              ; preds = %56
  %113 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %114 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %116 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %112
  %121 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %122 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %127 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %132 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %133 = icmp eq i64 %131, %132
  br label %134

134:                                              ; preds = %130, %125, %120
  %135 = phi i1 [ true, %125 ], [ true, %120 ], [ %133, %130 ]
  br label %136

136:                                              ; preds = %134, %112
  %137 = phi i1 [ false, %112 ], [ %135, %134 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %143 = load %struct.cpuacct_stat*, %struct.cpuacct_stat** %2, align 8
  %144 = getelementptr inbounds %struct.cpuacct_stat, %struct.cpuacct_stat* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %25, %37, %48, %145, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @procfile_reopen(i32*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i8* @procfile_lineword(i32*, i64, i32) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @str2ull(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
