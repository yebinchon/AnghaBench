; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_spin3.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_spin3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wasHere = common dso_local global i32 0, align 4
@spin = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@unlocker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @wasHere, align 4
  %3 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %4 = call i64 @pthread_spin_init(i32* @spin, i32 %3)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i64 @pthread_spin_lock(i32* @spin)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @unlocker, align 4
  %13 = call i64 @pthread_create(i32* %2, i32* null, i32 %12, i8* null)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @pthread_join(i32 %17, i32* null)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i64 @pthread_spin_unlock(i32* @spin)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 @pthread_spin_destroy(i32* @spin)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @wasHere, align 4
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_spin_init(i32*, i32) #1

declare dso_local i64 @pthread_spin_lock(i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i64 @pthread_spin_unlock(i32*) #1

declare dso_local i64 @pthread_spin_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
