; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"reading metrics for cgroups '%s'\00", align 1
@CGROUP_OPTIONS_IS_UNIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @cgroup_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_read(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %3 = load i32, i32* @D_CGROUP, align 4
  %4 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %5 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @debug(i32 %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %9 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CGROUP_OPTIONS_IS_UNIFIED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %1
  %15 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %16 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %15, i32 0, i32 2
  %17 = call i32 @cgroup_read_cpuacct_stat(i32* %16)
  %18 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 9
  %20 = call i32 @cgroup_read_cpuacct_usage(i32* %19)
  %21 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %22 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %21, i32 0, i32 1
  %23 = call i32 @cgroup_read_memory(i32* %22, i32 0)
  %24 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %25 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %24, i32 0, i32 4
  %26 = call i32 @cgroup_read_blkio(i32* %25)
  %27 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %28 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %27, i32 0, i32 3
  %29 = call i32 @cgroup_read_blkio(i32* %28)
  %30 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %31 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %30, i32 0, i32 8
  %32 = call i32 @cgroup_read_blkio(i32* %31)
  %33 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %34 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %33, i32 0, i32 7
  %35 = call i32 @cgroup_read_blkio(i32* %34)
  %36 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %37 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %36, i32 0, i32 6
  %38 = call i32 @cgroup_read_blkio(i32* %37)
  %39 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %40 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %39, i32 0, i32 5
  %41 = call i32 @cgroup_read_blkio(i32* %40)
  br label %55

42:                                               ; preds = %1
  %43 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %44 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %43, i32 0, i32 4
  %45 = call i32 @cgroup2_read_blkio(i32* %44, i32 0)
  %46 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %47 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %46, i32 0, i32 3
  %48 = call i32 @cgroup2_read_blkio(i32* %47, i32 4)
  %49 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %50 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %49, i32 0, i32 2
  %51 = call i32 @cgroup2_read_cpuacct_stat(i32* %50)
  %52 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %53 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %52, i32 0, i32 1
  %54 = call i32 @cgroup_read_memory(i32* %53, i32 1)
  br label %55

55:                                               ; preds = %42, %14
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @cgroup_read_cpuacct_stat(i32*) #1

declare dso_local i32 @cgroup_read_cpuacct_usage(i32*) #1

declare dso_local i32 @cgroup_read_memory(i32*, i32) #1

declare dso_local i32 @cgroup_read_blkio(i32*) #1

declare dso_local i32 @cgroup2_read_blkio(i32*, i32) #1

declare dso_local i32 @cgroup2_read_cpuacct_stat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
