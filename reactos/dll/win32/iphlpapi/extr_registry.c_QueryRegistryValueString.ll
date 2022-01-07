; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_QueryRegistryValueString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_QueryRegistryValueString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Type mismatch for %S (%d != %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QueryRegistryValueString(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @QueryRegistryValue(i32 %10, i32* %11, i64* %8, i64* %9)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @REG_SZ, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @REG_SZ, align 8
  %24 = call i32 @DbgPrint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %21, i64 %22, i64 %23)
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32* @TerminateReadString(i32* %26, i64 %27)
  store i32* %28, i32** %7, align 8
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %37

35:                                               ; preds = %25
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %35, %34, %15
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @QueryRegistryValue(i32, i32*, i64*, i64*) #1

declare dso_local i32 @DbgPrint(i8*, i32*, i64, i64) #1

declare dso_local i32* @TerminateReadString(i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
