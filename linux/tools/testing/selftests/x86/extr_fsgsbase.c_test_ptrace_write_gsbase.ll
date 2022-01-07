; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_test_ptrace_write_gsbase.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_test_ptrace_write_gsbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"[RUN]\09PTRACE_POKE(), write GSBASE from ptracer\0A\00", align 1
@shared_scratch = common dso_local global i64* null, align 8
@PTRACE_TRACEME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"PTRACE_TRACEME\00", align 1
@SIGTRAP = common dso_local global i64 0, align 8
@gs_base = common dso_local global i64 0, align 8
@PTRACE_PEEKUSER = common dso_local global i32 0, align 4
@nerrs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"[FAIL]\09GS is not prepared with nonzero\0A\00", align 1
@PTRACE_POKEUSER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"PTRACE_POKEUSER\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"[OK]\09GS was reset as expected\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"[FAIL]\09GS=0x%lx, GSBASE=0x%lx (should be 0, 0xFF)\0A\00", align 1
@PTRACE_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ptrace_write_gsbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ptrace_write_gsbase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i64 (...) @fork()
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i64, i64* %2, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i64 (...) @load_gs()
  %18 = load i64*, i64** @shared_scratch, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* @PTRACE_TRACEME, align 4
  %20 = call i64 @ptrace(i32 %19, i64 0, i64 0, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i64, i64* @SIGTRAP, align 8
  %26 = call i32 @raise(i64 %25)
  %27 = call i32 @_exit(i32 0) #3
  unreachable

28:                                               ; preds = %12
  %29 = call i32 @wait(i32* %1)
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @WSTOPSIG(i32 %30)
  %32 = load i64, i64* @SIGTRAP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %28
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @USER_REGS_OFFSET(i64 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* @gs_base, align 8
  %38 = call i64 @USER_REGS_OFFSET(i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* @PTRACE_PEEKUSER, align 4
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @ptrace(i32 %39, i64 %40, i64 %41, i32 0)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64*, i64** @shared_scratch, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i32, i32* @nerrs, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @nerrs, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %83

51:                                               ; preds = %34
  %52 = load i32, i32* @PTRACE_POKEUSER, align 4
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @ptrace(i32 %52, i64 %53, i64 %54, i32 255)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* @PTRACE_PEEKUSER, align 4
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @ptrace(i32 %60, i64 %61, i64 %62, i32 0)
  store i64 %63, i64* %3, align 8
  %64 = load i32, i32* @PTRACE_PEEKUSER, align 4
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @ptrace(i32 %64, i64 %65, i64 %66, i32 0)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %3, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 255
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %81

75:                                               ; preds = %70, %59
  %76 = load i32, i32* @nerrs, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @nerrs, align 4
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %78, i64 %79)
  br label %81

81:                                               ; preds = %75, %73
  br label %82

82:                                               ; preds = %81, %28
  br label %83

83:                                               ; preds = %82, %47
  %84 = load i32, i32* @PTRACE_CONT, align 4
  %85 = load i64, i64* %2, align 8
  %86 = call i64 @ptrace(i32 %84, i64 %85, i64 0, i32 0)
  ret void
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @load_gs(...) #1

declare dso_local i64 @ptrace(i32, i64, i64, i32) #1

declare dso_local i32 @raise(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait(i32*) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i64 @USER_REGS_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
