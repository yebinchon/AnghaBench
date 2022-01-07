; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_FCOMI.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_FCOMI.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGILL = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[RUN]\09Testing f[u]comi[p] instructions\0A\00", align 1
@CF = common dso_local global i32 0, align 4
@ZF = common dso_local global i32 0, align 4
@PF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"[OK]\09f[u]comi[p]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[FAIL]\09f[u]comi[p] errors: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @SIGILL, align 4
  %10 = load i32, i32* @sighandler, align 4
  %11 = call i32 @signal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGFPE, align 4
  %13 = load i32, i32* @sighandler, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGSEGV, align 4
  %16 = load i32, i32* @sighandler, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @test(i32 0)
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = call i32 @test_qnan(i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = call i32 @testu_qnan(i32 0)
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = call i32 @testu_snan(i32 0)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @CF, align 4
  %32 = load i32, i32* @ZF, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PF, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @test(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @CF, align 4
  %40 = load i32, i32* @ZF, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PF, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @test_qnan(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @CF, align 4
  %48 = load i32, i32* @ZF, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PF, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @testu_qnan(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @CF, align 4
  %56 = load i32, i32* @ZF, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PF, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @testu_snan(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = call i32 @testp(i32 0)
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = call i32 @testp_qnan(i32 0)
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = call i32 @testup_qnan(i32 0)
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @CF, align 4
  %73 = load i32, i32* @ZF, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PF, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @testp(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @CF, align 4
  %81 = load i32, i32* @ZF, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @PF, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @testp_qnan(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @CF, align 4
  %89 = load i32, i32* @ZF, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PF, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @testup_qnan(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %3
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %103

100:                                              ; preds = %3
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %98
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @test(i32) #1

declare dso_local i32 @test_qnan(i32) #1

declare dso_local i32 @testu_qnan(i32) #1

declare dso_local i32 @testu_snan(i32) #1

declare dso_local i32 @testp(i32) #1

declare dso_local i32 @testp_qnan(i32) #1

declare dso_local i32 @testup_qnan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
