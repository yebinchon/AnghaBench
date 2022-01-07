; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust5.c_owner.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust5.c_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32* null, align 8
@lockCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @owner(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32*, i32** @mutex, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = call i64 @pthread_mutex_lock(i32* %4)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @lockCount, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @lockCount, align 4
  %11 = load i32*, i32** @mutex, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = call i64 @pthread_mutex_lock(i32* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @lockCount, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @lockCount, align 4
  %19 = load i32*, i32** @mutex, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = call i64 @pthread_mutex_lock(i32* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @lockCount, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @lockCount, align 4
  ret i8* null
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
