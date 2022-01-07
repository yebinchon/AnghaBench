; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.c_ptrace_vsx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.c_ptrace_vsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@shm_id = common dso_local global i32 0, align 4
@VEC_MAX = common dso_local global i32 0, align 4
@fp_load = common dso_local global i32* null, align 8
@fp_load_new = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@pptr = common dso_local global i32* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_vsx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @IPC_PRIVATE, align 4
  %7 = load i32, i32* @IPC_CREAT, align 4
  %8 = or i32 511, %7
  %9 = call i32 @shmget(i32 %6, i32 8, i32 %8)
  store i32 %9, i32* @shm_id, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %0
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VEC_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (...) @rand()
  %17 = add nsw i32 %15, %16
  %18 = load i32*, i32** @fp_load, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VEC_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (...) @rand()
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %31, %33
  %35 = load i32*, i32** @fp_load_new, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %26

42:                                               ; preds = %26
  %43 = call i32 (...) @fork()
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @TEST_FAIL, align 4
  store i32 %48, i32* %1, align 4
  br label %116

49:                                               ; preds = %42
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @vsx()
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %54
  %58 = load i32, i32* @shm_id, align 4
  %59 = call i64 @shmat(i32 %58, i32* null, i32 0)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** @pptr, align 8
  br label %61

61:                                               ; preds = %67, %57
  %62 = load i32*, i32** @pptr, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %61

68:                                               ; preds = %61
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @trace_vsx(i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @SIGTERM, align 4
  %76 = call i32 @kill(i32 %74, i32 %75)
  %77 = load i32*, i32** @pptr, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = call i32 @shmdt(i8* %78)
  %80 = load i32, i32* @shm_id, align 4
  %81 = load i32, i32* @IPC_RMID, align 4
  %82 = call i32 @shmctl(i32 %80, i32 %81, i32* null)
  %83 = load i32, i32* @TEST_FAIL, align 4
  store i32 %83, i32* %1, align 4
  br label %116

84:                                               ; preds = %68
  %85 = load i32*, i32** @pptr, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 1, i32* %86, align 4
  %87 = load i32*, i32** @pptr, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @shmdt(i8* %88)
  %90 = call i32 @wait(i32* %4)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @shm_id, align 4
  %92 = load i32, i32* @IPC_RMID, align 4
  %93 = call i32 @shmctl(i32 %91, i32 %92, i32* null)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @TEST_FAIL, align 4
  store i32 %99, i32* %1, align 4
  br label %116

100:                                              ; preds = %84
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @WIFEXITED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @WEXITSTATUS(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @TEST_FAIL, align 4
  br label %112

110:                                              ; preds = %104, %100
  %111 = load i32, i32* @TEST_PASS, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %1, align 4
  br label %116

114:                                              ; preds = %54
  %115 = load i32, i32* @TEST_PASS, align 4
  store i32 %115, i32* %1, align 4
  br label %116

116:                                              ; preds = %114, %112, %97, %73, %46
  %117 = load i32, i32* %1, align 4
  ret i32 %117
}

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @vsx(...) #1

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @trace_vsx(i32) #1

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
!2 = !{i32 1124}
