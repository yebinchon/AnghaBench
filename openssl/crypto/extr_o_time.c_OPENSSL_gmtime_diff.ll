; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_o_time.c_OPENSSL_gmtime_diff.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_o_time.c_OPENSSL_gmtime_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@SECS_PER_DAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_gmtime_diff(i32* %0, i32* %1, %struct.tm* %2, %struct.tm* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.tm* %2, %struct.tm** %8, align 8
  store %struct.tm* %3, %struct.tm** %9, align 8
  %16 = load %struct.tm*, %struct.tm** %8, align 8
  %17 = call i32 @julian_adj(%struct.tm* %16, i32 0, i32 0, i64* %13, i32* %10)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %73

20:                                               ; preds = %4
  %21 = load %struct.tm*, %struct.tm** %9, align 8
  %22 = call i32 @julian_adj(%struct.tm* %21, i32 0, i32 0, i64* %14, i32* %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %73

25:                                               ; preds = %20
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %13, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i64, i64* %15, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i64, i64* %15, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* @SECS_PER_DAY, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %37, %34, %25
  %46 = load i64, i64* %15, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64, i64* %15, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* @SECS_PER_DAY, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %51, %48, %45
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %24, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @julian_adj(%struct.tm*, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
