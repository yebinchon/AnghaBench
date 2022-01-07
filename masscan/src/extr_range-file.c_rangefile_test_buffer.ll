; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile_test_buffer.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile_test_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeParser = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @rangefile_test_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangefile_test_buffer(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.RangeParser*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 -1549556829, i32* %11, align 4
  store i32 -1549556829, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %17, %struct.RangeParser** %10, align 8
  %18 = load %struct.RangeParser*, %struct.RangeParser** %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @rangeparse_next(%struct.RangeParser* %18, i8* %19, i64* %9, i64 %20, i32* %11, i32* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %71

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  store i32 1, i32* %4, align 4
  br label %71

34:                                               ; preds = %29
  %35 = load %struct.RangeParser*, %struct.RangeParser** %10, align 8
  %36 = call i32 @rangeparse_destroy(%struct.RangeParser* %35)
  %37 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %37, %struct.RangeParser** %10, align 8
  store i64 0, i64* %9, align 8
  store i32 -1549556829, i32* %11, align 4
  store i32 -1549556829, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %63, %49, %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.RangeParser*, %struct.RangeParser** %10, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @rangeparse_next(%struct.RangeParser* %43, i8* %44, i64* %9, i64 %45, i32* %11, i32* %12)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %38

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %71

54:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i32 1, i32* %4, align 4
  br label %71

63:                                               ; preds = %58
  br label %38

64:                                               ; preds = %38
  %65 = load %struct.RangeParser*, %struct.RangeParser** %10, align 8
  %66 = call i32 @rangeparse_destroy(%struct.RangeParser* %65)
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69, %62, %53, %33, %24
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.RangeParser* @rangeparse_create(...) #1

declare dso_local i32 @rangeparse_next(%struct.RangeParser*, i8*, i64*, i64, i32*, i32*) #1

declare dso_local i32 @rangeparse_destroy(%struct.RangeParser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
