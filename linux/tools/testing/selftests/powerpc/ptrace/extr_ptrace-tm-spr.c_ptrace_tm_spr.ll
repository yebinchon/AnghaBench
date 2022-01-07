; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spr.c_ptrace_tm_spr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spr.c_ptrace_tm_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared = type { i32 }

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@shm_id1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global %struct.shared* null, align 8
@pptr1 = common dso_local global i32* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_spr() #0 {
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
  %13 = call i32 @shmget(i32 %10, i32 4, i32 %12)
  store i32 %13, i32* @shm_id, align 4
  %14 = load i32, i32* @IPC_PRIVATE, align 4
  %15 = load i32, i32* @IPC_CREAT, align 4
  %16 = or i32 511, %15
  %17 = call i32 @shmget(i32 %14, i32 4, i32 %16)
  store i32 %17, i32* @shm_id1, align 4
  %18 = call i32 (...) @fork()
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TEST_FAIL, align 4
  store i32 %23, i32* %1, align 4
  br label %104

24:                                               ; preds = %0
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @tm_spr()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %102

32:                                               ; preds = %29
  %33 = load i32, i32* @shm_id, align 4
  %34 = call i64 @shmat(i32 %33, i32* null, i32 0)
  %35 = inttoptr i64 %34 to %struct.shared*
  store %struct.shared* %35, %struct.shared** @pptr, align 8
  %36 = load i32, i32* @shm_id1, align 4
  %37 = call i64 @shmat(i32 %36, i32* null, i32 0)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** @pptr1, align 8
  br label %39

39:                                               ; preds = %45, %32
  %40 = load i32*, i32** @pptr1, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %39

46:                                               ; preds = %39
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @trace_tm_spr(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SIGKILL, align 4
  %54 = call i32 @kill(i32 %52, i32 %53)
  %55 = load %struct.shared*, %struct.shared** @pptr, align 8
  %56 = bitcast %struct.shared* %55 to i8*
  %57 = call i32 @shmdt(i8* %56)
  %58 = load i32*, i32** @pptr1, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 @shmdt(i8* %59)
  %61 = load i32, i32* @shm_id, align 4
  %62 = load i32, i32* @IPC_RMID, align 4
  %63 = call i32 @shmctl(i32 %61, i32 %62, i32* null)
  %64 = load i32, i32* @shm_id1, align 4
  %65 = load i32, i32* @IPC_RMID, align 4
  %66 = call i32 @shmctl(i32 %64, i32 %65, i32* null)
  %67 = load i32, i32* @TEST_FAIL, align 4
  store i32 %67, i32* %1, align 4
  br label %104

68:                                               ; preds = %46
  %69 = load %struct.shared*, %struct.shared** @pptr, align 8
  %70 = bitcast %struct.shared* %69 to i8*
  %71 = call i32 @shmdt(i8* %70)
  %72 = load i32*, i32** @pptr1, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = call i32 @shmdt(i8* %73)
  %75 = call i32 @wait(i32* %4)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @shm_id, align 4
  %77 = load i32, i32* @IPC_RMID, align 4
  %78 = call i32 @shmctl(i32 %76, i32 %77, i32* null)
  %79 = load i32, i32* @shm_id1, align 4
  %80 = load i32, i32* @IPC_RMID, align 4
  %81 = call i32 @shmctl(i32 %79, i32 %80, i32* null)
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %68
  %86 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @TEST_FAIL, align 4
  store i32 %87, i32* %1, align 4
  br label %104

88:                                               ; preds = %68
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @WIFEXITED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @WEXITSTATUS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @TEST_FAIL, align 4
  br label %100

98:                                               ; preds = %92, %88
  %99 = load i32, i32* @TEST_PASS, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %1, align 4
  br label %104

102:                                              ; preds = %29
  %103 = load i32, i32* @TEST_PASS, align 4
  store i32 %103, i32* %1, align 4
  br label %104

104:                                              ; preds = %102, %100, %85, %51, %21
  %105 = load i32, i32* %1, align 4
  ret i32 %105
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tm_spr(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_spr(i32) #1

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
!2 = !{i32 1199}
