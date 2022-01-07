; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar1_2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar1_2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_LOOPS = common dso_local global i32 0, align 4
@NUM_CV = common dso_local global i32 0, align 4
@cv = common dso_local global i32** null, align 8
@pthread_timechange_handler_np = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* inttoptr (i64 -1 to i8*), i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %78, %0
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NUM_LOOPS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %81

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NUM_CV, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32**, i32*** @cv, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = call i64 @pthread_cond_init(i32** %20, i32* null)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* @NUM_CV, align 4
  store i32 %29, i32* %3, align 4
  %30 = call i64 @time(i32* null)
  %31 = trunc i64 %30 to i32
  %32 = call i32 @srand(i32 %31)
  %33 = load i32, i32* @pthread_timechange_handler_np, align 4
  %34 = call i64 @pthread_create(i32* %6, i32* null, i32 %33, i32* null)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %63, %28
  %39 = load i32, i32* @NUM_CV, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 (...) @rand()
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @RAND_MAX, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %2, align 4
  %45 = load i32**, i32*** @cv, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  %54 = load i32**, i32*** @cv, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = call i64 @pthread_cond_destroy(i32** %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %51, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %38, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @pthread_join(i32 %67, i8** %5)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %7

81:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_cond_init(i32**, i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @pthread_cond_destroy(i32**) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
