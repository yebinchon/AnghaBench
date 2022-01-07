; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_GetCertificateOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_GetCertificateOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@FILE_BEGIN = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"len = %x addr = %x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32*)* @IMAGEHLP_GetCertificateOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IMAGEHLP_GetCertificateOffset(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @IMAGEHLP_GetSecurityDirOffset(i32 %16, i32* %14, i32* %10)
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %15, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %5, align 8
  br label %100

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %22, %86
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @FILE_BEGIN, align 4
  %29 = call i32 @SetFilePointer(i32 %24, i32 %27, i32* null, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @INVALID_SET_FILE_POINTER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %5, align 8
  br label %100

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ReadFile(i32 %36, i32* %13, i32 4, i32* %11, i32* null)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %5, align 8
  br label %100

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %5, align 8
  br label %100

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 4
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %5, align 8
  br label %100

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %5, align 8
  br label %100

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %7, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %87

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = srem i32 %71, 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = srem i32 %75, 8
  %77 = sub nsw i32 8, %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @FALSE, align 8
  store i64 %85, i64* %5, align 8
  br label %100

86:                                               ; preds = %80
  br label %23

87:                                               ; preds = %66
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32*, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %87, %84, %60, %52, %46, %40, %33, %20
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i64 @IMAGEHLP_GetSecurityDirOffset(i32, i32*, i32*) #1

declare dso_local i32 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i64 @ReadFile(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
