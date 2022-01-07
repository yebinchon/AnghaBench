; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_rrdset_create.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_rrdset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@statsd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"STATSD: metric '%s' will be charted with memory mode = none, because the maximum number of charts has been reached.\00", align 1
@.str.1 = private unnamed_addr constant [195 x i8] c"STATSD: metric '%s' will be charted with memory mode = none, because the maximum number of charts (%zu) has been reached. Increase the number of charts by editing netdata.conf, [statsd] section.\00", align 1
@RRD_MEMORY_MODE_NONE = common dso_local global i32 0, align 4
@localhost = common dso_local global i32 0, align 4
@PLUGIN_STATSD_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"private_chart\00", align 1
@RRDSET_FLAG_STORE_FIRST = common dso_local global i32 0, align 4
@RRDSET_FLAG_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32, i32)* @statsd_private_rrdset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @statsd_private_rrdset_create(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i64 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 4), align 8
  store i32 %26, i32* %23, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 0), align 8
  store i64 %27, i64* %24, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 1), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 2), align 8
  %30 = icmp sge i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %11
  %35 = load i32, i32* @D_STATSD, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @debug(i32 %35, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 2), align 8
  %44 = call i32 @info(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43)
  %45 = load i32, i32* @RRD_MEMORY_MODE_NONE, align 4
  store i32 %45, i32* %23, align 4
  store i64 5, i64* %24, align 8
  br label %46

46:                                               ; preds = %34, %11
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 1), align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 1), align 8
  %49 = load i32, i32* @localhost, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i32, i32* @PLUGIN_STATSD_NAME, align 4
  %58 = load i64, i64* %20, align 8
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i64, i64* %24, align 8
  %63 = call i32* @rrdset_create_custom(i32 %49, i8* %50, i8* %51, i8* %52, i8* %53, i8* %54, i8* %55, i8* %56, i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %58, i32 %59, i32 %60, i32 %61, i64 %62)
  store i32* %63, i32** %25, align 8
  %64 = load i32*, i32** %25, align 8
  %65 = load i32, i32* @RRDSET_FLAG_STORE_FIRST, align 4
  %66 = call i32 @rrdset_flag_set(i32* %64, i32 %65)
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @statsd, i32 0, i32 3), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %46
  %70 = load i32*, i32** %25, align 8
  %71 = load i32, i32* @RRDSET_FLAG_HIDDEN, align 4
  %72 = call i32 @rrdset_flag_set(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %46
  %74 = load i32*, i32** %25, align 8
  ret i32* %74
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @info(i8*, i32, i64) #1

declare dso_local i32* @rrdset_create_custom(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @rrdset_flag_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
