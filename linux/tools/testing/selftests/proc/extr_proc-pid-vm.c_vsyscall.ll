; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-pid-vm.c_vsyscall.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-pid-vm.c_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.sigaction = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fork, errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@RLIMIT_CORE = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@sigaction_SIGSEGV = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@g_vsyscall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vsyscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsyscall() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = call i64 (...) @fork()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @exit(i32 1) #4
  unreachable

13:                                               ; preds = %0
  %14 = load i64, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = bitcast %struct.rlimit* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load i32, i32* @RLIMIT_CORE, align 4
  %19 = call i32 @setrlimit(i32 %18, %struct.rlimit* %3)
  %20 = call i32 @memset(%struct.sigaction* %4, i32 0, i32 8)
  %21 = load i32, i32* @SA_SIGINFO, align 4
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @sigaction_SIGSEGV, align 4
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @SIGSEGV, align 4
  %26 = call i32 @sigaction(i32 %25, %struct.sigaction* %4, i32* null)
  %27 = load volatile i32, i32* inttoptr (i64 -10485760 to i32*), align 4
  %28 = call i32 @exit(i32 0) #4
  unreachable

29:                                               ; preds = %13
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @waitpid(i64 %30, i32* %2, i32 0)
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @WIFEXITED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @WEXITSTATUS(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* @g_vsyscall, align 4
  br label %40

40:                                               ; preds = %39, %35, %29
  ret void
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
