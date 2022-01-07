; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_nvmem.c_nvmem_write_patch.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_nvmem.c_nvmem_write_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SP_PORTION_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvmem_write_patch(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i64*, i64** %7, align 8
  store i64* %11, i64** %10, align 8
  br label %12

12:                                               ; preds = %21, %3
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @SP_PORTION_SIZE, align 8
  %18 = icmp sge i64 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SP_PORTION_SIZE, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i64*, i64** %10, align 8
  %26 = call i64 @nvmem_write(i64 %22, i64 %23, i32 %24, i64* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* @SP_PORTION_SIZE, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* @SP_PORTION_SIZE, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @SP_PORTION_SIZE, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %35
  store i64* %37, i64** %10, align 8
  br label %12

38:                                               ; preds = %19
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %54

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i64*, i64** %10, align 8
  %51 = call i64 @nvmem_write(i64 %47, i64 %48, i32 %49, i64* %50)
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i64 @nvmem_write(i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
