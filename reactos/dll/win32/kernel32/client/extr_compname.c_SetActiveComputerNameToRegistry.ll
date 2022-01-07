; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/extr_compname.c_SetActiveComputerNameToRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/extr_compname.c_SetActiveComputerNameToRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXULONG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @SetActiveComputerNameToRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetActiveComputerNameToRegistry(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @wcslen(i64 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @MAXULONG, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = sub i64 %24, 1
  %26 = icmp ugt i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @RtlInitUnicodeString(i32* %11, i64 %30)
  %32 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %33 = call i32 @InitializeObjectAttributes(i32* %10, i32* %11, i32 %32, i32* null, i32* null)
  %34 = load i32, i32* @KEY_WRITE, align 4
  %35 = call i32 @NtOpenKey(i32** %13, i32 %34, i32* %10)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @NT_SUCCESS(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @BaseSetLastNTError(i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %93

43:                                               ; preds = %29
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @RtlInitUnicodeString(i32* %11, i64 %44)
  %46 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @InitializeObjectAttributes(i32* %10, i32* %11, i32 %46, i32* %47, i32* null)
  %49 = load i32, i32* @KEY_WRITE, align 4
  %50 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %51 = call i32 @NtCreateKey(i32** %14, i32 %49, i32* %10, i32 0, i32* null, i32 %50, i32* %16)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @NT_SUCCESS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @NtClose(i32* %56)
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @BaseSetLastNTError(i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %93

61:                                               ; preds = %43
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @RtlInitUnicodeString(i32* %12, i64 %62)
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* @REG_SZ, align 4
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @NtSetValueKey(i32* %64, i32* %12, i32 0, i32 %65, i32 %67, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @NT_SUCCESS(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %61
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @NtClose(i32* %78)
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @NtClose(i32* %80)
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @BaseSetLastNTError(i32 %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %5, align 4
  br label %93

85:                                               ; preds = %61
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @NtFlushKey(i32* %86)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @NtClose(i32* %88)
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @NtClose(i32* %90)
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %77, %55, %39, %27
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @wcslen(i64) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i64) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @BaseSetLastNTError(i32) #1

declare dso_local i32 @NtCreateKey(i32**, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NtClose(i32*) #1

declare dso_local i32 @NtSetValueKey(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NtFlushKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
