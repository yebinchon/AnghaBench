; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_stress1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_stress1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@startBarrier = common dso_local global i32 0, align 4
@readyBarrier = common dso_local global i32 0, align 4
@holdBarrier = common dso_local global i32 0, align 4
@master = common dso_local global i32 0, align 4
@masterThread = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@slave = common dso_local global i32 0, align 4
@slaveThread = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@allExit = common dso_local global i64 0, align 8
@ITERATIONS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Signals sent = %d\0AWait timeouts = %d\0ASignals taken = %d\0ABias = %d\0ATimeout = %d\0A\00", align 1
@signalsSent = common dso_local global i32 0, align 4
@timeoutCount = common dso_local global i32 0, align 4
@signalsTakenCount = common dso_local global i32 0, align 4
@bias = common dso_local global i64 0, align 8
@control = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i64 @pthread_barrier_init(i32* @startBarrier, i32* null, i32 3)
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = call i64 @pthread_barrier_init(i32* @readyBarrier, i32* null, i32 3)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i64 @pthread_barrier_init(i32* @holdBarrier, i32* null, i32 3)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @masterThread, align 4
  %16 = load i32, i32* @timeout, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i64 @pthread_create(i32* @master, i32* null, i32 %15, i8* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* @slaveThread, align 4
  %24 = call i64 @pthread_create(i32* @slave, i32* null, i32 %23, i8* null)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* @allExit, align 8
  %29 = call i32 @pthread_barrier_wait(i32* @startBarrier)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %43, %0
  %31 = load i64, i64* @allExit, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call i32 @pthread_barrier_wait(i32* @holdBarrier)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @ITERATIONS, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* @allExit, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = call i32 @pthread_barrier_wait(i32* @readyBarrier)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %2, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load i32, i32* @slave, align 4
  %48 = call i64 @pthread_join(i32 %47, i32* null)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* @master, align 4
  %53 = call i64 @pthread_join(i32 %52, i32* null)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* @signalsSent, align 4
  %58 = load i32, i32* @timeoutCount, align 4
  %59 = load i32, i32* @signalsTakenCount, align 4
  %60 = load i64, i64* @bias, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @timeout, align 4
  %63 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %61, i32 %62)
  %64 = call i64 @pthread_barrier_destroy(i32* @holdBarrier)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = call i64 @pthread_barrier_destroy(i32* @readyBarrier)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = call i64 @pthread_barrier_destroy(i32* @startBarrier)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = call i64 @pthread_cond_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 1))
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = call i64 @pthread_mutex_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 0))
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_barrier_init(i32*, i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @pthread_barrier_destroy(i32*) #1

declare dso_local i64 @pthread_cond_destroy(i32*) #1

declare dso_local i64 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
