; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar1_1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar1_1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CV = common dso_local global i32 0, align 4
@cv = common dso_local global i32** null, align 8
@RAND_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @NUM_CV, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = call i8* @pthread_timechange_handler_np(i32* null)
  %10 = icmp eq i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32**, i32*** @cv, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = call i64 @pthread_cond_init(i32** %16, i32* null)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32, i32* @NUM_CV, align 4
  store i32 %25, i32* %3, align 4
  %26 = call i64 @time(i32* null)
  %27 = trunc i64 %26 to i32
  %28 = call i32 @srand(i32 %27)
  br label %29

29:                                               ; preds = %58, %24
  %30 = load i32, i32* @NUM_CV, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 (...) @rand()
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @RAND_MAX, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %2, align 4
  %36 = load i32**, i32*** @cv, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %29
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  %45 = load i32**, i32*** @cv, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = call i64 @pthread_cond_destroy(i32** %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = call i8* @pthread_timechange_handler_np(i32* null)
  %54 = icmp eq i8* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %42, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %29, label %61

61:                                               ; preds = %58
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @pthread_timechange_handler_np(i32*) #1

declare dso_local i64 @pthread_cond_init(i32**, i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @pthread_cond_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
