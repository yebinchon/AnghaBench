; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_maintenance_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_maintenance_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@maintenance_lock = common dso_local global i32 0, align 4
@do_run_maintenance_thread = common dso_local global i64 0, align 8
@hash_bulk_move = common dso_local global i32 0, align 4
@expanding = common dso_local global i32 0, align 4
@expand_bucket = common dso_local global i64 0, align 8
@old_hashtable = common dso_local global %struct.TYPE_8__** null, align 8
@hashpower = common dso_local global i64 0, align 8
@primary_hashtable = common dso_local global %struct.TYPE_8__** null, align 8
@stats_state = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@settings = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Hash table expansion done\0A\00", align 1
@maintenance_cond = common dso_local global i32 0, align 4
@PAUSE_ALL_THREADS = common dso_local global i32 0, align 4
@RESUME_ALL_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @assoc_maintenance_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @assoc_maintenance_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 @mutex_lock(i32* @maintenance_lock)
  br label %9

9:                                                ; preds = %120, %1
  %10 = load i64, i64* @do_run_maintenance_thread, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %121

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %103, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @hash_bulk_move, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @expanding, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %106

22:                                               ; preds = %20
  store i8* null, i8** %7, align 8
  %23 = load i64, i64* @expand_bucket, align 8
  %24 = call i8* @item_trylock(i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @old_hashtable, align 8
  %28 = load i64, i64* @expand_bucket, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %4, align 8
  br label %31

31:                                               ; preds = %59, %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = icmp ne %struct.TYPE_8__* null, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %5, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = call i32 @ITEM_key(%struct.TYPE_8__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @hash(i32 %39, i32 %42)
  %44 = load i64, i64* @hashpower, align 8
  %45 = call i32 @hashmask(i64 %44)
  %46 = and i32 %43, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @primary_hashtable, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @primary_hashtable, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 %57
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %58, align 8
  br label %59

59:                                               ; preds = %34
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %4, align 8
  br label %31

61:                                               ; preds = %31
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @old_hashtable, align 8
  %63 = load i64, i64* @expand_bucket, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %63
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %64, align 8
  %65 = load i64, i64* @expand_bucket, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* @expand_bucket, align 8
  %67 = load i64, i64* @expand_bucket, align 8
  %68 = load i64, i64* @hashpower, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @hashsize(i64 %69)
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %61
  store i32 0, i32* @expanding, align 4
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @old_hashtable, align 8
  %75 = call i32 @free(%struct.TYPE_8__** %74)
  %76 = call i32 (...) @STATS_LOCK()
  %77 = load i64, i64* @hashpower, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @hashsize(i64 %78)
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats_state, i32 0, i32 0), align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats_state, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats_state, i32 0, i32 1), align 4
  %86 = call i32 (...) @STATS_UNLOCK()
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @settings, i32 0, i32 0), align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %73
  br label %93

93:                                               ; preds = %92, %61
  br label %96

94:                                               ; preds = %22
  %95 = call i32 @usleep(i32 10000)
  br label %96

96:                                               ; preds = %94, %93
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @item_trylock_unlock(i8* %100)
  store i8* null, i8** %7, align 8
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %13

106:                                              ; preds = %20
  %107 = load i32, i32* @expanding, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %106
  %110 = call i32 @pthread_cond_wait(i32* @maintenance_cond, i32* @maintenance_lock)
  %111 = load i64, i64* @do_run_maintenance_thread, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* @PAUSE_ALL_THREADS, align 4
  %115 = call i32 @pause_threads(i32 %114)
  %116 = call i32 (...) @assoc_expand()
  %117 = load i32, i32* @RESUME_ALL_THREADS, align 4
  %118 = call i32 @pause_threads(i32 %117)
  br label %119

119:                                              ; preds = %113, %109
  br label %120

120:                                              ; preds = %119, %106
  br label %9

121:                                              ; preds = %9
  %122 = call i32 @mutex_unlock(i32* @maintenance_lock)
  ret i8* null
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @item_trylock(i64) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_8__*) #1

declare dso_local i32 @hashmask(i64) #1

declare dso_local i32 @hashsize(i64) #1

declare dso_local i32 @free(%struct.TYPE_8__**) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @item_trylock_unlock(i8*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pause_threads(i32) #1

declare dso_local i32 @assoc_expand(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
