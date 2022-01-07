; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_writemask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_writemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BWRITERSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BWRITERSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @debug_print_writemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_print_writemask(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 1, i8* %5, align 1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %57

10:                                               ; preds = %1
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 46, i8* %11, align 1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BWRITERSP_WRITEMASK_0, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i8, i8* %5, align 1
  %18 = add i8 %17, 1
  store i8 %18, i8* %5, align 1
  %19 = zext i8 %17 to i64
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %19
  store i8 120, i8* %20, align 1
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @BWRITERSP_WRITEMASK_1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8, i8* %5, align 1
  %28 = add i8 %27, 1
  store i8 %28, i8* %5, align 1
  %29 = zext i8 %27 to i64
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %29
  store i8 121, i8* %30, align 1
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BWRITERSP_WRITEMASK_2, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8, i8* %5, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %5, align 1
  %39 = zext i8 %37 to i64
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %39
  store i8 122, i8* %40, align 1
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @BWRITERSP_WRITEMASK_3, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8, i8* %5, align 1
  %48 = add i8 %47, 1
  store i8 %48, i8* %5, align 1
  %49 = zext i8 %47 to i64
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %49
  store i8 119, i8* %50, align 1
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %56 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i8* %56, i8** %2, align 8
  br label %57

57:                                               ; preds = %51, %9
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
