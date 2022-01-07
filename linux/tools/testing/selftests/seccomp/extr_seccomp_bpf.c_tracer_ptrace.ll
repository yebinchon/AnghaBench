; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_bpf.c_tracer_ptrace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_bpf.c_tracer_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__test_metadata = type { i32 }

@tracer_ptrace.entry = internal global i32 0, align 4
@PTRACE_GETEVENTMSG = common dso_local global i32 0, align 4
@PTRACE_EVENTMSG_SYSCALL_ENTRY = common dso_local global i32 0, align 4
@PTRACE_EVENTMSG_SYSCALL_EXIT = common dso_local global i32 0, align 4
@__NR_getpid = common dso_local global i32 0, align 4
@__NR_getppid = common dso_local global i32 0, align 4
@__NR_gettid = common dso_local global i32 0, align 4
@__NR_openat = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracer_ptrace(%struct.__test_metadata* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.__test_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.__test_metadata* %0, %struct.__test_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @tracer_ptrace.entry, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @tracer_ptrace.entry, align 4
  %16 = load i32, i32* @PTRACE_GETEVENTMSG, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ptrace(i32 %16, i32 %17, i32* null, i64* %11)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 @EXPECT_EQ(i32 0, i64 %20)
  %22 = load i32, i32* @tracer_ptrace.entry, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @PTRACE_EVENTMSG_SYSCALL_ENTRY, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @PTRACE_EVENTMSG_SYSCALL_EXIT, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @EXPECT_EQ(i32 %29, i64 %30)
  %32 = load i32, i32* @tracer_ptrace.entry, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %65

35:                                               ; preds = %28
  %36 = load %struct.__test_metadata*, %struct.__test_metadata** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @get_syscall(%struct.__test_metadata* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @__NR_getpid, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.__test_metadata*, %struct.__test_metadata** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @__NR_getppid, align 4
  %46 = call i32 @change_syscall(%struct.__test_metadata* %43, i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @__NR_gettid, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.__test_metadata*, %struct.__test_metadata** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @change_syscall(%struct.__test_metadata* %52, i32 %53, i32 -1, i32 45000)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @__NR_openat, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.__test_metadata*, %struct.__test_metadata** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ESRCH, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @change_syscall(%struct.__test_metadata* %60, i32 %61, i32 -1, i32 %63)
  br label %65

65:                                               ; preds = %34, %59, %55
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32*, i64*) #1

declare dso_local i32 @EXPECT_EQ(i32, i64) #1

declare dso_local i32 @get_syscall(%struct.__test_metadata*, i32) #1

declare dso_local i32 @change_syscall(%struct.__test_metadata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
