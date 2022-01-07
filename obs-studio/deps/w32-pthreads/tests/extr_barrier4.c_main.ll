; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_barrier4.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_barrier4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMTHREADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Barrier height = %d\0A\00", align 1
@serialThreadCount = common dso_local global i32 0, align 4
@barrier = common dso_local global i32 0, align 4
@func = common dso_local global i32 0, align 4
@mx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @NUMTHREADS, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %65, %0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NUMTHREADS, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* @serialThreadCount, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @pthread_barrier_init(i32* @barrier, i32* null, i32 %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %36, %15
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %10, i64 %29
  %31 = load i32, i32* @func, align 4
  %32 = call i64 @pthread_create(i32* %30, i32* null, i32 %31, i32* null)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %23

39:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %10, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pthread_join(i32 %48, i32* null)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load i32, i32* @serialThreadCount, align 4
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = call i64 @pthread_barrier_destroy(i32* @barrier)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %11

68:                                               ; preds = %11
  %69 = call i64 @pthread_mutex_destroy(i32* @mx)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  store i32 0, i32* %1, align 4
  %73 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_barrier_init(i32*, i32*, i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #2

declare dso_local i64 @pthread_join(i32, i32*) #2

declare dso_local i64 @pthread_barrier_destroy(i32*) #2

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
