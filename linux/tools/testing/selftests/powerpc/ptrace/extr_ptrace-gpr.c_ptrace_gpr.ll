; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-gpr.c_ptrace_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-gpr.c_ptrace_gpr.c"
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
define dso_local i32 @ptrace_gpr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @IPC_PRIVATE, align 4
  %6 = load i32, i32* @IPC_CREAT, align 4
  %7 = or i32 511, %6
  %8 = call i32 @shmget(i32 %5, i32 8, i32 %7)
  store i32 %8, i32* @shm_id, align 4
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TEST_FAIL, align 4
  store i32 %14, i32* %1, align 4
  br label %82

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @gpr()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %20
  %24 = load i32, i32* @shm_id, align 4
  %25 = call i64 @shmat(i32 %24, i32* null, i32 0)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** @pptr, align 8
  br label %27

27:                                               ; preds = %33, %23
  %28 = load i32*, i32** @pptr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %27

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @trace_gpr(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @SIGTERM, align 4
  %42 = call i32 @kill(i32 %40, i32 %41)
  %43 = load i32*, i32** @pptr, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = call i32 @shmdt(i8* %44)
  %46 = load i32, i32* @shm_id, align 4
  %47 = load i32, i32* @IPC_RMID, align 4
  %48 = call i32 @shmctl(i32 %46, i32 %47, i32* null)
  %49 = load i32, i32* @TEST_FAIL, align 4
  store i32 %49, i32* %1, align 4
  br label %82

50:                                               ; preds = %34
  %51 = load i32*, i32** @pptr, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** @pptr, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @shmdt(i8* %54)
  %56 = call i32 @wait(i32* %4)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @shm_id, align 4
  %58 = load i32, i32* @IPC_RMID, align 4
  %59 = call i32 @shmctl(i32 %57, i32 %58, i32* null)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @TEST_FAIL, align 4
  store i32 %65, i32* %1, align 4
  br label %82

66:                                               ; preds = %50
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @WIFEXITED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @WEXITSTATUS(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @TEST_FAIL, align 4
  br label %78

76:                                               ; preds = %70, %66
  %77 = load i32, i32* @TEST_PASS, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %1, align 4
  br label %82

80:                                               ; preds = %20
  %81 = load i32, i32* @TEST_PASS, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %80, %78, %63, %39, %12
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @gpr(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_gpr(i32) #1

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
!2 = !{i32 927}
