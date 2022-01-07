; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-gpr.c_ptrace_tm_spd_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-gpr.c_ptrace_tm_spd_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global i32* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_spd_gpr() #0 {
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
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @TEST_FAIL, align 4
  store i32 %19, i32* %1, align 4
  br label %89

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @tm_spd_gpr()
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %25
  %29 = load i32, i32* @shm_id, align 4
  %30 = call i64 @shmat(i32 %29, i32* null, i32 0)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** @pptr, align 8
  %32 = load i32*, i32** @pptr, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** @pptr, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %42, %28
  %37 = load i32*, i32** @pptr, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %36

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @trace_tm_spd_gpr(i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SIGTERM, align 4
  %51 = call i32 @kill(i32 %49, i32 %50)
  %52 = load i32*, i32** @pptr, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @shmdt(i8* %53)
  %55 = load i32, i32* @shm_id, align 4
  %56 = load i32, i32* @IPC_RMID, align 4
  %57 = call i32 @shmctl(i32 %55, i32 %56, i32* null)
  %58 = load i32, i32* @TEST_FAIL, align 4
  store i32 %58, i32* %1, align 4
  br label %89

59:                                               ; preds = %43
  %60 = load i32*, i32** @pptr, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = call i32 @shmdt(i8* %61)
  %63 = call i32 @wait(i32* %4)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @shm_id, align 4
  %65 = load i32, i32* @IPC_RMID, align 4
  %66 = call i32 @shmctl(i32 %64, i32 %65, i32* null)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @TEST_FAIL, align 4
  store i32 %72, i32* %1, align 4
  br label %89

73:                                               ; preds = %59
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @WIFEXITED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @WEXITSTATUS(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @TEST_FAIL, align 4
  br label %85

83:                                               ; preds = %77, %73
  %84 = load i32, i32* @TEST_PASS, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %1, align 4
  br label %89

87:                                               ; preds = %25
  %88 = load i32, i32* @TEST_PASS, align 4
  store i32 %88, i32* %1, align 4
  br label %89

89:                                               ; preds = %87, %85, %70, %48, %17
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tm_spd_gpr(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_spd_gpr(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @shmdt(i8*) #1

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
!2 = !{i32 1050}
