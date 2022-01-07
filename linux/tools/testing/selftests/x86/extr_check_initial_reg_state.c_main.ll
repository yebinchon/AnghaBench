; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_check_initial_reg_state.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_check_initial_reg_state.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"[FAIL]\09Test was built incorrectly\0A\00", align 1
@ax = common dso_local global i64 0, align 8
@bx = common dso_local global i64 0, align 8
@cx = common dso_local global i64 0, align 8
@dx = common dso_local global i64 0, align 8
@si = common dso_local global i64 0, align 8
@di = common dso_local global i64 0, align 8
@bp = common dso_local global i64 0, align 8
@r8 = common dso_local global i64 0, align 8
@r9 = common dso_local global i64 0, align 8
@r10 = common dso_local global i64 0, align 8
@r11 = common dso_local global i64 0, align 8
@r12 = common dso_local global i64 0, align 8
@r13 = common dso_local global i64 0, align 8
@r14 = common dso_local global i64 0, align 8
@r15 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"[FAIL]\09All GPRs except SP should be 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09ax = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09bx = 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09cx = 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\09dx = 0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\09si = 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\09di = 0x%lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\09bp = 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09sp = 0x%lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\09r8 = 0x%lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\09r9 = 0x%lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\09r10 = 0x%lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\09r11 = 0x%lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\09r12 = 0x%lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\09r13 = 0x%lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\09r14 = 0x%lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\09r15 = 0x%lx\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"[OK]\09All GPRs except SP are 0\0A\00", align 1
@flags = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"[FAIL]\09FLAGS is 0x%lx, but it should be 0x202\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"[OK]\09FLAGS is 0x202\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i64, i64* @sp, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %105

7:                                                ; preds = %0
  %8 = load i64, i64* @ax, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @bx, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @cx, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @dx, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @si, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @di, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @bp, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @r8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @r9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @r10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @r11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @r12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @r13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @r14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @r15, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* @ax, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* @bx, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* @cx, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* @dx, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* @si, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* @di, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* @bp, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* @sp, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @r8, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* @r9, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* @r10, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* @r11, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* @r12, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* @r13, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* @r14, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* @r15, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %90

88:                                               ; preds = %49
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %52
  %91 = load i32, i32* @flags, align 4
  %92 = icmp ne i32 %91, 514
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @flags, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %90
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i32, i32* %2, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  store i32 %104, i32* %1, align 4
  br label %105

105:                                              ; preds = %100, %5
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
