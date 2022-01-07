; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_textcmpWT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_textcmpWT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @textcmpWT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @textcmpWT(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 -1, i32 0
  store i32 %16, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %53

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 -1
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @textdupTtoW(i64 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @lstrcmpW(i64 %42, i64 %43)
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 1, %45 ]
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @textfreeT(i64 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46, %25, %20, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @textdupTtoW(i64, i32) #1

declare dso_local i32 @lstrcmpW(i64, i64) #1

declare dso_local i32 @textfreeT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
