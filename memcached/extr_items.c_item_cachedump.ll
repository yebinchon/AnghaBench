; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_item_cachedump.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_item_cachedump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_4__* }

@KEY_MAX_LENGTH = common dso_local global i32 0, align 4
@COLD_LRU = common dso_local global i32 0, align 4
@lru_locks = common dso_local global i32* null, align 8
@heads = common dso_local global %struct.TYPE_4__** null, align 8
@.str = private unnamed_addr constant [25 x i8] c"ITEM %s [%d b; %llu s]\0D\0A\00", align 1
@process_started = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @item_cachedump(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [512 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 2097152, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @KEY_MAX_LENGTH, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* @COLD_LRU, align 4
  %26 = load i32, i32* %17, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** @lru_locks, align 8
  %29 = load i32, i32* %17, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @pthread_mutex_lock(i32* %31)
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @heads, align 8
  %34 = load i32, i32* %17, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load i32*, i32** @lru_locks, align 8
  %45 = load i32, i32* %17, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @pthread_mutex_unlock(i32* %47)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %155

49:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %123, %81, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ult i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ true, %53 ], [ %59, %56 ]
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i1 [ false, %50 ], [ %61, %60 ]
  br i1 %63, label %64, label %139

64:                                               ; preds = %62
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @KEY_MAX_LENGTH, align 4
  %69 = icmp sle i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %11, align 8
  br label %50

85:                                               ; preds = %76, %64
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = call i32 @ITEM_key(%struct.TYPE_4__* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strncpy(i8* %23, i32 %87, i32 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %23, i64 %95
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %85
  br label %113

107:                                              ; preds = %85
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @process_started, align 8
  %112 = add i64 %110, %111
  br label %113

113:                                              ; preds = %107, %106
  %114 = phi i64 [ 0, %106 ], [ %112, %107 ]
  %115 = call i32 @snprintf(i8* %97, i32 512, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %101, i64 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %116, %117
  %119 = add i32 %118, 6
  %120 = load i32, i32* %8, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %139

123:                                              ; preds = %113
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %11, align 8
  br label %50

139:                                              ; preds = %122, %62
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @memcpy(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %145 = load i32, i32* %10, align 4
  %146 = add i32 %145, 5
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32*, i32** %7, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** @lru_locks, align 8
  %150 = load i32, i32* %17, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @pthread_mutex_unlock(i32* %152)
  %154 = load i8*, i8** %9, align 8
  store i8* %154, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %155

155:                                              ; preds = %139, %43
  %156 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i8*, i8** %4, align 8
  ret i8* %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @ITEM_key(%struct.TYPE_4__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
