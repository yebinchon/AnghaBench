; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar2_1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar2_1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@NUMTHREADS = common dso_local global i32 0, align 4
@cv = common dso_local global %struct.TYPE_8__* null, align 8
@mutex = common dso_local global i32 0, align 4
@abstime = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@mythread = common dso_local global i32 0, align 4
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
  %6 = alloca %struct.TYPE_7__, align 8
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
  %14 = call i64 @pthread_cond_init(%struct.TYPE_8__** @cv, i32* null)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i64 @pthread_mutex_init(i32* @mutex, i32* null)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 @PTW32_FTIME(%struct.TYPE_7__* %6)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @abstime, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 1000000, %26
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @abstime, i32 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @abstime, i32 0, i32 0), align 8
  %29 = add nsw i64 %28, 5
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @abstime, i32 0, i32 0), align 8
  %30 = call i64 @pthread_mutex_lock(i32* @mutex)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %50, %0
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @NUMTHREADS, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %13, i64 %40
  %42 = load i32, i32* @mythread, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i64 @pthread_create(i32* %41, i32* null, i32 %42, i8* %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %34

53:                                               ; preds = %34
  %54 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %78, %53
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @NUMTHREADS, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %13, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pthread_join(i32 %66, i8** %5)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %58

81:                                               ; preds = %58
  %82 = call i32 @pthread_cond_destroy(%struct.TYPE_8__** @cv)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8**, i8*** @error_string, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @stderr, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @stderr, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @fprintf(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 @fflush(i32 %108)
  br label %110

110:                                              ; preds = %85, %81
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  store i32 0, i32* %1, align 4
  %115 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_cond_init(%struct.TYPE_8__**, i32*) #2

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_7__*) #2

declare dso_local i64 @pthread_mutex_lock(i32*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_mutex_unlock(i32*) #2

declare dso_local i64 @pthread_join(i32, i8**) #2

declare dso_local i32 @pthread_cond_destroy(%struct.TYPE_8__**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @fflush(i32) #2

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
