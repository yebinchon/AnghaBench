; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_do_EC_KEY_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_do_EC_KEY_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_DO_EC_KEY_PRINT = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_KEY_PRINT_PARAM = common dso_local global i64 0, align 8
@EC_KEY_PRINT_PRIVATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Private-Key\00", align 1
@EC_KEY_PRINT_PUBLIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Public-Key\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ECDSA-Parameters\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: (%d bit)\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%*spriv:\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%*spub:\0A\00", align 1
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i64)* @do_EC_KEY_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_EC_KEY_print(i32* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @EC_KEY_get0_group(i32* %20)
  store i32* %21, i32** %16, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EC_F_DO_EC_KEY_PRINT, align 4
  %25 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %26 = call i32 @ECerr(i32 %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %145

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @EC_KEY_PRINT_PARAM, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @EC_KEY_get0_public_key(i32* %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @EC_KEY_get_conv_form(i32* %37)
  %39 = call i64 @EC_KEY_key2buf(i32* %36, i32 %38, i8** %12, i32* null)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %131

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %31, %27
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @EC_KEY_PRINT_PRIVATE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @EC_KEY_get0_private_key(i32* %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @EC_KEY_priv2buf(i32* %53, i8** %11)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %131

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %48, %44
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @EC_KEY_PRINT_PRIVATE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %71

64:                                               ; preds = %59
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @EC_KEY_PRINT_PUBLIC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %70

69:                                               ; preds = %64
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @BIO_indent(i32* %72, i32 %73, i32 128)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %131

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @EC_GROUP_order_bits(i32* %80)
  %82 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %81)
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %131

85:                                               ; preds = %77
  %86 = load i64, i64* %13, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %131

94:                                               ; preds = %88
  %95 = load i32*, i32** %6, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 4
  %100 = call i64 @ASN1_buf_print(i32* %95, i8* %96, i64 %97, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %131

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i64, i64* %14, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %104
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %131

113:                                              ; preds = %107
  %114 = load i32*, i32** %6, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 4
  %119 = call i64 @ASN1_buf_print(i32* %114, i8* %115, i64 %116, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %131

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %104
  %124 = load i32*, i32** %6, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @ECPKParameters_print(i32* %124, i32* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  br label %131

130:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %130, %129, %121, %112, %102, %93, %84, %76, %57, %42
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @EC_F_DO_EC_KEY_PRINT, align 4
  %136 = load i32, i32* @ERR_R_EC_LIB, align 4
  %137 = call i32 @ECerr(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i8*, i8** %11, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @OPENSSL_clear_free(i8* %139, i64 %140)
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @OPENSSL_free(i8* %142)
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %138, %23
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i64 @EC_KEY_key2buf(i32*, i32, i8**, i32*) #1

declare dso_local i32 @EC_KEY_get_conv_form(i32*) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i64 @EC_KEY_priv2buf(i32*, i8**) #1

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @EC_GROUP_order_bits(i32*) #1

declare dso_local i64 @ASN1_buf_print(i32*, i8*, i64, i32) #1

declare dso_local i32 @ECPKParameters_print(i32*, i32*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
