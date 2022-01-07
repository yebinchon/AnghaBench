; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_semwait.c_ptw32_semwait.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_semwait.c_ptw32_semwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptw32_semwait(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** @EINVAL, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @pthread_mutex_unlock(i32* %25)
  %27 = load i8*, i8** @EINVAL, align 8
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %58

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = call i32 @pthread_mutex_unlock(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INFINITE, align 4
  %44 = call i64 @WaitForSingleObject(i32 %42, i32 %43)
  %45 = load i64, i64* @WAIT_OBJECT_0, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %58

48:                                               ; preds = %39
  br label %50

49:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %58

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %14
  br label %52

52:                                               ; preds = %51, %11
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %58

57:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %49, %47, %23
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
