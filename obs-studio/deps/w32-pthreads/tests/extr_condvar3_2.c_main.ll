; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@NUMTHREADS = common dso_local global i32 0, align 4
@cv = common dso_local global %struct.TYPE_10__* null, align 8
@mutex = common dso_local global i32 0, align 4
@abstime2 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@abstime = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@mythread = common dso_local global i32 0, align 4
@awoken = common dso_local global i32 0, align 4
@timedout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Result = %s\0A\00", align 1
@error_string = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"\09WaitersBlocked = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09WaitersGone = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09WaitersToUnblock = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @NUMTHREADS, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i8* null, i8** %5, align 8
  store i32 1000000, i32* %7, align 4
  %14 = call i64 @pthread_cond_init(%struct.TYPE_10__** @cv, i32* null)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i64 @pthread_mutex_init(i32* @mutex, i32* null)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 @PTW32_FTIME(%struct.TYPE_9__* %6)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 5
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @abstime2, i32 0, i32 0), align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @abstime, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 1000000, %27
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @abstime2, i32 0, i32 1), align 8
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @abstime, i32 0, i32 1), align 8
  %29 = call i64 @pthread_mutex_lock(i32* @mutex)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %49, %0
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @NUMTHREADS, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %13, i64 %39
  %41 = load i32, i32* @mythread, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i64 @pthread_create(i32* %40, i32* null, i32 %41, i8* %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %33

52:                                               ; preds = %33
  %53 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %87, %52
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @NUMTHREADS, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %13, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @pthread_join(i32 %65, i8** %5)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = call i32 @InterlockedExchangeAdd(i32 ptrtoint (i32* @awoken to i32), i64 0)
  %78 = load i32, i32* @NUMTHREADS, align 4
  %79 = sdiv i32 %78, 3
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %61
  %82 = call i64 @pthread_cond_broadcast(%struct.TYPE_10__** @cv)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %81, %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load i32, i32* @awoken, align 4
  %92 = load i32, i32* @NUMTHREADS, align 4
  %93 = load i32, i32* @timedout, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp eq i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = call i32 @pthread_cond_destroy(%struct.TYPE_10__** @cv)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %90
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8**, i8*** @error_string, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @stderr, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cv, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @stderr, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cv, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @fprintf(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @stderr, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cv, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 @fflush(i32 %124)
  br label %126

126:                                              ; preds = %101, %90
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  store i32 0, i32* %1, align 4
  %135 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %1, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_cond_init(%struct.TYPE_10__**, i32*) #2

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_9__*) #2

declare dso_local i64 @pthread_mutex_lock(i32*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_mutex_unlock(i32*) #2

declare dso_local i64 @pthread_join(i32, i8**) #2

declare dso_local i32 @InterlockedExchangeAdd(i32, i64) #2

declare dso_local i64 @pthread_cond_broadcast(%struct.TYPE_10__**) #2

declare dso_local i32 @pthread_cond_destroy(%struct.TYPE_10__**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @pthread_mutex_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
