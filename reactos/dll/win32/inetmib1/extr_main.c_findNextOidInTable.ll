; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_findNextOidInTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_findNextOidInTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GenericTable = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.GenericTable*, i64, i32 (i32*, i8*)*, i64 (i8*, i32*)*)* @findNextOidInTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findNextOidInTable(i32* %0, %struct.GenericTable* %1, i64 %2, i32 (i32*, i8*)* %3, i64 (i8*, i32*)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.GenericTable*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i32*, i8*)*, align 8
  %10 = alloca i64 (i8*, i32*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.GenericTable* %1, %struct.GenericTable** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (i32*, i8*)* %3, i32 (i32*, i8*)** %9, align 8
  store i64 (i8*, i32*)* %4, i64 (i8*, i32*)** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i64, i64* %8, align 8
  %15 = call i8* @HeapAlloc(i32 %13, i32 0, i64 %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %74

18:                                               ; preds = %5
  %19 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 %19(i32* %20, i8* %21)
  %23 = load i8*, i8** %12, align 8
  %24 = load %struct.GenericTable*, %struct.GenericTable** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %10, align 8
  %27 = call i32 @findValueInTable(i8* %23, %struct.GenericTable* %24, i64 %25, i64 (i8*, i32*)* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %10, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.GenericTable*, %struct.GenericTable** %7, align 8
  %34 = getelementptr inbounds %struct.GenericTable, %struct.GenericTable* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 %31(i8* %32, i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %30
  br label %70

40:                                               ; preds = %18
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %66, %40
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.GenericTable*, %struct.GenericTable** %7, align 8
  %46 = getelementptr inbounds %struct.GenericTable, %struct.GenericTable* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.GenericTable*, %struct.GenericTable** %7, align 8
  %53 = getelementptr inbounds %struct.GenericTable, %struct.GenericTable* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %55, %58
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = call i64 %50(i8* %51, i32* %60)
  %62 = icmp eq i64 %61, 0
  br label %63

63:                                               ; preds = %49, %43
  %64 = phi i1 [ false, %43 ], [ %62, %49 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %43

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %39
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @HeapFree(i32 %71, i32 0, i8* %72)
  br label %74

74:                                               ; preds = %70, %5
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @findValueInTable(i8*, %struct.GenericTable*, i64, i64 (i8*, i32*)*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
