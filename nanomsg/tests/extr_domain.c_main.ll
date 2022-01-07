; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_domain.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_domain.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_DOMAIN = common dso_local global i32 0, align 4
@NN_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @AF_SP, align 4
  %7 = load i32, i32* @NN_PAIR, align 4
  %8 = call i32 @test_socket(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  store i64 4, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NN_SOL_SOCKET, align 4
  %11 = load i32, i32* @NN_DOMAIN, align 4
  %12 = call i32 @nn_getsockopt(i32 %9, i32 %10, i32 %11, i32* %4, i64* %5)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @errno_assert(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @nn_assert(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AF_SP, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @nn_assert(i32 %24)
  store i64 4, i64* %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @NN_SOL_SOCKET, align 4
  %28 = load i32, i32* @NN_PROTOCOL, align 4
  %29 = call i32 @nn_getsockopt(i32 %26, i32 %27, i32 %28, i32* %4, i64* %5)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @errno_assert(i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 4
  %36 = zext i1 %35 to i32
  %37 = call i32 @nn_assert(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NN_PAIR, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @nn_assert(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @test_close(i32 %43)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
