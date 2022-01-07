; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_enum.c_LoadResourceString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_enum.c_LoadResourceString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsound_hInstance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadResourceString(i32 %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i32, i32* @dsound_hInstance, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @LoadStringW(i32 %15, i32 %16, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %10, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @wcscpy(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %14
  br label %44

29:                                               ; preds = %5
  %30 = load i32, i32* @dsound_hInstance, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @LoadStringA(i32 %30, i32 %31, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @strcpy(i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i32 @wcscpy(i32, i32) #1

declare dso_local i32 @LoadStringA(i32, i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
