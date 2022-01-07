; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_wlregistry.c_WinLdrGetNLSNames.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_wlregistry.c_WinLdrGetNLSNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 78, i32 76, i32 83, i32 92, i32 67, i32 111, i32 100, i32 101, i32 80, i32 97, i32 103, i32 101, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 65, i32 67, i32 80, i32 0], align 4
@.str.2 = private unnamed_addr constant [11 x i32] [i32 99, i32 95, i32 49, i32 50, i32 53, i32 50, i32 46, i32 110, i32 108, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.4 = private unnamed_addr constant [6 x i32] [i32 79, i32 69, i32 77, i32 67, i32 80, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 99, i32 95, i32 52, i32 51, i32 55, i32 46, i32 110, i32 108, i32 115, i32 0], align 4
@.str.6 = private unnamed_addr constant [64 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 78, i32 76, i32 83, i32 92, i32 76, i32 97, i32 110, i32 103, i32 117, i32 97, i32 103, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [8 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @WinLdrGetNLSNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WinLdrGetNLSNames(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [80 x i8], align 16
  %11 = alloca [80 x i8], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %13, i64* %8, align 8
  %14 = call i64 @RegOpenKey(i32* null, i8* bitcast ([64 x i32]* @.str to i8*), i32* %9)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %103

20:                                               ; preds = %3
  store i32 80, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %23 = ptrtoint i8* %22 to i32
  %24 = call i64 @RegQueryValue(i32 %21, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* null, i32 %23, i32* %12)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %103

30:                                               ; preds = %20
  store i32 80, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %34 = ptrtoint i8* %33 to i32
  %35 = call i64 @RegQueryValue(i32 %31, i8* %32, i32* null, i32 %34, i32* %12)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %41 = call i32 @wcscpy(i8* %40, i8* bitcast ([11 x i32]* @.str.2 to i8*))
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %45 = call i32 @sprintf(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32 80, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %48 = ptrtoint i8* %47 to i32
  %49 = call i64 @RegQueryValue(i32 %46, i8* bitcast ([6 x i32]* @.str.4 to i8*), i32* null, i32 %48, i32* %12)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %103

55:                                               ; preds = %42
  store i32 80, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %59 = ptrtoint i8* %58 to i32
  %60 = call i64 @RegQueryValue(i32 %56, i8* %57, i32* null, i32 %59, i32* %12)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %66 = call i32 @wcscpy(i8* %65, i8* bitcast ([10 x i32]* @.str.5 to i8*))
  br label %67

67:                                               ; preds = %64, %55
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %70 = call i32 @sprintf(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = call i64 @RegOpenKey(i32* null, i8* bitcast ([64 x i32]* @.str.6 to i8*), i32* %9)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %4, align 4
  br label %103

77:                                               ; preds = %67
  store i32 80, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %80 = ptrtoint i8* %79 to i32
  %81 = call i64 @RegQueryValue(i32 %78, i8* bitcast ([8 x i32]* @.str.7 to i8*), i32* null, i32 %80, i32* %12)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %4, align 4
  br label %103

87:                                               ; preds = %77
  store i32 80, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %91 = ptrtoint i8* %90 to i32
  %92 = call i64 @RegQueryValue(i32 %88, i8* %89, i32* null, i32 %91, i32* %12)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @ERROR_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %4, align 4
  br label %103

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %101 = call i32 @sprintf(i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %96, %85, %75, %53, %28, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @RegOpenKey(i32*, i8*, i32*) #1

declare dso_local i64 @RegQueryValue(i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @wcscpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
