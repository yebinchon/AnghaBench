; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_device_del.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_device_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_rename = type { i64, i64, i64, i64, i32, %struct.netdev_rename* }

@netdev_rename_mutex = common dso_local global i32 0, align 4
@netdev_rename_root = common dso_local global %struct.netdev_rename* null, align 8
@netdev_pending_renames = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"CGROUP: unregistered network interface rename for '%s' as '%s' under '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_rename_device_del(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netdev_rename*, align 8
  %4 = alloca %struct.netdev_rename*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 @netdata_mutex_lock(i32* @netdev_rename_mutex)
  store %struct.netdev_rename* null, %struct.netdev_rename** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @simple_hash(i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.netdev_rename*, %struct.netdev_rename** @netdev_rename_root, align 8
  store %struct.netdev_rename* %9, %struct.netdev_rename** %3, align 8
  br label %10

10:                                               ; preds = %82, %1
  %11 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %12 = icmp ne %struct.netdev_rename* %11, null
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %22 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @strcmp(i8* %20, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %19
  %27 = load %struct.netdev_rename*, %struct.netdev_rename** @netdev_rename_root, align 8
  %28 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %29 = icmp eq %struct.netdev_rename* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %31, i32 0, i32 5
  %33 = load %struct.netdev_rename*, %struct.netdev_rename** %32, align 8
  store %struct.netdev_rename* %33, %struct.netdev_rename** @netdev_rename_root, align 8
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %36 = icmp ne %struct.netdev_rename* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %39 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %38, i32 0, i32 5
  %40 = load %struct.netdev_rename*, %struct.netdev_rename** %39, align 8
  %41 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %42 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %41, i32 0, i32 5
  store %struct.netdev_rename* %40, %struct.netdev_rename** %42, align 8
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %46 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @netdev_pending_renames, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @netdev_pending_renames, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %54 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %57 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %60 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %58, i64 %61)
  %63 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %64 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @freez(i8* %66)
  %68 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %69 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @freez(i8* %71)
  %73 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %74 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @freez(i8* %76)
  %78 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %79 = bitcast %struct.netdev_rename* %78 to i8*
  %80 = call i32 @freez(i8* %79)
  br label %87

81:                                               ; preds = %19, %13
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  store %struct.netdev_rename* %83, %struct.netdev_rename** %4, align 8
  %84 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %85 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %84, i32 0, i32 5
  %86 = load %struct.netdev_rename*, %struct.netdev_rename** %85, align 8
  store %struct.netdev_rename* %86, %struct.netdev_rename** %3, align 8
  br label %10

87:                                               ; preds = %52, %10
  %88 = call i32 @netdata_mutex_unlock(i32* @netdev_rename_mutex)
  ret void
}

declare dso_local i32 @netdata_mutex_lock(i32*) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @info(i8*, i64, i64, i64) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @netdata_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
