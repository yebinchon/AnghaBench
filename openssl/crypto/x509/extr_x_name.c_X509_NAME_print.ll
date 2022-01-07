; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_name.c_X509_NAME_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_name.c_X509_NAME_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@X509_F_X509_NAME_PRINT = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_NAME_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 78, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @X509_NAME_oneline(i32* %15, i32* null, i32 0)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

20:                                               ; preds = %3
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @OPENSSL_free(i8* %26)
  store i32 1, i32* %4, align 4
  br label %116

28:                                               ; preds = %20
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %102, %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @ossl_isupper(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %66, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @ossl_isupper(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 61
  br i1 %60, label %66, label %61

61:                                               ; preds = %55, %49, %37, %32
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %61, %55, %43
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @BIO_write(i32* %73, i8* %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %110

80:                                               ; preds = %66
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @BIO_write(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %90 = icmp ne i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %110

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %61
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %107

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %11, align 4
  br label %32

107:                                              ; preds = %101
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @OPENSSL_free(i8* %108)
  store i32 1, i32* %4, align 4
  br label %116

110:                                              ; preds = %91, %79
  %111 = load i32, i32* @X509_F_X509_NAME_PRINT, align 4
  %112 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %113 = call i32 @X509err(i32 %111, i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @OPENSSL_free(i8* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %107, %25, %19
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i8* @X509_NAME_oneline(i32*, i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @ossl_isupper(i8 signext) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @X509err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
