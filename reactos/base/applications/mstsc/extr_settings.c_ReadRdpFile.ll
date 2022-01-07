; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_ReadRdpFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_ReadRdpFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64)* @ReadRdpFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @ReadRdpFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64* null, i64** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @GetFileSize(i64 %10, i32* null)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 2
  %18 = call i64* @HeapAlloc(i32 %15, i32 0, i32 %17)
  store i64* %18, i64** %3, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = load i64, i64* %2, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ReadFile(i64 %22, i64* %23, i32 %24, i32* %5, i32* null)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i64*, i64** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  store i64 0, i64* %33, align 8
  br label %38

34:                                               ; preds = %21
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i64*, i64** %3, align 8
  %37 = call i32 @HeapFree(i32 %35, i32 0, i64* %36)
  store i64* null, i64** %3, align 8
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %14
  br label %40

40:                                               ; preds = %39, %9
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i64*, i64** %3, align 8
  ret i64* %42
}

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @ReadFile(i64, i64*, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
