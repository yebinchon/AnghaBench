; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_crypt.c_CRYPT_UnicodeToANSI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_crypt.c_CRYPT_UnicodeToANSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32)* @CRYPT_UnicodeToANSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_UnicodeToANSI(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32**, i32*** %6, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @CP_ACP, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @WideCharToMultiByte(i32 %18, i32 0, i32 %19, i32 -1, i32* null, i32 0, i32* null, i32* null)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32* @CRYPT_Alloc(i32 %24)
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  br label %33

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @INT_MAX, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @WideCharToMultiByte(i32 %38, i32 0, i32 %39, i32 -1, i32* %41, i32 %42, i32* null, i32* null)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %47 = call i32 @SetLastError(i32 %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %37, %10
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @CRYPT_Alloc(i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
