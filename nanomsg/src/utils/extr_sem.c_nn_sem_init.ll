; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_sem.c_nn_sem_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_sem.c_nn_sem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sem = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sem_init(%struct.nn_sem* %0) #0 {
  %2 = alloca %struct.nn_sem*, align 8
  %3 = alloca i32, align 4
  store %struct.nn_sem* %0, %struct.nn_sem** %2, align 8
  %4 = load %struct.nn_sem*, %struct.nn_sem** %2, align 8
  %5 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %4, i32 0, i32 2
  %6 = call i32 @pthread_mutex_init(i32* %5, i32* null)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @errnum_assert(i32 %9, i32 %10)
  %12 = load %struct.nn_sem*, %struct.nn_sem** %2, align 8
  %13 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %12, i32 0, i32 1
  %14 = call i32 @pthread_cond_init(i32* %13, i32* null)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @errnum_assert(i32 %17, i32 %18)
  %20 = load %struct.nn_sem*, %struct.nn_sem** %2, align 8
  %21 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret void
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
