; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_barrier5.c_func.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_barrier5.c_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@totalThreadCrossings = common dso_local global i32 0, align 4
@barrier = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Barrier failed: result = %s\0A\00", align 1
@error_string = common dso_local global i8** null, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = call i64 @InterlockedIncrement(i32 ptrtoint (i32* @totalThreadCrossings to i32))
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = call i32 @pthread_barrier_wait(i32* @barrier)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8**, i8*** @error_string, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fflush(i32 %29)
  store i8* null, i8** %2, align 8
  br label %37

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %16
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i64 @InterlockedIncrement(i32) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
