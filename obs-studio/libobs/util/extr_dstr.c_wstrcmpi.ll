; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wstrcmpi.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wstrcmpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wstrblank = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wstrcmpi(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** @wstrblank, align 8
  store i64* %11, i64** %4, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i64*, i64** @wstrblank, align 8
  store i64* %16, i64** %5, align 8
  br label %17

17:                                               ; preds = %15, %12
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @towupper(i64 %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @towupper(i64 %24)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %51

31:                                               ; preds = %18
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %51

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %4, align 8
  %41 = load i64, i64* %39, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %5, align 8
  %46 = load i64, i64* %44, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %18, label %50

50:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %35, %30
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @towupper(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
