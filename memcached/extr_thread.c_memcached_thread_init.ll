; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_memcached_thread_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_memcached_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@POWER_LARGEST = common dso_local global i32 0, align 4
@lru_locks = common dso_local global i32* null, align 8
@worker_hang_lock = common dso_local global i32 0, align 4
@init_lock = common dso_local global i32 0, align 4
@init_cond = common dso_local global i32 0, align 4
@cqi_freelist_lock = common dso_local global i32 0, align 4
@cqi_freelist = common dso_local global i32* null, align 8
@hashpower = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Hash table power size (%d) cannot be equal to or less than item lock table (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Item lock table grows with `-t N` (worker threadcount)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Hash table grows with `-o hashpower=N` \0A\00", align 1
@item_lock_count = common dso_local global i32 0, align 4
@item_lock_hashpower = common dso_local global i32 0, align 4
@item_locks = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't allocate item locks\00", align 1
@threads = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Can't allocate thread descriptors\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Can't create notify pipe\00", align 1
@stats_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@worker_libevent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memcached_thread_init(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @POWER_LARGEST, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32*, i32** @lru_locks, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @pthread_mutex_init(i32* %16, i32* null)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %8

21:                                               ; preds = %8
  %22 = call i32 @pthread_mutex_init(i32* @worker_hang_lock, i32* null)
  %23 = call i32 @pthread_mutex_init(i32* @init_lock, i32* null)
  %24 = call i32 @pthread_cond_init(i32* @init_cond, i32* null)
  %25 = call i32 @pthread_mutex_init(i32* @cqi_freelist_lock, i32* null)
  store i32* null, i32** @cqi_freelist, align 8
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 10, i32* %6, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 11, i32* %6, align 4
  br label %49

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 12, i32* %6, align 4
  br label %48

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = icmp sle i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 13, i32* %6, align 4
  br label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %42, 20
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 14, i32* %6, align 4
  br label %46

45:                                               ; preds = %41
  store i32 15, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @hashpower, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* @hashpower, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %50
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @hashsize(i32 %65)
  store i32 %66, i32* @item_lock_count, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* @item_lock_hashpower, align 4
  %68 = load i32, i32* @item_lock_count, align 4
  %69 = call i8* @calloc(i32 %68, i32 4)
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** @item_locks, align 8
  %71 = load i32*, i32** @item_locks, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @item_lock_count, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32*, i32** @item_locks, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @pthread_mutex_init(i32* %85, i32* null)
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %77

90:                                               ; preds = %77
  %91 = load i32, i32* %3, align 4
  %92 = call i8* @calloc(i32 %91, i32 4)
  %93 = bitcast i8* %92 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** @threads, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @threads, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %133, %99
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %136

104:                                              ; preds = %100
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %106 = call i64 @pipe(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %110 = call i32 @exit(i32 1) #3
  unreachable

111:                                              ; preds = %104
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @threads, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 8
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @threads, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 %120, i32* %125, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @threads, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = call i32 @setup_thread(%struct.TYPE_5__* %129)
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats_state, i32 0, i32 0), align 4
  %132 = add nsw i32 %131, 5
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats_state, i32 0, i32 0), align 4
  br label %133

133:                                              ; preds = %111
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %100

136:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %148, %136
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %3, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* @worker_libevent, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @threads, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = call i32 @create_worker(i32 %142, %struct.TYPE_5__* %146)
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %137

151:                                              ; preds = %137
  %152 = call i32 @pthread_mutex_lock(i32* @init_lock)
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @wait_for_thread_registration(i32 %153)
  %155 = call i32 @pthread_mutex_unlock(i32* @init_lock)
  ret void
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @hashsize(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @setup_thread(%struct.TYPE_5__*) #1

declare dso_local i32 @create_worker(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @wait_for_thread_registration(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
