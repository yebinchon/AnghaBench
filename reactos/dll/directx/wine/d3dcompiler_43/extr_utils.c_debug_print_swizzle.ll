; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".w\00", align 1
@BWRITERVS_SWIZZLE_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @debug_print_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_print_swizzle(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %13 [
    i32 132, label %8
    i32 130, label %9
    i32 129, label %10
    i32 128, label %11
    i32 131, label %12
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %75

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %75

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %75

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %75

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %75

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %16 = add nsw i32 %15, 0
  %17 = ashr i32 %14, %16
  %18 = and i32 %17, 3
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %22 = add nsw i32 %21, 2
  %23 = ashr i32 %20, %22
  %24 = and i32 %23, 3
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %28 = add nsw i32 %27, 4
  %29 = ashr i32 %26, %28
  %30 = and i32 %29, 3
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %34 = add nsw i32 %33, 6
  %35 = ashr i32 %32, %34
  %36 = and i32 %35, 3
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 46, i8* %38, align 1
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %68, %13
  %40 = load i32, i32* %5, align 4
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %67 [
    i32 0, label %47
    i32 1, label %52
    i32 2, label %57
    i32 3, label %62
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = add i32 1, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %50
  store i8 120, i8* %51, align 1
  br label %67

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = add i32 1, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %55
  store i8 121, i8* %56, align 1
  br label %67

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = add i32 1, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %60
  store i8 122, i8* %61, align 1
  br label %67

62:                                               ; preds = %42
  %63 = load i32, i32* %5, align 4
  %64 = add i32 1, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %65
  store i8 119, i8* %66, align 1
  br label %67

67:                                               ; preds = %42, %62, %57, %52, %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %39

71:                                               ; preds = %39
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %74 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %71, %12, %11, %10, %9, %8
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
