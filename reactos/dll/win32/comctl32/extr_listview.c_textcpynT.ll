; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_textcpynT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_textcpynT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i32)* @textcpynT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @textcpynT(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %5
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @lstrcpynW(i64 %17, i64 %18, i32 %19)
  br label %28

21:                                               ; preds = %13
  %22 = load i32, i32* @CP_ACP, align 4
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @MultiByteToWideChar(i32 %22, i32 0, i32 %24, i32 -1, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  br label %47

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @CP_ACP, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @WideCharToMultiByte(i32 %33, i32 0, i64 %34, i32 -1, i32 %36, i32 %37, i32* null, i32* null)
  br label %46

39:                                               ; preds = %29
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @lstrcpynA(i32 %41, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %28
  ret void
}

declare dso_local i32 @lstrcpynW(i64, i64, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lstrcpynA(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
