; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_eval.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, i32, i32 }
%struct.crawler_expired_data = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, i32, i32, i32, i32 }

@current_time = common dso_local global i64 0, align 8
@crawlers = common dso_local global %struct.TYPE_16__* null, align 8
@settings = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"LRU crawler found an expired item (flags: %d, slab: %d): \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ITEM_FETCHED = common dso_local global i32 0, align 4
@ITEM_HDR = common dso_local global i32 0, align 4
@storage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32)* @crawler_expired_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crawler_expired_eval(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crawler_expired_data*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.crawler_expired_data*
  store %struct.crawler_expired_data* %19, %struct.crawler_expired_data** %9, align 8
  %20 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %9, align 8
  %21 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %9, align 8
  %24 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i64 %27
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %10, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = call i32 @item_is_flushed(%struct.TYPE_18__* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @current_time, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %35, %4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %114

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @crawlers, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @settings, i32 0, i32 0), align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %90

58:                                               ; preds = %44
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = call i8* @ITEM_key(%struct.TYPE_18__* %59)
  store i8* %60, i8** %13, align 8
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %84, %58
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i32, i32* @stderr, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %44
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ITEM_FETCHED, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** @crawlers, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %100, %97, %90
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @do_item_unlink_nolock(%struct.TYPE_18__* %109, i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = call i32 @do_item_remove(%struct.TYPE_18__* %112)
  br label %165

114:                                              ; preds = %41
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %120 = call i32 @refcount_decr(%struct.TYPE_18__* %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %164

130:                                              ; preds = %114
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @current_time, align 8
  %135 = sub nsw i64 %133, %134
  %136 = icmp sgt i64 %135, 3599
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %163

142:                                              ; preds = %130
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @current_time, align 8
  %147 = sub nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sdiv i32 %149, 60
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp sle i32 %151, 60
  br i1 %152, label %153, label %162

153:                                              ; preds = %142
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %153, %142
  br label %163

163:                                              ; preds = %162, %137
  br label %164

164:                                              ; preds = %163, %125
  br label %165

165:                                              ; preds = %164, %108
  %166 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %9, align 8
  %167 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %166, i32 0, i32 0
  %168 = call i32 @pthread_mutex_unlock(i32* %167)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @item_is_flushed(%struct.TYPE_18__*) #1

declare dso_local i8* @ITEM_key(%struct.TYPE_18__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @do_item_unlink_nolock(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @do_item_remove(%struct.TYPE_18__*) #1

declare dso_local i32 @refcount_decr(%struct.TYPE_18__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
