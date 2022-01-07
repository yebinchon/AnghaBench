; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_GetLengthIndefinite.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_GetLengthIndefinite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_E_ASN1_CORRUPT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_EOD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CMSG_INDEFINITE_LENGTH = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @CRYPT_GetLengthIndefinite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_GetLengthIndefinite(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %14 = call i32 @SetLastError(i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %7, align 4
  br label %104

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 127
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @CRYPT_E_ASN1_EOD, align 4
  %30 = call i32 @SetLastError(i32 %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %7, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %32, %28
  br label %103

39:                                               ; preds = %16
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @CMSG_INDEFINITE_LENGTH, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %7, align 4
  br label %102

48:                                               ; preds = %39
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GET_LEN_BYTES(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 5
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @CRYPT_E_ASN1_LARGE, align 4
  %58 = call i32 @SetLastError(i32 %57)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %7, align 4
  br label %101

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 2
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %67 = call i32 @SetLastError(i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %7, align 4
  br label %100

69:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32* %71, i32** %4, align 8
  br label %72

72:                                               ; preds = %76, %69
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 8
  store i32 %78, i32* %9, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %4, align 8
  %81 = load i32, i32* %79, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %72

84:                                               ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %5, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @CRYPT_E_ASN1_EOD, align 4
  %93 = call i32 @SetLastError(i32 %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %7, align 4
  br label %99

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100, %56
  br label %102

102:                                              ; preds = %101, %44
  br label %103

103:                                              ; preds = %102, %38
  br label %104

104:                                              ; preds = %103, %12
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GET_LEN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
