; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_barrier_wait.c_pthread_barrier_wait.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_barrier_wait.c_pthread_barrier_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@PTW32_OBJECT_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_barrier_wait(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %8 = icmp eq %struct.TYPE_3__** %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i64, i64* @PTW32_OBJECT_INVALID, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  %14 = icmp eq %struct.TYPE_3__* %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = call i32 @ptw32_mcs_lock_acquire(i32* %20, i32* %6)
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @ptw32_mcs_node_transfer(i32* %31, i32* %6)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @sem_post_multiple(i32* %39, i32 %43)
  br label %46

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %44, %37 ], [ 0, %45 ]
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %17
  %49 = call i32 @ptw32_mcs_lock_release(i32* %6)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = call i32 @ptw32_semwait(i32* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = ptrtoint i64* %55 to i32
  %57 = call i64 @PTW32_INTERLOCKED_INCREMENT_LONG(i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = call i32 @ptw32_mcs_lock_release(i32* %65)
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_node_transfer(i32*, i32*) #1

declare dso_local i32 @sem_post_multiple(i32*, i32) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @ptw32_semwait(i32*) #1

declare dso_local i64 @PTW32_INTERLOCKED_INCREMENT_LONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
