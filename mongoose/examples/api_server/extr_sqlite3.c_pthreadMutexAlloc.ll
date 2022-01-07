; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pthreadMutexAlloc.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pthreadMutexAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@pthreadMutexAlloc.staticMutexes = internal constant [3 x %struct.TYPE_6__] [%struct.TYPE_6__ { i32 130, i32 130 }, %struct.TYPE_6__ { i32 130, i32 130 }, %struct.TYPE_6__ { i32 130, i32 130 }], align 16
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32)* @pthreadMutexAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @pthreadMutexAlloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %28 [
    i32 128, label %6
    i32 129, label %19
  ]

6:                                                ; preds = %1
  %7 = call %struct.TYPE_6__* @sqlite3MallocZero(i32 8)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = call i32 @pthread_mutexattr_init(i32* %4)
  %12 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %13 = call i32 @pthread_mutexattr_settype(i32* %4, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @pthread_mutex_init(i32* %15, i32* %4)
  %17 = call i32 @pthread_mutexattr_destroy(i32* %4)
  br label %18

18:                                               ; preds = %10, %6
  br label %44

19:                                               ; preds = %1
  %20 = call %struct.TYPE_6__* @sqlite3MallocZero(i32 8)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @pthread_mutex_init(i32* %25, i32* null)
  br label %27

27:                                               ; preds = %23, %19
  br label %44

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp sge i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = sub nsw i32 %34, 2
  %36 = call i32 @ArraySize(%struct.TYPE_6__* getelementptr inbounds ([3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* @pthreadMutexAlloc.staticMutexes, i64 0, i64 0))
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* @pthreadMutexAlloc.staticMutexes, i64 0, i64 %42
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %3, align 8
  br label %44

44:                                               ; preds = %28, %27, %18
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %45
}

declare dso_local %struct.TYPE_6__* @sqlite3MallocZero(i32) #1

declare dso_local i32 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
