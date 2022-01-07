; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdhelpers.c_gd_strtok_r.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdhelpers.c_gd_strtok_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEP_TEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gd_strtok_r(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 256)
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %19
  store i8 1, i8* %20, align 1
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %12

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  store i8* null, i8** %4, align 8
  br label %83

36:                                               ; preds = %29
  %37 = load i64, i64* @SEP_TEST, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %43, %39
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @SEP_TEST, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %40, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  store i8* null, i8** %4, align 8
  br label %83

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i8*, i8** %5, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %67, %54
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %9, align 8
  store i8* %63, i8** %4, align 8
  br label %83

64:                                               ; preds = %56
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @SEP_TEST, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %56, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %76, %71
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* @SEP_TEST, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %73, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = load i8**, i8*** %7, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %9, align 8
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %79, %60, %50, %33
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
