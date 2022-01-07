; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_once2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_once2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NUM_THREADS = common dso_local global i32 0, align 4
@NUM_ONCE = common dso_local global i32 0, align 4
@numThreads = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@numOnce = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@o = common dso_local global i32 0, align 4
@once = common dso_local global i32* null, align 8
@mythread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Join failed for [thread,once] = [%d,%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @NUM_THREADS, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @NUM_ONCE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = mul nuw i64 %8, %10
  %13 = alloca i32, i64 %12, align 16
  store i64 %8, i64* %3, align 8
  store i64 %10, i64* %4, align 8
  %14 = call i32 @InitializeCriticalSection(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @numThreads, i32 0, i32 1))
  %15 = call i32 @InitializeCriticalSection(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @numOnce, i32 0, i32 1))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %52, %0
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NUM_ONCE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i32, i32* @o, align 4
  %22 = load i32*, i32** @once, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %48, %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NUM_THREADS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, %10
  %35 = getelementptr inbounds i32, i32* %13, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* @mythread, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i64 @pthread_create(i32* %38, i32* null, i32 %39, i8* %42)
  %44 = icmp ne i64 0, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = call i32 (...) @sched_yield()
  br label %31

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %26

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %16

55:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NUM_ONCE, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @NUM_THREADS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %10
  %69 = getelementptr inbounds i32, i32* %13, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @pthread_join(i32 %73, i32* null)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %65
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %61

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @numOnce, i32 0, i32 0), align 4
  %90 = load i32, i32* @NUM_ONCE, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @numThreads, i32 0, i32 0), align 4
  %95 = load i32, i32* @NUM_THREADS, align 4
  %96 = load i32, i32* @NUM_ONCE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = icmp eq i32 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = call i32 @DeleteCriticalSection(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @numOnce, i32 0, i32 1))
  %102 = call i32 @DeleteCriticalSection(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @numThreads, i32 0, i32 1))
  store i32 0, i32* %1, align 4
  %103 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @InitializeCriticalSection(i32*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @sched_yield(...) #2

declare dso_local i64 @pthread_join(i32, i32*) #2

declare dso_local i32 @printf(i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @DeleteCriticalSection(i32*) #2

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
