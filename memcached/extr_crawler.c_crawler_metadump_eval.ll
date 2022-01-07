; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_metadump_eval.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_crawler_metadump_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }

@KEY_MAX_URI_ENCODED_LENGTH = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"key=%s exp=%ld la=%llu cas=%llu fetch=%s cls=%u size=%lu\0A\00", align 1
@process_started = common dso_local global i64 0, align 8
@ITEM_FETCHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@LRU_CRAWLER_WRITEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32)* @crawler_metadump_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crawler_metadump_eval(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = call i32 @item_is_flushed(%struct.TYPE_13__* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @current_time, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call i32 @refcount_decr(%struct.TYPE_13__* %34)
  store i32 1, i32* %12, align 4
  br label %99

36:                                               ; preds = %30
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = call i32 @ITEM_key(%struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %43 = call i32 @uriencode(i32 %38, i8* %17, i32 %41, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %59

53:                                               ; preds = %36
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @process_started, align 8
  %58 = add nsw i64 %56, %57
  br label %59

59:                                               ; preds = %53, %52
  %60 = phi i64 [ -1, %52 ], [ %58, %53 ]
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @process_started, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = call i64 @ITEM_get_cas(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ITEM_FETCHED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = call i32 @ITEM_clsid(%struct.TYPE_13__* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = call i64 @ITEM_ntotal(%struct.TYPE_13__* %79)
  %81 = call i32 @snprintf(i32 %47, i32 4096, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %61, i64 %66, i64 %68, i8* %76, i32 %78, i64 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = call i32 @refcount_decr(%struct.TYPE_13__* %82)
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @LRU_CRAWLER_WRITEBUF, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp sge i32 %84, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %59
  %89 = load i32, i32* %13, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %59
  store i32 1, i32* %12, align 4
  br label %99

92:                                               ; preds = %88
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @bipbuf_push(i32 %96, i32 %97)
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %92, %91, %33
  %100 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %12, align 4
  switch i32 %101, label %103 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %99, %99
  ret void

103:                                              ; preds = %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @item_is_flushed(%struct.TYPE_13__*) #2

declare dso_local i32 @refcount_decr(%struct.TYPE_13__*) #2

declare dso_local i32 @uriencode(i32, i8*, i32, i32) #2

declare dso_local i32 @ITEM_key(%struct.TYPE_13__*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i64, i64, i8*, i32, i64) #2

declare dso_local i64 @ITEM_get_cas(%struct.TYPE_13__*) #2

declare dso_local i32 @ITEM_clsid(%struct.TYPE_13__*) #2

declare dso_local i64 @ITEM_ntotal(%struct.TYPE_13__*) #2

declare dso_local i32 @bipbuf_push(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
