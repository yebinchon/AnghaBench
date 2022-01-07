; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-tar.c_ptrace_tm_tar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-tar.c_ptrace_tm_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@pptr = common dso_local global i64* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_tar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @have_htm()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @SKIP_IF(i32 %8)
  %10 = load i32, i32* @IPC_PRIVATE, align 4
  %11 = load i32, i32* @IPC_CREAT, align 4
  %12 = or i32 511, %11
  %13 = call i32 @shmget(i32 %10, i32 8, i32 %12)
  store i32 %13, i32* @shm_id, align 4
  %14 = call i32 (...) @fork()
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @tm_tar()
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i32, i32* @shm_id, align 4
  %21 = call i64 @shmat(i32 %20, i32* null, i32 0)
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** @pptr, align 8
  %23 = load i64*, i64** @pptr, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %34, %27
  %29 = load i64*, i64** @pptr, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %28

35:                                               ; preds = %28
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @trace_tm_tar(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SIGTERM, align 4
  %43 = call i32 @kill(i32 %41, i32 %42)
  %44 = call i32 @shmdt(i64** @pptr)
  %45 = load i32, i32* @shm_id, align 4
  %46 = load i32, i32* @IPC_RMID, align 4
  %47 = call i32 @shmctl(i32 %45, i32 %46, i32* null)
  %48 = load i32, i32* @TEST_FAIL, align 4
  store i32 %48, i32* %1, align 4
  br label %77

49:                                               ; preds = %35
  %50 = call i32 @shmdt(i64** @pptr)
  %51 = call i32 @wait(i32* %4)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @shm_id, align 4
  %53 = load i32, i32* @IPC_RMID, align 4
  %54 = call i32 @shmctl(i32 %52, i32 %53, i32* null)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @TEST_FAIL, align 4
  store i32 %60, i32* %1, align 4
  br label %77

61:                                               ; preds = %49
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @WIFEXITED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @WEXITSTATUS(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @TEST_FAIL, align 4
  br label %73

71:                                               ; preds = %65, %61
  %72 = load i32, i32* @TEST_PASS, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %1, align 4
  br label %77

75:                                               ; preds = %19
  %76 = load i32, i32* @TEST_PASS, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %75, %73, %58, %40
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @tm_tar(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_tar(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @shmdt(i64**) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 958}
