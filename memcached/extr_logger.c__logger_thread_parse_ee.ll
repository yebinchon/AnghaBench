; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c__logger_thread_parse_ee.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c__logger_thread_parse_ee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.logentry_eviction = type { i32, i32, i32, i64, i32, i32 }

@KEY_MAX_URI_ENCODED_LENGTH = common dso_local global i32 0, align 4
@LOGGER_PARSE_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"ts=%d.%d gid=%llu type=eviction key=%s fetch=%s ttl=%lld la=%d clsid=%u\0A\00", align 1
@ITEM_FETCHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @_logger_thread_parse_ee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_logger_thread_parse_ee(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.logentry_eviction*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.logentry_eviction*
  store %struct.logentry_eviction* %16, %struct.logentry_eviction** %8, align 8
  %17 = load %struct.logentry_eviction*, %struct.logentry_eviction** %8, align 8
  %18 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.logentry_eviction*, %struct.logentry_eviction** %8, align 8
  %21 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %24 = call i32 @uriencode(i32 %19, i8* %12, i32 %22, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @LOGGER_PARSE_SCRATCH, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.logentry_eviction*, %struct.logentry_eviction** %8, align 8
  %41 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ITEM_FETCHED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.logentry_eviction*, %struct.logentry_eviction** %8, align 8
  %49 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.logentry_eviction*, %struct.logentry_eviction** %8, align 8
  %52 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.logentry_eviction*, %struct.logentry_eviction** %8, align 8
  %55 = getelementptr inbounds %struct.logentry_eviction, %struct.logentry_eviction* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36, i64 %39, i8* %12, i8* %47, i64 %50, i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uriencode(i32, i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64, i8*, i8*, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
