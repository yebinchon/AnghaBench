; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_dtostr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_dtostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_dtostr(double %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store double %0, double* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load double, double* %5, align 8
  %15 = call i32 @snprintf(i8* %12, i64 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %108

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %108

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @from_locale(i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 46)
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 101)
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 3
  %39 = load i64, i64* %7, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %108

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 46, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 48, i8* %49, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 2
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 2
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %42, %32, %26
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 101)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %105

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 48
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  br label %74

82:                                               ; preds = %74
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub i64 %89, %94
  %96 = call i32 @memmove(i8* %87, i8* %88, i64 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load i64, i64* %11, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %86, %82
  br label %105

105:                                              ; preds = %104, %56
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %41, %25, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @snprintf(i8*, i64, i8*, double) #1

declare dso_local i32 @from_locale(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
