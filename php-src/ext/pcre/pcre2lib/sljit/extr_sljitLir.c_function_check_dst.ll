; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_function_check_dst.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_function_check_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32, i32, i64 }

@SLJIT_UNUSED = common dso_local global i64 0, align 8
@SLJIT_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sljit_compiler*, i64, i64, i64)* @function_check_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @function_check_dst(%struct.sljit_compiler* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sljit_compiler*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %11 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %16 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %4
  store i64 0, i64* %5, align 8
  br label %59

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @FUNCTION_CHECK_IS_REG(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @SLJIT_UNUSED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %20
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  br label %59

36:                                               ; preds = %27, %24
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @SLJIT_SP, align 4
  %39 = call i64 @SLJIT_MEM1(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %47 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %5, align 8
  br label %59

54:                                               ; preds = %36
  %55 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @function_check_src_mem(%struct.sljit_compiler* %55, i64 %56, i64 %57)
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %54, %50, %31, %19
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i64 @FUNCTION_CHECK_IS_REG(i64) #1

declare dso_local i64 @SLJIT_MEM1(i32) #1

declare dso_local i64 @function_check_src_mem(%struct.sljit_compiler*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
