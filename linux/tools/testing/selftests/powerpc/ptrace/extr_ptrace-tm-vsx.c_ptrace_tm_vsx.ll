; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-vsx.c_ptrace_tm_vsx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-vsx.c_ptrace_tm_vsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@fp_load = common dso_local global i32* null, align 8
@fp_load_ckpt = common dso_local global i32* null, align 8
@fp_load_ckpt_new = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global i64* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_tm_vsx() #0 {
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
  %14 = call i32 @shmget(i32 %11, i32 8, i32 %13)
  store i32 %14, i32* @shm_id, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %39, %0
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %42

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
  %28 = load i32*, i32** @fp_load_ckpt, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = call i32 (...) @rand()
  %33 = mul nsw i32 3, %32
  %34 = add nsw i32 1, %33
  %35 = load i32*, i32** @fp_load_ckpt_new, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %15

42:                                               ; preds = %15
  %43 = call i32 (...) @fork()
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @TEST_FAIL, align 4
  store i32 %48, i32* %1, align 4
  br label %114

49:                                               ; preds = %42
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @tm_vsx()
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %54
  %58 = load i32, i32* @shm_id, align 4
  %59 = call i64 @shmat(i32 %58, i32* null, i32 0)
  %60 = inttoptr i64 %59 to i64*
  store i64* %60, i64** @pptr, align 8
  br label %61

61:                                               ; preds = %67, %57
  %62 = load i64*, i64** @pptr, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %61

68:                                               ; preds = %61
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @trace_tm_vsx(i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @SIGKILL, align 4
  %76 = call i32 @kill(i32 %74, i32 %75)
  %77 = load i64*, i64** @pptr, align 8
  %78 = bitcast i64* %77 to i8*
  %79 = call i32 @shmdt(i8* %78)
  %80 = load i32, i32* @shm_id, align 4
  %81 = load i32, i32* @IPC_RMID, align 4
  %82 = call i32 @shmctl(i32 %80, i32 %81, i32* null)
  %83 = load i32, i32* @TEST_FAIL, align 4
  store i32 %83, i32* %1, align 4
  br label %114

84:                                               ; preds = %68
  %85 = load i64*, i64** @pptr, align 8
  %86 = bitcast i64* %85 to i8*
  %87 = call i32 @shmdt(i8* %86)
  %88 = call i32 @wait(i32* %4)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @shm_id, align 4
  %90 = load i32, i32* @IPC_RMID, align 4
  %91 = call i32 @shmctl(i32 %89, i32 %90, i32* null)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @TEST_FAIL, align 4
  store i32 %97, i32* %1, align 4
  br label %114

98:                                               ; preds = %84
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @WIFEXITED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @WEXITSTATUS(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @TEST_FAIL, align 4
  br label %110

108:                                              ; preds = %102, %98
  %109 = load i32, i32* @TEST_PASS, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %1, align 4
  br label %114

112:                                              ; preds = %54
  %113 = load i32, i32* @TEST_PASS, align 4
  store i32 %113, i32* %1, align 4
  br label %114

114:                                              ; preds = %112, %110, %95, %73, %46
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @tm_vsx(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_tm_vsx(i32) #1

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
!2 = !{i32 1240}
