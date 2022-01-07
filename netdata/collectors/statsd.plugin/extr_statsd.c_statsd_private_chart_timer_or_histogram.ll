; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_chart_timer_or_histogram.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_private_chart_timer_or_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i8*, i32, i8*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8* }

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"updating private chart for %s metric '%s'\00", align 1
@RRD_ID_LENGTH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"statsd_%s.%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"statsd private chart for %s %s\00", align 1
@NETDATA_CHART_PRIO_STATSD_PRIVATE = common dso_local global i32 0, align 4
@statsd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"median\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stddev\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i8*, i8*)* @statsd_private_chart_timer_or_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statsd_private_chart_timer_or_histogram(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @D_STATSD, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @debug(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %162

28:                                               ; preds = %4
  %29 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %34 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %11, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %41 = call i32 @statsd_get_metric_type_and_id(%struct.TYPE_10__* %38, i8* %33, i8* %37, i8* %39, i32 %40)
  %42 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %12, align 8
  %46 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintfz(i8* %45, i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %50)
  %52 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %53 = add nsw i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %13, align 8
  %56 = load i32, i32* @RRD_ID_LENGTH_MAX, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snprintfz(i8* %55, i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @NETDATA_CHART_PRIO_STATSD_PRIVATE, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 2), align 8
  %67 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %68 = call i64 @statsd_private_rrdset_create(%struct.TYPE_10__* %62, i8* %33, i8* %37, i32* null, i8* %63, i8* %45, i8* %55, i8* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %75 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %76 = call i8* @rrddim_add(i64 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 1, i32 %74, i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 11
  store i8* %76, i8** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %86 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %87 = call i8* @rrddim_add(i64 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 1, i32 %85, i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 9
  store i8* %87, i8** %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %97 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %98 = call i8* @rrddim_add(i64 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 1, i32 %96, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 1), align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %106 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %107 = call i8* @rrddim_add(i64 %103, i8* %104, i32* null, i32 1, i32 %105, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 7
  store i8* %107, i8** %112, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %117 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %118 = call i8* @rrddim_add(i64 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 1, i32 %116, i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  store i8* %118, i8** %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %128 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %129 = call i8* @rrddim_add(i64 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 1, i32 %127, i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store i8* %129, i8** %134, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @statsd, i32 0, i32 0), align 8
  %139 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %140 = call i8* @rrddim_add(i64 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 1, i32 %138, i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i8* %140, i8** %145, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %28
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %157 = call i8* @rrddim_add(i64 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %152, %28
  %161 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %161)
  br label %167

162:                                              ; preds = %4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @rrdset_next(i64 %165)
  br label %167

167:                                              ; preds = %162, %160
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 11
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @rrddim_set_by_pointer(i64 %170, i8* %176, i32 %182)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 9
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @rrddim_set_by_pointer(i64 %186, i8* %192, i32 %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 7
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @rrddim_set_by_pointer(i64 %202, i8* %208, i32 %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 6
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 5
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @rrddim_set_by_pointer(i64 %218, i8* %224, i32 %230)
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 3
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @rrddim_set_by_pointer(i64 %234, i8* %240, i32 %246)
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @rrddim_set_by_pointer(i64 %250, i8* %256, i32 %262)
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 5
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @rrddim_set_by_pointer(i64 %266, i8* %269, i32 %272)
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 3
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %289

278:                                              ; preds = %167
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 3
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @rrddim_set_by_pointer(i64 %281, i8* %284, i32 %287)
  br label %289

289:                                              ; preds = %278, %167
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @rrdset_done(i64 %292)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @statsd_get_metric_type_and_id(%struct.TYPE_10__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @statsd_private_rrdset_create(%struct.TYPE_10__*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @rrddim_add(i64, i8*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rrdset_next(i64) #1

declare dso_local i32 @rrddim_set_by_pointer(i64, i8*, i32) #1

declare dso_local i32 @rrdset_done(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
