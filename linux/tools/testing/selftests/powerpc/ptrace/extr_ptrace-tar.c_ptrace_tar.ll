; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tar.c_ptrace_tar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tar.c_ptrace_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global i32* null, align 8
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @IPC_PRIVATE, align 4
  %6 = load i32, i32* @IPC_CREAT, align 4
  %7 = or i32 511, %6
  %8 = call i32 @shmget(i32 %5, i32 12, i32 %7)
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
  br label %91

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @tar()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %20
  %24 = load i32, i32* @shm_id, align 4
  %25 = call i64 @shmat(i32 %24, i32* null, i32 0)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** @pptr, align 8
  %27 = load i32*, i32** @pptr, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** @pptr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %37, %23
  %32 = load i32*, i32** @pptr, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %31

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @trace_tar(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %1, align 4
  br label %91

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @trace_tar_write(i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %1, align 4
  br label %91

52:                                               ; preds = %45
  %53 = load i32*, i32** @pptr, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %61, %52
  %56 = load i32*, i32** @pptr, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %55

62:                                               ; preds = %55
  %63 = load i32*, i32** @pptr, align 8
  %64 = call i32 @shmdt(i32* %63)
  %65 = call i32 @wait(i32* %4)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @shm_id, align 4
  %67 = load i32, i32* @IPC_RMID, align 4
  %68 = call i32 @shmctl(i32 %66, i32 %67, i32* null)
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @TEST_PASS, align 4
  store i32 %74, i32* %1, align 4
  br label %91

75:                                               ; preds = %62
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @WIFEXITED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @WEXITSTATUS(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @TEST_FAIL, align 4
  br label %87

85:                                               ; preds = %79, %75
  %86 = load i32, i32* @TEST_PASS, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %1, align 4
  br label %91

89:                                               ; preds = %20
  %90 = load i32, i32* @TEST_PASS, align 4
  store i32 %90, i32* %1, align 4
  br label %91

91:                                               ; preds = %89, %87, %72, %50, %43, %12
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tar(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tar(i32) #1

declare dso_local i32 @trace_tar_write(i32) #1

declare dso_local i32 @shmdt(i32*) #1

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
!2 = !{i32 949}
!3 = !{i32 1130}
