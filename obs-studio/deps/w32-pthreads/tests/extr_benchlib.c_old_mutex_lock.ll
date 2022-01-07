; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchlib.c_old_mutex_lock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchlib.c_old_mutex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTW32_OBJECT_AUTO_INIT = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @old_mutex_lock(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = icmp eq %struct.TYPE_3__** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* @PTW32_OBJECT_AUTO_INIT, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_3__*
  %19 = icmp eq %struct.TYPE_3__* %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i32 @EnterCriticalSection(i32* %34)
  br label %49

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @INFINITE, align 4
  %41 = call i64 @WaitForSingleObject(i64 %39, i32 %40)
  %42 = load i64, i64* @WAIT_OBJECT_0, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 0, %44 ], [ %46, %45 ]
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %32
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
