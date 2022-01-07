; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_noralsy.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_noralsy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 121, i32 101, i32 97, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 49, i32 57, i32 57, i32 57, i32 0], align 4
@.str.2 = private unnamed_addr constant [31 x i32] [i32 32, i32 42, i32 32, i32 89, i32 101, i32 97, i32 114, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 104, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 52, i32 120, i32 41, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 105, i32 100, i32 0], align 4
@.str.4 = private unnamed_addr constant [30 x i32] [i32 32, i32 42, i32 32, i32 84, i32 97, i32 103, i32 32, i32 73, i32 68, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [18 x i32] [i32 32, i32 42, i32 32, i32 82, i32 65, i32 87, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 56, i32 120, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [68 x i32] [i32 84, i32 97, i32 103, i32 32, i32 73, i32 100, i32 32, i32 40, i32 47, i32 105, i32 100, i32 41, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 105, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 91, i32 48, i32 59, i32 57, i32 57, i32 57, i32 57, i32 57, i32 57, i32 57, i32 93, i32 32, i32 114, i32 97, i32 110, i32 103, i32 101, i32 32, i32 45, i32 32, i32 105, i32 116, i32 32, i32 119, i32 97, i32 115, i32 32, i32 37, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [24 x i32] [i32 84, i32 97, i32 103, i32 32, i32 73, i32 100, i32 32, i32 40, i32 47, i32 105, i32 100, i32 41, i32 32, i32 105, i32 115, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [67 x i32] [i32 89, i32 101, i32 97, i32 114, i32 32, i32 40, i32 47, i32 121, i32 101, i32 97, i32 114, i32 41, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 105, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 91, i32 48, i32 59, i32 48, i32 120, i32 102, i32 102, i32 102, i32 102, i32 93, i32 32, i32 114, i32 97, i32 110, i32 103, i32 101, i32 32, i32 45, i32 32, i32 105, i32 116, i32 32, i32 119, i32 97, i32 115, i32 32, i32 37, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_noralsy(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32**, i32*** %4, align 8
  %12 = call i64 @kull_m_string_args_byName(i32 %10, i32** %11, i8* bitcast ([5 x i32]* @.str to i8*), i32* %5, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @wcstoul(i32 %15, i32* null, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 65535
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.2 to i8*), i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32**, i32*** %4, align 8
  %26 = call i64 @kull_m_string_args_byName(i32 %24, i32** %25, i8* bitcast ([3 x i32]* @.str.3 to i8*), i32* %5, i8* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @wcstoul(i32 %29, i32* null, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 10000000
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.4 to i8*), i32 %34, i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @kuhl_m_sr98_noralsy_blocks(i32* %37, i32 %38, i32 %39)
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.5 to i8*))
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %51, %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.6 to i8*), i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %42

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %58 = call i32 @ARRAYSIZE(i32* %57)
  %59 = call i32 @kuhl_m_sr98_sendBlocks(i32* %56, i32 %58)
  br label %64

60:                                               ; preds = %28
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([68 x i32]* @.str.8 to i8*), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  br label %67

65:                                               ; preds = %19
  %66 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.9 to i8*))
  br label %67

67:                                               ; preds = %65, %64
  br label %72

68:                                               ; preds = %14
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([67 x i32]* @.str.10 to i8*), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %67
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %74
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i8*) #1

declare dso_local i32 @wcstoul(i32, i32*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_sr98_noralsy_blocks(i32*, i32, i32) #1

declare dso_local i32 @kuhl_m_sr98_sendBlocks(i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
