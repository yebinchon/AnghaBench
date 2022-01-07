; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_find.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i64, i32, %struct.cgroup* }

@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"searching for cgroup '%s'\00", align 1
@cgroup_root = common dso_local global %struct.cgroup* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"cgroup '%s' %s in memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup* (i8*)* @cgroup_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup* @cgroup_find(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cgroup*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @D_CGROUP, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (i32, i8*, i8*, ...) @debug(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @simple_hash(i8* %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  store %struct.cgroup* %10, %struct.cgroup** %4, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %13 = icmp ne %struct.cgroup* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %17 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %23 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @strcmp(i8* %21, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20, %14
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %31 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %30, i32 0, i32 2
  %32 = load %struct.cgroup*, %struct.cgroup** %31, align 8
  store %struct.cgroup* %32, %struct.cgroup** %4, align 8
  br label %11

33:                                               ; preds = %27, %11
  %34 = load i32, i32* @D_CGROUP, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %37 = icmp ne %struct.cgroup* %36, null
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %40 = call i32 (i32, i8*, i8*, ...) @debug(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %39)
  %41 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  ret %struct.cgroup* %41
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
