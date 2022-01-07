; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.timespec = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@cv = common dso_local global %struct.TYPE_8__* null, align 8
@mutex = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Result = %s\0A\00", align 1
@error_string = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"\09WaitersBlocked = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09WaitersGone = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09WaitersToUnblock = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  store i32 1000000, i32* %4, align 4
  %7 = call i64 @pthread_cond_init(%struct.TYPE_8__** @cv, i32* null)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i64 @pthread_mutex_init(i32* @mutex, i32* null)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i64 @pthread_mutex_lock(i32* @mutex)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @PTW32_FTIME(%struct.TYPE_7__* %3)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 1000000, %24
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = call i64 @pthread_cond_timedwait(%struct.TYPE_8__** @cv, i32* @mutex, %struct.timespec* %2)
  %31 = load i64, i64* @ETIMEDOUT, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 @pthread_cond_destroy(%struct.TYPE_8__** @cv)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %0
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** @error_string, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @fflush(i32 %65)
  br label %67

67:                                               ; preds = %42, %0
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_cond_init(%struct.TYPE_8__**, i32*) #2

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i64 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_7__*) #2

declare dso_local i64 @pthread_cond_timedwait(%struct.TYPE_8__**, i32*, %struct.timespec*) #2

declare dso_local i64 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @pthread_cond_destroy(%struct.TYPE_8__**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @fflush(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
