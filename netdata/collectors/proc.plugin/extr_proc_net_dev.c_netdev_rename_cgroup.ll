; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_cgroup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.netdev_rename = type { i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"CGROUP: renaming network interface '%s' as '%s' under '%s'\00", align 1
@RRD_ID_LENGTH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cgroup_%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"net_%s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"net_compressed_%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"net_drops_%s\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"net_errors_%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"net_events_%s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"net_fifo_%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"net_packets_%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"net %s\00", align 1
@NETDATA_CHART_PRIO_CGROUP_NET_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev*, %struct.netdev_rename*)* @netdev_rename_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_rename_cgroup(%struct.netdev* %0, %struct.netdev_rename* %1) #0 {
  %3 = alloca %struct.netdev*, align 8
  %4 = alloca %struct.netdev_rename*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.netdev* %0, %struct.netdev** %3, align 8
  store %struct.netdev_rename* %1, %struct.netdev_rename** %4, align 8
  %7 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %8 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %11 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %14 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.netdev*, %struct.netdev** %3, align 8
  %18 = call i32 @netdev_charts_release(%struct.netdev* %17)
  %19 = load %struct.netdev*, %struct.netdev** %3, align 8
  %20 = call i32 @netdev_free_chart_strings(%struct.netdev* %19)
  %21 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %5, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %26 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %27 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %28 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintfz(i8* %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i8* @strdupz(i8* %25)
  %32 = load %struct.netdev*, %struct.netdev** %3, align 8
  %33 = getelementptr inbounds %struct.netdev, %struct.netdev* %32, i32 0, i32 16
  store i8* %31, i8** %33, align 8
  %34 = call i8* @strdupz(i8* %25)
  %35 = load %struct.netdev*, %struct.netdev** %3, align 8
  %36 = getelementptr inbounds %struct.netdev, %struct.netdev* %35, i32 0, i32 15
  store i8* %34, i8** %36, align 8
  %37 = call i8* @strdupz(i8* %25)
  %38 = load %struct.netdev*, %struct.netdev** %3, align 8
  %39 = getelementptr inbounds %struct.netdev, %struct.netdev* %38, i32 0, i32 14
  store i8* %37, i8** %39, align 8
  %40 = call i8* @strdupz(i8* %25)
  %41 = load %struct.netdev*, %struct.netdev** %3, align 8
  %42 = getelementptr inbounds %struct.netdev, %struct.netdev* %41, i32 0, i32 13
  store i8* %40, i8** %42, align 8
  %43 = call i8* @strdupz(i8* %25)
  %44 = load %struct.netdev*, %struct.netdev** %3, align 8
  %45 = getelementptr inbounds %struct.netdev, %struct.netdev* %44, i32 0, i32 12
  store i8* %43, i8** %45, align 8
  %46 = call i8* @strdupz(i8* %25)
  %47 = load %struct.netdev*, %struct.netdev** %3, align 8
  %48 = getelementptr inbounds %struct.netdev, %struct.netdev* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  %49 = call i8* @strdupz(i8* %25)
  %50 = load %struct.netdev*, %struct.netdev** %3, align 8
  %51 = getelementptr inbounds %struct.netdev, %struct.netdev* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %53 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %54 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snprintfz(i8* %25, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = call i8* @strdupz(i8* %25)
  %58 = load %struct.netdev*, %struct.netdev** %3, align 8
  %59 = getelementptr inbounds %struct.netdev, %struct.netdev* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %61 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %62 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snprintfz(i8* %25, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i8* @strdupz(i8* %25)
  %66 = load %struct.netdev*, %struct.netdev** %3, align 8
  %67 = getelementptr inbounds %struct.netdev, %struct.netdev* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %69 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %70 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snprintfz(i8* %25, i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = call i8* @strdupz(i8* %25)
  %74 = load %struct.netdev*, %struct.netdev** %3, align 8
  %75 = getelementptr inbounds %struct.netdev, %struct.netdev* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %77 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %78 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snprintfz(i8* %25, i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = call i8* @strdupz(i8* %25)
  %82 = load %struct.netdev*, %struct.netdev** %3, align 8
  %83 = getelementptr inbounds %struct.netdev, %struct.netdev* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %85 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %86 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snprintfz(i8* %25, i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = call i8* @strdupz(i8* %25)
  %90 = load %struct.netdev*, %struct.netdev** %3, align 8
  %91 = getelementptr inbounds %struct.netdev, %struct.netdev* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %93 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %94 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snprintfz(i8* %25, i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = call i8* @strdupz(i8* %25)
  %98 = load %struct.netdev*, %struct.netdev** %3, align 8
  %99 = getelementptr inbounds %struct.netdev, %struct.netdev* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %101 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %102 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snprintfz(i8* %25, i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %103)
  %105 = call i8* @strdupz(i8* %25)
  %106 = load %struct.netdev*, %struct.netdev** %3, align 8
  %107 = getelementptr inbounds %struct.netdev, %struct.netdev* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %109 = load %struct.netdev_rename*, %struct.netdev_rename** %4, align 8
  %110 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @snprintfz(i8* %25, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = call i8* @strdupz(i8* %25)
  %114 = load %struct.netdev*, %struct.netdev** %3, align 8
  %115 = getelementptr inbounds %struct.netdev, %struct.netdev* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @NETDATA_CHART_PRIO_CGROUP_NET_IFACE, align 4
  %117 = load %struct.netdev*, %struct.netdev** %3, align 8
  %118 = getelementptr inbounds %struct.netdev, %struct.netdev* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.netdev*, %struct.netdev** %3, align 8
  %120 = getelementptr inbounds %struct.netdev, %struct.netdev* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %121)
  ret void
}

declare dso_local i32 @info(i8*, i32, i32, i32) #1

declare dso_local i32 @netdev_charts_release(%struct.netdev*) #1

declare dso_local i32 @netdev_free_chart_strings(%struct.netdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i8* @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
