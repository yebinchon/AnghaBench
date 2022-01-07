; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_iterate_section_fields.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_iterate_section_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64 (i32, i32*, i8*)*, i8*)* @iterate_section_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iterate_section_fields(i32 %0, i32 %1, i32 %2, i64 (i32, i32*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (i32, i32*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [200 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 (i32, i32*, i8*)* %3, i64 (i32, i32*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  store i32* %19, i32** %12, align 8
  %20 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* @E_FAIL, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @SetupFindFirstLineW(i32 %23, i32 %24, i32 %25, i32* %14)
  store i64 %26, i64* %16, align 8
  br label %27

27:                                               ; preds = %56, %5
  %28 = load i64, i64* %16, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = call i32 @SetupGetFieldCount(i32* %14)
  store i32 %31, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %32

32:                                               ; preds = %53, %30
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32, i32* %17, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %40 = call i32* @get_field_string(i32* %14, i32 %37, i32* %38, i32* %39, i32* %13)
  store i32* %40, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %61

43:                                               ; preds = %36
  %44 = load i64 (i32, i32*, i8*)*, i64 (i32, i32*, i8*)** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 %44(i32 %45, i32* %46, i8* %47)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %61

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @SetupFindNextMatchLineW(i32* %14, i32 %57, i32* %14)
  store i64 %58, i64* %16, align 8
  br label %27

59:                                               ; preds = %27
  %60 = load i64, i64* @S_OK, align 8
  store i64 %60, i64* %15, align 8
  br label %61

61:                                               ; preds = %59, %51, %42
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %64 = icmp ne i32* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @HeapFree(i32 %66, i32 0, i32* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i64, i64* %15, align 8
  ret i64 %70
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i32, i32*) #1

declare dso_local i32 @SetupGetFieldCount(i32*) #1

declare dso_local i32* @get_field_string(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @SetupFindNextMatchLineW(i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
