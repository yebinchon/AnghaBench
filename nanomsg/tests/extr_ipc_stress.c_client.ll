; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ipc_stress.c_client.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ipc_stress.c_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_LOOPS = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_PUSH = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = srem i64 %11, 26
  %13 = add nsw i64 65, %12
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 97, i8* %16, align 1
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %59, %1
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @TEST_LOOPS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32, i32* @AF_SP, align 4
  %28 = load i32, i32* @NN_PUSH, align 4
  %29 = call i32 @nn_socket(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = srem i32 %30, 26
  %32 = add nsw i32 97, %31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @nn_assert(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SOCKET_ADDRESS, align 4
  %41 = call i64 @nn_connect(i32 %39, i32 %40)
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @nn_assert(i32 %43)
  %45 = call i32 @nn_sleep(i32 50)
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @nn_send(i32 %46, i8* %47, i64 %48, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = call i32 @nn_sleep(i32 100)
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @nn_assert(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @nn_close(i32 %57)
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %22

62:                                               ; preds = %22
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i64 @nn_connect(i32, i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @nn_send(i32, i8*, i64, i32) #1

declare dso_local i32 @nn_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
