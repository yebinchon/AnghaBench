; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_FormatByteSize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_FormatByteSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i32] [i32 32, i32 0], align 4
@hInst = common dso_local global i32 0, align 4
@IDS_BYTES_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FormatByteSize(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @FormatInteger(i32 %12, i64 %13, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %41

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @StringCchCopyExW(i64 %26, i64 %27, i8* bitcast ([2 x i32]* @.str to i8*), i64* %10, i64* %11, i32 0)
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* @hInst, align 4
  %31 = load i32, i32* @IDS_BYTES_FORMAT, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @LoadStringW(i32 %30, i32 %31, i64 %32, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %19, %18
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @FormatInteger(i32, i64, i64) #1

declare dso_local i32 @StringCchCopyExW(i64, i64, i8*, i64*, i64*, i32) #1

declare dso_local i64 @LoadStringW(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
