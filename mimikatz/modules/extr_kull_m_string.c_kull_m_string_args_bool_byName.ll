; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_args_bool_byName.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_args_bool_byName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 111, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 116, i32 114, i32 117, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 49, i32 0], align 4
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i32] [i32 111, i32 102, i32 102, i32 0], align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 102, i32 97, i32 108, i32 115, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 48, i32 0], align 4
@.str.6 = private unnamed_addr constant [43 x i32] [i32 37, i32 115, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 110, i32 101, i32 101, i32 100, i32 32, i32 111, i32 110, i32 47, i32 116, i32 114, i32 117, i32 101, i32 47, i32 49, i32 32, i32 111, i32 114, i32 32, i32 111, i32 102, i32 102, i32 47, i32 102, i32 97, i32 108, i32 115, i32 101, i32 47, i32 48, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kull_m_string_args_bool_byName(i32 %0, i32** %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @kull_m_string_args_byName(i32 %12, i32** %13, i32 %14, i32* %10, i32* null)
  store i8* %15, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @_wcsicmp(i32 %18, i8* bitcast ([3 x i32]* @.str to i8*))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @_wcsicmp(i32 %22, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @_wcsicmp(i32 %26, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21, %17
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load i8**, i8*** %8, align 8
  store i8* %30, i8** %31, align 8
  br label %51

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @_wcsicmp(i32 %33, i8* bitcast ([4 x i32]* @.str.3 to i8*))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @_wcsicmp(i32 %37, i8* bitcast ([6 x i32]* @.str.4 to i8*))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @_wcsicmp(i32 %41, i8* bitcast ([2 x i32]* @.str.5 to i8*))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36, %32
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load i8**, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PRINT_ERROR(i8* bitcast ([43 x i32]* @.str.6 to i8*), i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i8*, i8** %9, align 8
  ret i8* %53
}

declare dso_local i8* @kull_m_string_args_byName(i32, i32**, i32, i32*, i32*) #1

declare dso_local i64 @_wcsicmp(i32, i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
