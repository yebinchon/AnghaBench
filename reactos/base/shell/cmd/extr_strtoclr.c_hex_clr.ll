; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_hex_clr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_hex_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @hex_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hex_clr(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 -1, i64* %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @_istdigit(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @_T(i8 signext 48)
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %4, align 8
  br label %33

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @_totupper(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @_T(i8 signext 65)
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @_T(i8 signext 70)
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @_T(i8 signext 65)
  %29 = sub nsw i64 %27, %28
  %30 = add nsw i64 %29, 10
  store i64 %30, i64* %4, align 8
  br label %32

31:                                               ; preds = %22, %16
  store i64 -1, i64* %2, align 8
  br label %69

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @_istdigit(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @_T(i8 signext 48)
  %43 = sub nsw i64 %41, %42
  %44 = shl i64 %43, 4
  %45 = load i64, i64* %4, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %4, align 8
  br label %67

47:                                               ; preds = %33
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @_totupper(i64 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @_T(i8 signext 65)
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @_T(i8 signext 70)
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @_T(i8 signext 65)
  %60 = sub nsw i64 %58, %59
  %61 = add nsw i64 %60, 10
  %62 = shl i64 %61, 4
  %63 = load i64, i64* %4, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %4, align 8
  br label %66

65:                                               ; preds = %53, %47
  store i64 -1, i64* %2, align 8
  br label %69

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %67, %65, %31
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i64 @_istdigit(i64) #1

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i64 @_totupper(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
