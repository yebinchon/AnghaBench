; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_inproc_shutdown.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_inproc_shutdown.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@THREAD_COUNT = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_PUB = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@routine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @THREAD_COUNT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca %struct.nn_thread, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @AF_SP, align 4
  %12 = load i32, i32* @NN_PUB, align 4
  %13 = call i32 @test_socket(i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SOCKET_ADDRESS, align 4
  %16 = call i32 @test_bind(i32 %14, i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %48, %0
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @THREAD_COUNT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %10, i64 %27
  %29 = load i32, i32* @routine, align 4
  %30 = call i32 @nn_thread_init(%struct.nn_thread* %28, i32 %29, i32* null)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %21

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %44, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @THREAD_COUNT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %10, i64 %41
  %43 = call i32 @nn_thread_term(%struct.nn_thread* %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @test_close(i32 %52)
  store i32 0, i32* %1, align 4
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_socket(i32, i32) #2

declare dso_local i32 @test_bind(i32, i32) #2

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #2

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #2

declare dso_local i32 @test_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
