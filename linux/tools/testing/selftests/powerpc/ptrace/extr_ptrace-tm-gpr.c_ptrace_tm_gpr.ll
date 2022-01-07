; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-gpr.c_ptrace_tm_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-gpr.c_ptrace_tm_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global i64* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_gpr() #0 {
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
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @TEST_FAIL, align 4
  store i32 %19, i32* %1, align 4
  br label %79

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @tm_gpr()
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %25
  %29 = load i32, i32* @shm_id, align 4
  %30 = call i64 @shmat(i32 %29, i32* null, i32 0)
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** @pptr, align 8
  br label %32

32:                                               ; preds = %38, %28
  %33 = load i64*, i64** @pptr, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %32

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @trace_tm_gpr(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SIGTERM, align 4
  %47 = call i32 @kill(i32 %45, i32 %46)
  %48 = load i32, i32* @TEST_FAIL, align 4
  store i32 %48, i32* %1, align 4
  br label %79

49:                                               ; preds = %39
  %50 = load i64*, i64** @pptr, align 8
  %51 = bitcast i64* %50 to i8*
  %52 = call i32 @shmdt(i8* %51)
  %53 = call i32 @wait(i32* %4)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @shm_id, align 4
  %55 = load i32, i32* @IPC_RMID, align 4
  %56 = call i32 @shmctl(i32 %54, i32 %55, i32* null)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @TEST_FAIL, align 4
  store i32 %62, i32* %1, align 4
  br label %79

63:                                               ; preds = %49
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

77:                                               ; preds = %25
  %78 = load i32, i32* @TEST_PASS, align 4
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %77, %75, %60, %44, %17
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tm_gpr(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_gpr(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @shmdt(i8*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

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
!2 = !{i32 1023}
