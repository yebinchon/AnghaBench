; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_device_add.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_rename = type { i8*, i8*, i8*, i64, %struct.netdev_rename*, i32 }

@netdev_rename_mutex = common dso_local global i32 0, align 4
@netdev_rename_root = common dso_local global %struct.netdev_rename* null, align 8
@netdev_pending_renames = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"CGROUP: registered network interface rename for '%s' as '%s' under '%s'\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"CGROUP: altered network interface rename for '%s' as '%s' under '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_rename_device_add(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netdev_rename*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @netdata_mutex_lock(i32* @netdev_rename_mutex)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @simple_hash(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.netdev_rename* @netdev_rename_find(i8* %12, i32 %13)
  store %struct.netdev_rename* %14, %struct.netdev_rename** %8, align 8
  %15 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %16 = icmp ne %struct.netdev_rename* %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %3
  %18 = call %struct.netdev_rename* @callocz(i32 1, i32 48)
  store %struct.netdev_rename* %18, %struct.netdev_rename** %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strdupz(i8* %19)
  %21 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %22 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strdupz(i8* %23)
  %25 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %26 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strdupz(i8* %27)
  %29 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %30 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %33 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.netdev_rename*, %struct.netdev_rename** @netdev_rename_root, align 8
  %35 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %36 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %35, i32 0, i32 4
  store %struct.netdev_rename* %34, %struct.netdev_rename** %36, align 8
  %37 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %38 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  store %struct.netdev_rename* %39, %struct.netdev_rename** @netdev_rename_root, align 8
  %40 = load i32, i32* @netdev_pending_renames, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @netdev_pending_renames, align 4
  %42 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %43 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %46 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %49 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %47, i8* %50)
  br label %98

52:                                               ; preds = %3
  %53 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %54 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %61 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strcmp(i8* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %59, %52
  %67 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %68 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @freez(i8* %69)
  %71 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %72 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @freez(i8* %73)
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @strdupz(i8* %75)
  %77 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %78 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @strdupz(i8* %79)
  %81 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %82 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %84 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @netdev_pending_renames, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @netdev_pending_renames, align 4
  %87 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %88 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %91 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.netdev_rename*, %struct.netdev_rename** %8, align 8
  %94 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @info(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %92, i8* %95)
  br label %97

97:                                               ; preds = %66, %59
  br label %98

98:                                               ; preds = %97, %17
  %99 = call i32 @netdata_mutex_unlock(i32* @netdev_rename_mutex)
  ret void
}

declare dso_local i32 @netdata_mutex_lock(i32*) #1

declare dso_local i32 @simple_hash(i8*) #1

declare dso_local %struct.netdev_rename* @netdev_rename_find(i8*, i32) #1

declare dso_local %struct.netdev_rename* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @info(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @netdata_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
