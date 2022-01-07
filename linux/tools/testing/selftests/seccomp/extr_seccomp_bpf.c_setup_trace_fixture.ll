; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_bpf.c_setup_trace_fixture.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_bpf.c_setup_trace_fixture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__test_metadata = type { i32 }

@SIGALRM = common dso_local global i32 0, align 4
@cont_handler = common dso_local global i32 0, align 4
@__NR_exit = common dso_local global i32 0, align 4
@PR_SET_PTRACER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @setup_trace_fixture(%struct.__test_metadata* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.__test_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.__test_metadata* %0, %struct.__test_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i64 (...) @getpid()
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %15 = call i32 @pipe(i32* %14)
  %16 = call i32 @ASSERT_EQ(i32 0, i32 %15)
  %17 = call i64 (...) @fork()
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @ASSERT_LE(i32 0, i64 %18)
  %20 = load i32, i32* @SIGALRM, align 4
  %21 = load i32, i32* @cont_handler, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load %struct.__test_metadata*, %struct.__test_metadata** %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @start_tracer(%struct.__test_metadata* %29, i32 %31, i64 %32, i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* @__NR_exit, align 4
  %38 = call i32 @syscall(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %25, %4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* @PR_SET_PTRACER, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @prctl(i32 %43, i64 %44, i32 0, i32 0, i32 0)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @read(i32 %47, i8* %9, i32 1)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i64, i64* %11, align 8
  ret i64 %52
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @ASSERT_LE(i32, i64) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @start_tracer(%struct.__test_metadata*, i32, i64, i32, i8*, i32) #1

declare dso_local i32 @syscall(i32, i32) #1

declare dso_local i32 @prctl(i32, i64, i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
