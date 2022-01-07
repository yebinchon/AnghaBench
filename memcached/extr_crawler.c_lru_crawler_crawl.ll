; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_lru_crawler_crawl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_lru_crawler_crawl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWER_LARGEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@POWER_SMALLEST = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4
@lru_crawler_lock = common dso_local global i32 0, align 4
@CRAWLER_BADCLASS = common dso_local global i32 0, align 4
@TEMP_LRU = common dso_local global i32 0, align 4
@HOT_LRU = common dso_local global i32 0, align 4
@WARM_LRU = common dso_local global i32 0, align 4
@COLD_LRU = common dso_local global i32 0, align 4
@CRAWLER_RUNNING = common dso_local global i32 0, align 4
@CRAWLER_ERROR = common dso_local global i32 0, align 4
@CRAWLER_OK = common dso_local global i32 0, align 4
@CRAWLER_NOTSTARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lru_crawler_crawl(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* @POWER_LARGEST, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @POWER_LARGEST, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %22, i32 0, i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %40, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @POWER_LARGEST, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %22, i64 %38
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %32

43:                                               ; preds = %32
  br label %89

44:                                               ; preds = %5
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @strtok_r(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %46, i8** %17, align 8
  br label %47

47:                                               ; preds = %86, %44
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @safe_strtoul(i8* %51, i32* %13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @POWER_SMALLEST, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54, %50
  %63 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  %64 = load i32, i32* @CRAWLER_BADCLASS, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %111

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @TEMP_LRU, align 4
  %68 = or i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %22, i64 %69
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @HOT_LRU, align 4
  %73 = or i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %22, i64 %74
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @WARM_LRU, align 4
  %78 = or i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %22, i64 %79
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @COLD_LRU, align 4
  %83 = or i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %22, i64 %84
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %65
  %87 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  store i8* %87, i8** %17, align 8
  br label %47

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88, %43
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @lru_crawler_start(i32* %22, i32 %90, i32 %91, i32* null, i8* %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @CRAWLER_RUNNING, align 4
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %111

99:                                               ; preds = %89
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, -2
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @CRAWLER_ERROR, align 4
  store i32 %103, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @CRAWLER_OK, align 4
  store i32 %108, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @CRAWLER_NOTSTARTED, align 4
  store i32 %110, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %111

111:                                              ; preds = %109, %107, %102, %97, %62
  %112 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i32 @safe_strtoul(i8*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @lru_crawler_start(i32*, i32, i32, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
