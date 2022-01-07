; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_DrawChevron.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_DrawChevron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @REBAR_DrawChevron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REBAR_DrawChevron(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @PS_SOLID, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @GetSysColor(i64 %14)
  %16 = call i32 @CreatePen(i32 %13, i32 1, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %64

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @SelectObject(i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 2
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @MoveToEx(i32 %26, i64 %27, i64 %28, i32* null)
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, 5
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = call i32 @LineTo(i32 %30, i64 %32, i64 %33)
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @MoveToEx(i32 %38, i64 %39, i64 %40, i32* null)
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 3
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = call i32 @LineTo(i32 %42, i64 %44, i64 %45)
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @MoveToEx(i32 %50, i64 %51, i64 %52, i32* null)
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, 1
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @LineTo(i32 %54, i64 %56, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @SelectObject(i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @DeleteObject(i32 %62)
  br label %64

64:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @GetSysColor(i64) #1

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
