; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust5.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_ROBUST = common dso_local global i32 0, align 4
@lockCount = common dso_local global i32 0, align 4
@mutex = common dso_local global i32* null, align 8
@owner = common dso_local global i32 0, align 4
@inheritor = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i64 @pthread_mutexattr_init(i32* %4)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @PTHREAD_MUTEX_ROBUST, align 4
  %10 = call i64 @pthread_mutexattr_setrobust(i32* %4, i32 %9)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i32 0, i32* @lockCount, align 4
  %14 = load i32*, i32** @mutex, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i64 @pthread_mutex_init(i32* %15, i32* %4)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** @mutex, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i64 @pthread_mutex_init(i32* %21, i32* %4)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** @mutex, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = call i64 @pthread_mutex_init(i32* %27, i32* %4)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @owner, align 4
  %33 = call i64 @pthread_create(i32* %2, i32* null, i32 %32, i32* null)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @pthread_join(i32 %37, i32* null)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @inheritor, align 4
  %43 = call i64 @pthread_create(i32* %3, i32* null, i32 %42, i32* null)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @pthread_join(i32 %47, i32* null)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* @lockCount, align 4
  %53 = icmp eq i32 %52, 6
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** @mutex, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i64 @pthread_mutex_lock(i32* %57)
  %59 = load i64, i64* @EOWNERDEAD, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** @mutex, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call i64 @pthread_mutex_consistent(i32* %64)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** @mutex, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i64 @pthread_mutex_unlock(i32* %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** @mutex, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i64 @pthread_mutex_destroy(i32* %76)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32*, i32** @mutex, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = call i64 @pthread_mutex_lock(i32* %82)
  %84 = load i64, i64* @EOWNERDEAD, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32*, i32** @mutex, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = call i64 @pthread_mutex_consistent(i32* %89)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** @mutex, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = call i64 @pthread_mutex_unlock(i32* %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** @mutex, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = call i64 @pthread_mutex_destroy(i32* %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32*, i32** @mutex, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = call i64 @pthread_mutex_lock(i32* %107)
  %109 = load i64, i64* @EOWNERDEAD, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32*, i32** @mutex, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = call i64 @pthread_mutex_consistent(i32* %114)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32*, i32** @mutex, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = call i64 @pthread_mutex_unlock(i32* %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32*, i32** @mutex, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = call i64 @pthread_mutex_destroy(i32* %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = call i64 @pthread_mutexattr_destroy(i32* %4)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_setrobust(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_consistent(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
