; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_sequence1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_sequence1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMTHREADS = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@seqmap = common dso_local global i32* null, align 8
@func = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @NUMTHREADS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = call i64 @pthread_attr_init(i32* %4)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %15 = call i64 @pthread_attr_setdetachstate(i32* %4, i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %29, %0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NUMTHREADS, align 4
  %22 = add nsw i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32*, i32** @seqmap, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %19

32:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NUMTHREADS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i32, i32* @NUMTHREADS, align 4
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32*, i32** @seqmap, align 8
  %44 = call i32 (...) @pthread_self()
  %45 = call i64 @pthread_getunique_np(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %9, i64 %51
  %53 = load i32, i32* @func, align 4
  %54 = call i64 @pthread_create(i32* %52, i32* %4, i32 %53, i32* null)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %33

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* @NUMTHREADS, align 4
  %64 = call i32 @InterlockedExchangeAdd(i32 ptrtoint (i32* @done to i32), i64 0)
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @Sleep(i32 100)
  br label %62

68:                                               ; preds = %62
  %69 = call i32 @Sleep(i32 100)
  %70 = load i32*, i32** @seqmap, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %90, %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @NUMTHREADS, align 4
  %79 = add nsw i32 %78, 2
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32*, i32** @seqmap, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %76

93:                                               ; preds = %76
  store i32 0, i32* %1, align 4
  %94 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_attr_init(i32*) #2

declare dso_local i64 @pthread_attr_setdetachstate(i32*, i32) #2

declare dso_local i64 @pthread_getunique_np(i32) #2

declare dso_local i32 @pthread_self(...) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #2

declare dso_local i32 @InterlockedExchangeAdd(i32, i64) #2

declare dso_local i32 @Sleep(i32) #2

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
