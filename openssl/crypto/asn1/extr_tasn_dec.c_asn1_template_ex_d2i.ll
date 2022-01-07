; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_template_ex_d2i.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_template_ex_d2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ASN1_TFLG_TAG_CLASS = common dso_local global i32 0, align 4
@ASN1_TFLG_EXPTAG = common dso_local global i32 0, align 4
@ASN1_F_ASN1_TEMPLATE_EX_D2I = common dso_local global i32 0, align 4
@ERR_R_NESTED_ASN1_ERROR = common dso_local global i32 0, align 4
@ASN1_R_EXPLICIT_TAG_NOT_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN1_R_MISSING_EOC = common dso_local global i32 0, align 4
@ASN1_R_EXPLICIT_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, i64, %struct.TYPE_4__*, i8, i32*, i32)* @asn1_template_ex_d2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_template_ex_d2i(i32** %0, i8** %1, i64 %2, %struct.TYPE_4__* %3, i8 signext %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i32** %0, i32*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %12, align 8
  store i8 %4, i8* %13, align 1
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32**, i32*** %9, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %122

27:                                               ; preds = %7
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @ASN1_TFLG_TAG_CLASS, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %20, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @ASN1_TFLG_EXPTAG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %27
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i8, i8* %13, align 1
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @asn1_check_tlen(i64* %19, i32* null, i32* null, i8* %22, i8* %23, i8** %20, i64 %41, i32 %44, i32 %45, i8 signext %46, i32* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i8*, i8** %20, align 8
  store i8* %49, i8** %21, align 8
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @ASN1_F_ASN1_TEMPLATE_EX_D2I, align 4
  %54 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %55 = call i32 @ASN1err(i32 %53, i32 %54)
  store i32 0, i32* %8, align 4
  br label %122

56:                                               ; preds = %40
  %57 = load i32, i32* %18, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %8, align 4
  br label %122

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  %62 = load i8, i8* %23, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @ASN1_F_ASN1_TEMPLATE_EX_D2I, align 4
  %66 = load i32, i32* @ASN1_R_EXPLICIT_TAG_NOT_CONSTRUCTED, align 4
  %67 = call i32 @ASN1err(i32 %65, i32 %66)
  store i32 0, i32* %8, align 4
  br label %122

68:                                               ; preds = %61
  %69 = load i32**, i32*** %9, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @asn1_template_noexp_d2i(i32** %69, i8** %20, i64 %70, %struct.TYPE_4__* %71, i8 signext 0, i32* %72, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @ASN1_F_ASN1_TEMPLATE_EX_D2I, align 4
  %79 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %80 = call i32 @ASN1err(i32 %78, i32 %79)
  store i32 0, i32* %8, align 4
  br label %122

81:                                               ; preds = %68
  %82 = load i8*, i8** %20, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = load i64, i64* %19, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %19, align 8
  %89 = load i8, i8* %22, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %81
  %92 = load i64, i64* %19, align 8
  %93 = call i32 @asn1_check_eoc(i8** %20, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @ASN1_F_ASN1_TEMPLATE_EX_D2I, align 4
  %97 = load i32, i32* @ASN1_R_MISSING_EOC, align 4
  %98 = call i32 @ASN1err(i32 %96, i32 %97)
  br label %121

99:                                               ; preds = %91
  br label %108

100:                                              ; preds = %81
  %101 = load i64, i64* %19, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @ASN1_F_ASN1_TEMPLATE_EX_D2I, align 4
  %105 = load i32, i32* @ASN1_R_EXPLICIT_LENGTH_MISMATCH, align 4
  %106 = call i32 @ASN1err(i32 %104, i32 %105)
  br label %121

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %99
  br label %118

109:                                              ; preds = %27
  %110 = load i32**, i32*** %9, align 8
  %111 = load i8**, i8*** %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %114 = load i8, i8* %13, align 1
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @asn1_template_noexp_d2i(i32** %110, i8** %111, i64 %112, %struct.TYPE_4__* %113, i8 signext %114, i32* %115, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %122

118:                                              ; preds = %108
  %119 = load i8*, i8** %20, align 8
  %120 = load i8**, i8*** %10, align 8
  store i8* %119, i8** %120, align 8
  store i32 1, i32* %8, align 4
  br label %122

121:                                              ; preds = %103, %95
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %118, %109, %77, %64, %59, %52, %26
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @asn1_check_tlen(i64*, i32*, i32*, i8*, i8*, i8**, i64, i32, i32, i8 signext, i32*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @asn1_template_noexp_d2i(i32**, i8**, i64, %struct.TYPE_4__*, i8 signext, i32*, i32) #1

declare dso_local i32 @asn1_check_eoc(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
