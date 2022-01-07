; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_net.c_kull_m_net_getComputerName.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_net.c_kull_m_net_getComputerName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ComputerNamePhysicalDnsFullyQualified = common dso_local global i32 0, align 4
@ComputerNamePhysicalNetBIOS = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i32] [i32 71, i32 101, i32 116, i32 67, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 69, i32 120, i32 40, i32 100, i32 97, i32 116, i32 97, i32 41, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 71, i32 101, i32 116, i32 67, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 69, i32 120, i32 40, i32 105, i32 110, i32 105, i32 116, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_net_getComputerName(i64 %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ComputerNamePhysicalDnsFullyQualified, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ComputerNamePhysicalNetBIOS, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @GetComputerNameEx(i32 %17, i32* null, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_MORE_DATA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32, i32* @LPTR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i64 @LocalAlloc(i32 %25, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32**, i32*** %4, align 8
  store i32* %31, i32** %32, align 8
  %33 = icmp ne i32* %31, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32**, i32*** %4, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @GetComputerNameEx(i32 %35, i32* %37, i32* %7)
  store i64 %38, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([24 x i32]* @.str to i8*))
  %42 = load i32**, i32*** %4, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @LocalFree(i32* %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %24
  br label %49

47:                                               ; preds = %20, %15
  %48 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([24 x i32]* @.str.1 to i8*))
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i64 @GetComputerNameEx(i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
