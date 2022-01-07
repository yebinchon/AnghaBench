; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_function_check_src.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_function_check_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32, i32, i64 }

@SLJIT_IMM = common dso_local global i32 0, align 4
@SLJIT_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i64)* @function_check_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @function_check_src(%struct.sljit_compiler* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sljit_compiler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %9 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %14 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @FUNCTION_CHECK_IS_REG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SLJIT_IMM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %53

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SLJIT_SP, align 4
  %34 = call i32 @SLJIT_MEM1(i32 %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %42 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %31
  %49 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @function_check_src_mem(%struct.sljit_compiler* %49, i32 %50, i64 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %45, %30, %22, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @FUNCTION_CHECK_IS_REG(i32) #1

declare dso_local i32 @SLJIT_MEM1(i32) #1

declare dso_local i32 @function_check_src_mem(%struct.sljit_compiler*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
