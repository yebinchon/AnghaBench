; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_process_args.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_process_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32***)* @process_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_args(i32* %0, i32* %1, i32*** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32***, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32*** %2, i32**** %6, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32***, i32**** %6, align 8
  store i32** null, i32*** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @chomp(i32* %13, i32* null)
  store i32 %14, i32* %10, align 4
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lstrlenW(i32* %16)
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %17, %18
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i8* @HeapAlloc(i32 %15, i32 0, i32 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %74

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @chomp(i32* %29, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @HeapAlloc(i32 %32, i32 0, i32 %37)
  %39 = bitcast i8* %38 to i32**
  store i32** %39, i32*** %7, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, i32* %43)
  br label %74

45:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @lstrlenW(i32* %56)
  %58 = add nsw i32 %57, 1
  %59 = load i32*, i32** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32**, i32*** %7, align 8
  %73 = load i32***, i32**** %6, align 8
  store i32** %72, i32*** %73, align 8
  br label %74

74:                                               ; preds = %65, %41, %27
  ret void
}

declare dso_local i32 @chomp(i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
