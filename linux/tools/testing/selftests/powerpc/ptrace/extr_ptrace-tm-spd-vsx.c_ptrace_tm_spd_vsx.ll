; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-vsx.c_ptrace_tm_spd_vsx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-vsx.c_ptrace_tm_spd_vsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@fp_load = common dso_local global i32* null, align 8
@fp_load_new = common dso_local global i32* null, align 8
@fp_load_ckpt = common dso_local global i32* null, align 8
@fp_load_ckpt_new = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global i32* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_spd_vsx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @have_htm()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @SKIP_IF(i32 %9)
  %11 = load i32, i32* @IPC_PRIVATE, align 4
  %12 = load i32, i32* @IPC_CREAT, align 4
  %13 = or i32 511, %12
  %14 = call i32 @shmget(i32 %11, i32 12, i32 %13)
  store i32 %14, i32* @shm_id, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %46, %0
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = call i32 (...) @rand()
  %20 = add nsw i32 1, %19
  %21 = load i32*, i32** @fp_load, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  %25 = call i32 (...) @rand()
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 1, %26
  %28 = load i32*, i32** @fp_load_new, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = call i32 (...) @rand()
  %33 = mul nsw i32 3, %32
  %34 = add nsw i32 1, %33
  %35 = load i32*, i32** @fp_load_ckpt, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = call i32 (...) @rand()
  %40 = mul nsw i32 4, %39
  %41 = add nsw i32 1, %40
  %42 = load i32*, i32** @fp_load_ckpt_new, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %18
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %15

49:                                               ; preds = %15
  %50 = call i32 (...) @fork()
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @TEST_FAIL, align 4
  store i32 %55, i32* %1, align 4
  br label %121

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @tm_spd_vsx()
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %119

64:                                               ; preds = %61
  %65 = load i32, i32* @shm_id, align 4
  %66 = call i64 @shmat(i32 %65, i32* null, i32 0)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** @pptr, align 8
  br label %68

68:                                               ; preds = %74, %64
  %69 = load i32*, i32** @pptr, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %68

75:                                               ; preds = %68
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @trace_tm_spd_vsx(i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @SIGKILL, align 4
  %83 = call i32 @kill(i32 %81, i32 %82)
  %84 = load i32*, i32** @pptr, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @shmdt(i8* %85)
  %87 = load i32, i32* @shm_id, align 4
  %88 = load i32, i32* @IPC_RMID, align 4
  %89 = call i32 @shmctl(i32 %87, i32 %88, i32* null)
  %90 = load i32, i32* @TEST_FAIL, align 4
  store i32 %90, i32* %1, align 4
  br label %121

91:                                               ; preds = %75
  %92 = load i32*, i32** @pptr, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = call i32 @shmdt(i8* %93)
  %95 = call i32 @wait(i32* %4)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @shm_id, align 4
  %97 = load i32, i32* @IPC_RMID, align 4
  %98 = call i32 @shmctl(i32 %96, i32 %97, i32* null)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @TEST_FAIL, align 4
  store i32 %104, i32* %1, align 4
  br label %121

105:                                              ; preds = %91
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @WIFEXITED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @WEXITSTATUS(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @TEST_FAIL, align 4
  br label %117

115:                                              ; preds = %109, %105
  %116 = load i32, i32* @TEST_PASS, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  store i32 %118, i32* %1, align 4
  br label %121

119:                                              ; preds = %61
  %120 = load i32, i32* @TEST_PASS, align 4
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %119, %117, %102, %80, %53
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tm_spd_vsx(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_spd_vsx(i32) #1

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
!2 = !{i32 1291}
