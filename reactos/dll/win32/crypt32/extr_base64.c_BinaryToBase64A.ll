; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_BinaryToBase64A.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_BinaryToBase64A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BinaryToBase64A.crlf = internal constant [3 x i8] c"\0D\0A\00", align 1
@BinaryToBase64A.lf = internal constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CRYPT_STRING_NOCR = common dso_local global i32 0, align 4
@CRYPT_STRING_NOCRLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CERT_HEADER = common dso_local global i8* null, align 8
@CERT_TRAILER = common dso_local global i8* null, align 8
@CERT_REQUEST_HEADER = common dso_local global i8* null, align 8
@CERT_REQUEST_TRAILER = common dso_local global i8* null, align 8
@X509_HEADER = common dso_local global i8* null, align 8
@X509_TRAILER = common dso_local global i8* null, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32*)* @BinaryToBase64A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BinaryToBase64A(i32* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CRYPT_STRING_NOCR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @BinaryToBase64A.lf, i64 0, i64 0), i8** %14, align 8
  br label %32

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CRYPT_STRING_NOCRLF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %31

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BinaryToBase64A.crlf, i64 0, i64 0), i8** %14, align 8
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 268435455
  switch i32 %34, label %45 [
    i32 131, label %35
    i32 130, label %36
    i32 129, label %39
    i32 128, label %42
  ]

35:                                               ; preds = %32
  br label %45

36:                                               ; preds = %32
  %37 = load i8*, i8** @CERT_HEADER, align 8
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** @CERT_TRAILER, align 8
  store i8* %38, i8** %13, align 8
  br label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** @CERT_REQUEST_HEADER, align 8
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** @CERT_REQUEST_TRAILER, align 8
  store i8* %41, i8** %13, align 8
  br label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** @X509_HEADER, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** @X509_TRAILER, align 8
  store i8* %44, i8** %13, align 8
  br label %45

45:                                               ; preds = %32, %42, %39, %36, %35
  store i32 0, i32* %15, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @encodeBase64A(i32* %46, i32 %47, i8* %48, i8* null, i32* %15)
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %65, %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %63, %60
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %137

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %130

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %16, align 8
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %17, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load i8*, i8** %16, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @strcpy(i8* %85, i8* %86)
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = load i8*, i8** %16, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %16, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @strcpy(i8* %93, i8* %94)
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = load i8*, i8** %16, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %16, align 8
  br label %101

101:                                              ; preds = %84, %79
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @encodeBase64A(i32* %102, i32 %103, i8* %104, i8* %105, i32* %17)
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i8*, i8** %16, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %101
  %115 = load i8*, i8** %16, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @strcpy(i8* %115, i8* %116)
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = load i8*, i8** %16, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %16, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 @strcpy(i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %114, %101
  %127 = load i32, i32* %15, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %136

130:                                              ; preds = %74
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %134 = call i32 @SetLastError(i32 %133)
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %130, %126
  br label %140

137:                                              ; preds = %71
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %136
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local i32 @encodeBase64A(i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
