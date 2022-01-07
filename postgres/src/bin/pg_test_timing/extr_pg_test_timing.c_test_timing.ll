; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_test_timing/extr_pg_test_timing.c_test_timing.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_test_timing/extr_pg_test_timing.c_test_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Detected clock going backwards in time.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Time warp: %d ms\0A\00", align 1
@histogram = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Per loop time including overhead: %0.2f ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_timing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @INT64CONST(i32 1000000)
  %18 = mul nsw i32 %16, %17
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @INSTR_TIME_SET_CURRENT(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @INSTR_TIME_GET_MICROSEC(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %59, %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @INSTR_TIME_SET_CURRENT(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @INSTR_TIME_GET_MICROSEC(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load i32, i32* @stderr, align 4
  %43 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* %46, i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %54, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %51

59:                                               ; preds = %51
  %60 = load i32*, i32** @histogram, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @INSTR_TIME_SUBTRACT(i32 %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @INSTR_TIME_GET_MICROSEC(i32 %71)
  store i32 %72, i32* %4, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @INSTR_TIME_SET_CURRENT(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @INSTR_TIME_SUBTRACT(i32 %76, i32 %77)
  %79 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @INSTR_TIME_GET_DOUBLE(i32 %80)
  %82 = sitofp i32 %81 to double
  %83 = fmul double %82, 1.000000e+09
  %84 = load i32, i32* %5, align 4
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %83, %85
  %87 = fptosi double %86 to i32
  %88 = call i32 @printf(i8* %79, i32 %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @INT64CONST(i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @INSTR_TIME_GET_DOUBLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
