; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_numpyos.c_change_decimal_from_locale_to_dot.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_numpyos.c_change_decimal_from_locale_to_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @change_decimal_from_locale_to_dot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_decimal_from_locale_to_dot(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lconv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %7, %struct.lconv** %3, align 8
  %8 = load %struct.lconv*, %struct.lconv** %3, align 8
  %9 = getelementptr inbounds %struct.lconv, %struct.lconv* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 46
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %16, %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %22
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %44, %37
  %39 = load i8*, i8** %2, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @Py_CHARMASK(i8 signext %40)
  %42 = call i64 @isdigit(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %2, align 8
  br label %38

47:                                               ; preds = %38
  %48 = load i8*, i8** %2, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @strncmp(i8* %48, i8* %49, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load i8*, i8** %2, align 8
  store i8 46, i8* %54, align 1
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %2, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load i8*, i8** %2, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i64 @strlen(i8* %63)
  store i64 %64, i64* %6, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @memmove(i8* %65, i8* %69, i64 %70)
  %72 = load i8*, i8** %2, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %59, %53
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %16
  ret void
}

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @Py_CHARMASK(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
