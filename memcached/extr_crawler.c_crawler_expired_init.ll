; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_expired_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.crawler_expired_data* }
%struct.crawler_expired_data = type { i32, i32, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i32, i8* }

@current_time = common dso_local global i8* null, align 8
@POWER_LARGEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @crawler_expired_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crawler_expired_init(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crawler_expired_data*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.crawler_expired_data*
  store %struct.crawler_expired_data* %12, %struct.crawler_expired_data** %6, align 8
  %13 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %14 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.crawler_expired_data*
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.crawler_expired_data* %16, %struct.crawler_expired_data** %18, align 8
  br label %36

19:                                               ; preds = %2
  %20 = call %struct.crawler_expired_data* @calloc(i32 1, i32 24)
  store %struct.crawler_expired_data* %20, %struct.crawler_expired_data** %6, align 8
  %21 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %22 = icmp eq %struct.crawler_expired_data* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %74

24:                                               ; preds = %19
  %25 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %26 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %25, i32 0, i32 1
  %27 = call i32 @pthread_mutex_init(i32* %26, i32* null)
  %28 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %29 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i8*, i8** @current_time, align 8
  %31 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %32 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.crawler_expired_data* %33, %struct.crawler_expired_data** %35, align 8
  br label %36

36:                                               ; preds = %24, %10
  %37 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %38 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %37, i32 0, i32 1
  %39 = call i32 @pthread_mutex_lock(i32* %38)
  %40 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %41 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %40, i32 0, i32 2
  %42 = load i32, i32* @POWER_LARGEST, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(%struct.TYPE_5__** %41, i32 0, i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %67, %36
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @POWER_LARGEST, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i8*, i8** @current_time, align 8
  %53 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %54 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8* %52, i8** %59, align 8
  %60 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %61 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %6, align 8
  %72 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %71, i32 0, i32 1
  %73 = call i32 @pthread_mutex_unlock(i32* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.crawler_expired_data* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__**, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
