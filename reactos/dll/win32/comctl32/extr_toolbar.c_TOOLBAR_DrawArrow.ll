; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawArrow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawArrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32)* @TOOLBAR_DrawArrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_DrawArrow(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @PS_SOLID, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @CreatePen(i32 %13, i32 1, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %63

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @SelectObject(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, 2
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @MoveToEx(i32 %25, i64 %26, i64 %27, i32* null)
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 5
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  %34 = call i32 @LineTo(i32 %29, i64 %31, i64 %32)
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @MoveToEx(i32 %37, i64 %38, i64 %39, i32* null)
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 3
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %10, align 8
  %46 = call i32 @LineTo(i32 %41, i64 %43, i64 %44)
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @MoveToEx(i32 %49, i64 %50, i64 %51, i32* null)
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @LineTo(i32 %53, i64 %55, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @SelectObject(i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @DeleteObject(i32 %61)
  br label %63

63:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i64, i64, i32*) #1

declare dso_local i32 @LineTo(i32, i64, i64) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
