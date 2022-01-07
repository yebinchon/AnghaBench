; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_GetText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_GetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64*)* @DATETIME_GetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DATETIME_GetText(%struct.TYPE_4__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [80 x i64], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i64 0, i64* %4, align 8
  br label %51

16:                                               ; preds = %12
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %45, %16
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i64* %29)
  %31 = call i32 @DATETIME_ReturnTxt(%struct.TYPE_4__* %26, i32 %27, i64* %28, i32 %30)
  %32 = load i64*, i64** %7, align 8
  %33 = call i64 @strlenW(i64* %32)
  %34 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 0
  %35 = call i64 @strlenW(i64* %34)
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 0
  %42 = call i32 @strcatW(i64* %40, i64* %41)
  br label %44

43:                                               ; preds = %25
  br label %48

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %19

48:                                               ; preds = %43, %19
  %49 = load i64*, i64** %7, align 8
  %50 = call i64 @strlenW(i64* %49)
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %48, %15
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @DATETIME_ReturnTxt(%struct.TYPE_4__*, i32, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @strlenW(i64*) #1

declare dso_local i32 @strcatW(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
