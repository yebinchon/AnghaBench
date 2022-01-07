; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-tar.c_ptrace_tm_spd_tar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-tar.c_ptrace_tm_spd_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@pptr = common dso_local global i32* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_spd_tar() #0 {
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
  %13 = call i32 @shmget(i32 %10, i32 12, i32 %12)
  store i32 %13, i32* @shm_id, align 4
  %14 = call i32 (...) @fork()
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @tm_spd_tar()
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i32, i32* @shm_id, align 4
  %21 = call i64 @shmat(i32 %20, i32* null, i32 0)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** @pptr, align 8
  %23 = load i32*, i32** @pptr, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** @pptr, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32*, i32** @pptr, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %30

37:                                               ; preds = %30
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @trace_tm_spd_tar(i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SIGTERM, align 4
  %45 = call i32 @kill(i32 %43, i32 %44)
  %46 = call i32 @shmdt(i32** @pptr)
  %47 = load i32, i32* @shm_id, align 4
  %48 = load i32, i32* @IPC_RMID, align 4
  %49 = call i32 @shmctl(i32 %47, i32 %48, i32* null)
  %50 = load i32, i32* @TEST_FAIL, align 4
  store i32 %50, i32* %1, align 4
  br label %79

51:                                               ; preds = %37
  %52 = call i32 @shmdt(i32** @pptr)
  %53 = call i32 @wait(i32* %4)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @shm_id, align 4
  %55 = load i32, i32* @IPC_RMID, align 4
  %56 = call i32 @shmctl(i32 %54, i32 %55, i32* null)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @TEST_FAIL, align 4
  store i32 %62, i32* %1, align 4
  br label %79

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @WIFEXITED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @WEXITSTATUS(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @TEST_FAIL, align 4
  br label %75

73:                                               ; preds = %67, %63
  %74 = load i32, i32* @TEST_PASS, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %1, align 4
  br label %79

77:                                               ; preds = %19
  %78 = load i32, i32* @TEST_PASS, align 4
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %77, %75, %60, %42
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @tm_spd_tar(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_spd_tar(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @shmdt(i32**) #1

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
