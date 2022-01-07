; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_stress1.c_masterThread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_stress1.c_masterThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@timeout = common dso_local global i32 0, align 4
@startBarrier = common dso_local global i32 0, align 4
@control = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@signalsSent = common dso_local global i32 0, align 4
@timeoutCount = common dso_local global i64 0, align 8
@signalsTakenCount = common dso_local global i64 0, align 8
@bias = common dso_local global i32 0, align 4
@holdBarrier = common dso_local global i32 0, align 4
@readyBarrier = common dso_local global i32 0, align 4
@allExit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @masterThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @timeout, align 4
  %11 = call i32 @pthread_barrier_wait(i32* @startBarrier)
  br label %12

12:                                               ; preds = %76, %1
  %13 = call i64 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 2))
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @timeout, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 0), align 4
  %18 = call i64 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 2))
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @signalsSent, align 4
  %23 = load i32, i32* @timeout, align 4
  %24 = srem i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %12
  %27 = load i64, i64* @timeoutCount, align 8
  %28 = load i64, i64* @signalsTakenCount, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @bias, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @bias, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i64, i64* @timeoutCount, align 8
  %35 = load i64, i64* @signalsTakenCount, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @bias, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @bias, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* @bias, align 4
  %43 = load i32, i32* @timeout, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @bias, align 4
  %48 = load i32, i32* @timeout, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @timeout, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @timeout, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %12
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @timeout, align 4
  %58 = mul nsw i32 %57, 2
  %59 = srem i32 %56, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @timeout, align 4
  %61 = load i32, i32* @bias, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %62, %63
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @Sleep(i32 %66)
  %68 = call i64 @pthread_cond_signal(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 1))
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* @signalsSent, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @signalsSent, align 4
  %74 = call i32 @pthread_barrier_wait(i32* @holdBarrier)
  %75 = call i32 @pthread_barrier_wait(i32* @readyBarrier)
  br label %76

76:                                               ; preds = %54
  %77 = load i32, i32* @allExit, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %12, label %80

80:                                               ; preds = %76
  ret i8* null
}

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
