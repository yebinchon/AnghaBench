; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_term.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_term.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@worker = common dso_local global i32 0, align 4
@ETERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_thread, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @AF_SP, align 4
  %6 = load i32, i32* @NN_PAIR, align 4
  %7 = call i32 @test_socket(i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @test_close(i32 %8)
  %10 = load i32, i32* @worker, align 4
  %11 = call i32 @nn_thread_init(%struct.nn_thread* %4, i32 %10, i32* null)
  %12 = call i32 @nn_sleep(i32 100)
  %13 = call i32 (...) @nn_term()
  %14 = load i32, i32* @AF_SP, align 4
  %15 = load i32, i32* @NN_PAIR, align 4
  %16 = call i32 @nn_socket(i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, -1
  %19 = zext i1 %18 to i32
  %20 = call i32 @nn_assert(i32 %19)
  %21 = call i64 (...) @nn_errno()
  %22 = load i64, i64* @ETERM, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @errno_assert(i32 %24)
  %26 = call i32 @nn_thread_term(%struct.nn_thread* %4)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @nn_term(...) #1

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
