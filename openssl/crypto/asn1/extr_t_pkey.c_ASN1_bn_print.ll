; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_t_pkey.c_ASN1_bn_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_t_pkey.c_ASN1_bn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ASN1_PRINT_MAX_INDENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s 0\0A\00", align 1
@BN_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s %s%lu (%s0x%lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (Negative)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_bn_print(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %122

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @BN_is_negative(i32* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %14, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ASN1_PRINT_MAX_INDENT, align 4
  %30 = call i32 @BIO_indent(i32* %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %122

33:                                               ; preds = %21
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @BN_is_zero(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 (i32*, i8*, i8*, ...) @BIO_printf(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %122

43:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %122

44:                                               ; preds = %33
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @BN_num_bytes(i32* %45)
  %47 = load i32, i32* @BN_BYTES, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64* @bn_get_words(i32* %53)
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64* @bn_get_words(i32* %58)
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 (i32*, i8*, i8*, ...) @BIO_printf(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52, i64 %56, i8* %57, i64 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %122

65:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %122

66:                                               ; preds = %44
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @BN_num_bytes(i32* %67)
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i8* @OPENSSL_malloc(i32 %70)
  store i8* %71, i8** %16, align 8
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %117

75:                                               ; preds = %66
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 0, i8* %77, align 1
  %78 = load i32*, i32** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %87 = call i64 (i32*, i8*, i8*, ...) @BIO_printf(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %86)
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %117

90:                                               ; preds = %75
  %91 = load i32*, i32** %9, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i32 @BN_bn2bin(i32* %91, i8* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %107

104:                                              ; preds = %90
  %105 = load i8*, i8** %16, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %16, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 4
  %113 = call i64 @ASN1_buf_print(i32* %108, i8* %109, i32 %110, i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %117

116:                                              ; preds = %107
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %115, %89, %74
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @OPENSSL_clear_free(i8* %118, i32 %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %117, %65, %64, %43, %42, %32, %20
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i64* @bn_get_words(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i64 @ASN1_buf_print(i32*, i8*, i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
