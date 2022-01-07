; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_t_x509.c_X509_aux_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_t_x509.c_X509_aux_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OBJECT = common dso_local global i32 0, align 4
@trust = common dso_local global i32 0, align 4
@reject = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%*sTrusted Uses:\0A%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%*sNo Trusted Uses.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%*sRejected Uses:\0A%*s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%*sNo Rejected Uses.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%*sAlias: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%*sKey Id: \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%02X\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_aux_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [80 x i8], align 16
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @ASN1_OBJECT, align 4
  %15 = call i32 @STACK_OF(i32 %14)
  %16 = load i32, i32* @trust, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32*, i32** @reject, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @X509_trusted(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %153

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @X509_get0_trust_objects(i32* %25)
  store i32 %26, i32* @trust, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @X509_get0_reject_objects(i32* %27)
  store i32* %28, i32** @reject, align 8
  %29 = load i32, i32* @trust, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %24
  store i8 1, i8* %9, align 1
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %58, %31
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @trust, align 4
  %40 = call i32 @sk_ASN1_OBJECT_num(i32 %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i8, i8* %9, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @BIO_puts(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %49

48:                                               ; preds = %42
  store i8 0, i8* %9, align 1
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* @trust, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @sk_ASN1_OBJECT_value(i32 %51, i32 %52)
  %54 = call i32 @OBJ_obj2txt(i8* %50, i32 80, i32 %53, i32 0)
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %57 = call i32 @BIO_puts(i32* %55, i8* %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @BIO_puts(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %68

64:                                               ; preds = %24
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32*, i32** @reject, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %106

71:                                               ; preds = %68
  store i8 1, i8* %9, align 1
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 2
  %76 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %100, %71
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** @reject, align 8
  %80 = ptrtoint i32* %79 to i32
  %81 = call i32 @sk_ASN1_OBJECT_num(i32 %80)
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load i8, i8* %9, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @BIO_puts(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %90

89:                                               ; preds = %83
  store i8 0, i8* %9, align 1
  br label %90

90:                                               ; preds = %89, %86
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %92 = load i32*, i32** @reject, align 8
  %93 = ptrtoint i32* %92 to i32
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @sk_ASN1_OBJECT_value(i32 %93, i32 %94)
  %96 = call i32 @OBJ_obj2txt(i8* %91, i32 80, i32 %95, i32 0)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %99 = call i32 @BIO_puts(i32* %97, i8* %98)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @BIO_puts(i32* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %110

106:                                              ; preds = %68
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32*, i32** %6, align 8
  %112 = call i8* @X509_alias_get0(i32* %111, i32* null)
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32*, i32** %6, align 8
  %122 = call i8* @X509_keyid_get0(i32* %121, i32* %12)
  store i8* %122, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %152

125:                                              ; preds = %120
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %146, %125
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %138, i32 %144)
  br label %146

146:                                              ; preds = %133
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %129

149:                                              ; preds = %129
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @BIO_write(i32* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %152

152:                                              ; preds = %149, %120
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %23
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i64 @X509_trusted(i32*) #1

declare dso_local i32 @X509_get0_trust_objects(i32*) #1

declare dso_local i32* @X509_get0_reject_objects(i32*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @sk_ASN1_OBJECT_num(i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32, i32) #1

declare dso_local i32 @sk_ASN1_OBJECT_value(i32, i32) #1

declare dso_local i8* @X509_alias_get0(i32*, i32*) #1

declare dso_local i8* @X509_keyid_get0(i32*, i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
