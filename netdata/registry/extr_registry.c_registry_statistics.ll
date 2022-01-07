; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_statistics.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@registry = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@registry_statistics.sts = internal global i32* null, align 8
@registry_statistics.stc = internal global i32* null, align 8
@registry_statistics.stm = internal global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"netdata\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"registry_sessions\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"registry\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"NetData Registry Sessions\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sessions\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@localhost = common dso_local global %struct.TYPE_4__* null, align 8
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"registry_entries\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"NetData Registry Entries\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"persons\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"machines\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"urls\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"persons_urls\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"machines_urls\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"registry_mem\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"NetData Registry Memory\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_statistics() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 11), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %149

4:                                                ; preds = %0
  %5 = load i32*, i32** @registry_statistics.sts, align 8
  %6 = icmp ne i32* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localhost, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %16 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 131000, i32 %14, i32 %15)
  store i32* %16, i32** @registry_statistics.sts, align 8
  %17 = load i32*, i32** @registry_statistics.sts, align 8
  %18 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %19 = call i32 @rrddim_add(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %18)
  br label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** @registry_statistics.sts, align 8
  %22 = call i32 @rrdset_next(i32* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = load i32*, i32** @registry_statistics.sts, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 0), align 4
  %26 = call i32 @rrddim_set(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** @registry_statistics.sts, align 8
  %28 = call i32 @rrdset_done(i32* %27)
  %29 = load i32*, i32** @registry_statistics.stc, align 8
  %30 = icmp ne i32* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %23
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localhost, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %40 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 131100, i32 %38, i32 %39)
  store i32* %40, i32** @registry_statistics.stc, align 8
  %41 = load i32*, i32** @registry_statistics.stc, align 8
  %42 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %43 = call i32 @rrddim_add(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %42)
  %44 = load i32*, i32** @registry_statistics.stc, align 8
  %45 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %46 = call i32 @rrddim_add(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %45)
  %47 = load i32*, i32** @registry_statistics.stc, align 8
  %48 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %49 = call i32 @rrddim_add(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %48)
  %50 = load i32*, i32** @registry_statistics.stc, align 8
  %51 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %52 = call i32 @rrddim_add(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %51)
  %53 = load i32*, i32** @registry_statistics.stc, align 8
  %54 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %55 = call i32 @rrddim_add(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %54)
  br label %59

56:                                               ; preds = %23
  %57 = load i32*, i32** @registry_statistics.stc, align 8
  %58 = call i32 @rrdset_next(i32* %57)
  br label %59

59:                                               ; preds = %56, %35
  %60 = load i32*, i32** @registry_statistics.stc, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 1), align 4
  %62 = call i32 @rrddim_set(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** @registry_statistics.stc, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 2), align 4
  %65 = call i32 @rrddim_set(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** @registry_statistics.stc, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 3), align 4
  %68 = call i32 @rrddim_set(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** @registry_statistics.stc, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 4), align 4
  %71 = call i32 @rrddim_set(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** @registry_statistics.stc, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 5), align 4
  %74 = call i32 @rrddim_set(i32* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** @registry_statistics.stc, align 8
  %76 = call i32 @rrdset_done(i32* %75)
  %77 = load i32*, i32** @registry_statistics.stm, align 8
  %78 = icmp ne i32* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %59
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localhost, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %88 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 131300, i32 %86, i32 %87)
  store i32* %88, i32** @registry_statistics.stm, align 8
  %89 = load i32*, i32** @registry_statistics.stm, align 8
  %90 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %91 = call i32 @rrddim_add(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1024, i32 %90)
  %92 = load i32*, i32** @registry_statistics.stm, align 8
  %93 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %94 = call i32 @rrddim_add(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1024, i32 %93)
  %95 = load i32*, i32** @registry_statistics.stm, align 8
  %96 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %97 = call i32 @rrddim_add(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 1, i32 1024, i32 %96)
  %98 = load i32*, i32** @registry_statistics.stm, align 8
  %99 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %100 = call i32 @rrddim_add(i32* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 1, i32 1024, i32 %99)
  %101 = load i32*, i32** @registry_statistics.stm, align 8
  %102 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %103 = call i32 @rrddim_add(i32* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 1, i32 1024, i32 %102)
  br label %107

104:                                              ; preds = %59
  %105 = load i32*, i32** @registry_statistics.stm, align 8
  %106 = call i32 @rrdset_next(i32* %105)
  br label %107

107:                                              ; preds = %104, %83
  %108 = load i32*, i32** @registry_statistics.stm, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 6), align 4
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 1), align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = add i64 %110, %113
  %115 = add i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i32 @rrddim_set(i32* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** @registry_statistics.stm, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 7), align 4
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 2), align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = add i64 %120, %123
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @rrddim_set(i32* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** @registry_statistics.stm, align 8
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 8), align 4
  %130 = call i32 @rrddim_set(i32* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** @registry_statistics.stm, align 8
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 9), align 4
  %133 = call i32 @rrddim_set(i32* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** @registry_statistics.stm, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 10), align 4
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 2), align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = add i64 %136, %139
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @registry, i32 0, i32 5), align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = add i64 %140, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @rrddim_set(i32* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** @registry_statistics.stm, align 8
  %148 = call i32 @rrdset_done(i32* %147)
  br label %149

149:                                              ; preds = %107, %3
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set(i32*, i8*, i32) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
