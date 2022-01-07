; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_mutex5.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_mutex5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_DEFAULT = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_NORMAL = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_ERRORCHECK = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_FAST_NP = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_RECURSIVE_NP = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_ERRORCHECK_NP = common dso_local global i64 0, align 8
@mxAttr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %3 = load i32, i32* @PTHREAD_MUTEX_DEFAULT, align 4
  %4 = call i64 @FOIL(i32 %3)
  %5 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp eq i64 %4, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @PTHREAD_MUTEX_DEFAULT, align 4
  %11 = call i64 @FOIL(i32 %10)
  %12 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @PTHREAD_MUTEX_DEFAULT, align 4
  %18 = call i64 @FOIL(i32 %17)
  %19 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %25 = call i64 @FOIL(i32 %24)
  %26 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %32 = call i64 @FOIL(i32 %31)
  %33 = load i64, i64* @PTHREAD_MUTEX_FAST_NP, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %38 = call i64 @FOIL(i32 %37)
  %39 = load i64, i64* @PTHREAD_MUTEX_RECURSIVE_NP, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %44 = call i64 @FOIL(i32 %43)
  %45 = load i64, i64* @PTHREAD_MUTEX_ERRORCHECK_NP, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = call i64 @pthread_mutexattr_init(i32* @mxAttr)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = call i64 @pthread_mutexattr_gettype(i32* @mxAttr, i32* %2)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @FOIL(i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_gettype(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
