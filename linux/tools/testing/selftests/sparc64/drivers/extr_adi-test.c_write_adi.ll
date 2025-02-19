; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_write_adi.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_write_adi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@write_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\09write elapsed timed = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09Wrote %d of %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @write_adi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_adi(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @RDTICK(i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i32 @write(i32 %16, i8* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @RDTICK(i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load i32, i32* @errno, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %55

32:                                               ; preds = %13
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i64, i64* %12, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @update_stats(i32* @write_stats, i64 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %13, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @DEBUG_PRINT_T(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @DEBUG_PRINT_L3(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %29
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @RDTICK(i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @update_stats(i32*, i64, i32) #1

declare dso_local i32 @DEBUG_PRINT_T(i8*, i64) #1

declare dso_local i32 @DEBUG_PRINT_L3(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
