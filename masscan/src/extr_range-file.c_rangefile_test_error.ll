; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile_test_error.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile_test_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeParser = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[-] rangefile test fail, line=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32)* @rangefile_test_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangefile_test_error(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.RangeParser*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 -1549556829, i32* %13, align 4
  store i32 -1549556829, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %21 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %21, %struct.RangeParser** %12, align 8
  %22 = load %struct.RangeParser*, %struct.RangeParser** %12, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @rangeparse_next(%struct.RangeParser* %22, i8* %23, i64* %11, i64 %24, i32* %13, i32* %14)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %78

29:                                               ; preds = %4
  %30 = load %struct.RangeParser*, %struct.RangeParser** %12, align 8
  %31 = call i32 @rangeparse_err(%struct.RangeParser* %30, i64* %15, i64* %16)
  %32 = load %struct.RangeParser*, %struct.RangeParser** %12, align 8
  %33 = call i32 @rangeparse_destroy(%struct.RangeParser* %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %29
  br label %78

42:                                               ; preds = %37
  %43 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %43, %struct.RangeParser** %12, align 8
  store i64 0, i64* %11, align 8
  store i32 -1549556829, i32* %13, align 4
  store i32 -1549556829, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %58, %42
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.RangeParser*, %struct.RangeParser** %12, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @rangeparse_next(%struct.RangeParser* %49, i8* %50, i64* %11, i64 %51, i32* %13, i32* %14)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %17, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %48
  br label %44

59:                                               ; preds = %55
  store i32 1, i32* %18, align 4
  %60 = load %struct.RangeParser*, %struct.RangeParser** %12, align 8
  %61 = call i32 @rangeparse_err(%struct.RangeParser* %60, i64* %15, i64* %16)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %16, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %59
  br label %78

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %44
  %72 = load %struct.RangeParser*, %struct.RangeParser** %12, align 8
  %73 = call i32 @rangeparse_destroy(%struct.RangeParser* %72)
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %82

78:                                               ; preds = %76, %69, %41, %28
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %77
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.RangeParser* @rangeparse_create(...) #1

declare dso_local i32 @rangeparse_next(%struct.RangeParser*, i8*, i64*, i64, i32*, i32*) #1

declare dso_local i32 @rangeparse_err(%struct.RangeParser*, i64*, i64*) #1

declare dso_local i32 @rangeparse_destroy(%struct.RangeParser*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
