; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_init_rrd.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_init_rrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@RRD_ID_LENGTH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"zram_usage.%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mem.zram_usage\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ZRAM Memory Usage\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@PLUGIN_PROC_MODULE_ZRAM_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_MEM_ZRAM = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"zram_savings.%s\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"mem.zram_savings\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ZRAM Memory Savings\00", align 1
@NETDATA_CHART_PRIO_MEM_ZRAM_SAVINGS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"savings\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"zram_ratio.%s\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"mem.zram_ratio\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"ZRAM Compression Ratio (original to compressed)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@NETDATA_CHART_PRIO_MEM_ZRAM_RATIO = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"zram_efficiency.%s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"mem.zram_efficiency\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ZRAM Efficiency\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@NETDATA_CHART_PRIO_MEM_ZRAM_EFFICIENCY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32)* @init_rrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rrd(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @snprintfz(i8* %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %19 = load i32, i32* @PLUGIN_PROC_MODULE_ZRAM_NAME, align 4
  %20 = load i32, i32* @NETDATA_CHART_PRIO_MEM_ZRAM, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %23 = call i8* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %13, i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %30 = call i8* @rrddim_add(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %37 = call i8* @rrddim_add(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @snprintfz(i8* %13, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %45 = load i32, i32* @PLUGIN_PROC_MODULE_ZRAM_NAME, align 4
  %46 = load i32, i32* @NETDATA_CHART_PRIO_MEM_ZRAM_SAVINGS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %49 = call i8* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %13, i8* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %56 = call i8* @rrddim_add(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %63 = call i8* @rrddim_add(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @snprintfz(i8* %13, i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %71 = load i32, i32* @PLUGIN_PROC_MODULE_ZRAM_NAME, align 4
  %72 = load i32, i32* @NETDATA_CHART_PRIO_MEM_ZRAM_RATIO, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %75 = call i8* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %13, i8* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %82 = call i8* @rrddim_add(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 100, i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @snprintfz(i8* %13, i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %90 = load i32, i32* @PLUGIN_PROC_MODULE_ZRAM_NAME, align 4
  %91 = load i32, i32* @NETDATA_CHART_PRIO_MEM_ZRAM_EFFICIENCY, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %94 = call i8* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %13, i8* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %101 = call i8* @rrddim_add(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32* null, i32 1, i32 10000, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #2

declare dso_local i8* @rrdset_create_localhost(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i8* @rrddim_add(i8*, i8*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
