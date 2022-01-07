; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_b64.c_SCT_new_from_base64.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_b64.c_SCT_new_from_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CT_F_SCT_NEW_FROM_BASE64 = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CT_R_SCT_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@X509_R_BASE64_DECODE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SCT_new_from_base64(i8 zeroext %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8 %0, i8* %8, align 1
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = call i32* (...) @SCT_new()
  store i32* %18, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @CT_F_SCT_NEW_FROM_BASE64, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @CTerr(i32 %22, i32 %23)
  store i32* null, i32** %7, align 8
  br label %97

25:                                               ; preds = %6
  %26 = load i32*, i32** %14, align 8
  %27 = load i8, i8* %8, align 1
  %28 = call i32 @SCT_set_version(i32* %26, i8 zeroext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @CT_F_SCT_NEW_FROM_BASE64, align 4
  %32 = load i32, i32* @CT_R_SCT_UNSUPPORTED_VERSION, align 4
  %33 = call i32 @CTerr(i32 %31, i32 %32)
  br label %92

34:                                               ; preds = %25
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @ct_base64_decode(i8* %35, i8** %15)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @CT_F_SCT_NEW_FROM_BASE64, align 4
  %41 = load i32, i32* @X509_R_BASE64_DECODE_ERROR, align 4
  %42 = call i32 @CTerr(i32 %40, i32 %41)
  br label %92

43:                                               ; preds = %34
  %44 = load i32*, i32** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @SCT_set0_log_id(i32* %44, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %92

50:                                               ; preds = %43
  store i8* null, i8** %15, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @ct_base64_decode(i8* %51, i8** %15)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @CT_F_SCT_NEW_FROM_BASE64, align 4
  %57 = load i32, i32* @X509_R_BASE64_DECODE_ERROR, align 4
  %58 = call i32 @CTerr(i32 %56, i32 %57)
  br label %92

59:                                               ; preds = %50
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @SCT_set0_extensions(i32* %60, i8* %61, i32 %62)
  store i8* null, i8** %15, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @ct_base64_decode(i8* %64, i8** %15)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @CT_F_SCT_NEW_FROM_BASE64, align 4
  %70 = load i32, i32* @X509_R_BASE64_DECODE_ERROR, align 4
  %71 = call i32 @CTerr(i32 %69, i32 %70)
  br label %92

72:                                               ; preds = %59
  %73 = load i8*, i8** %15, align 8
  store i8* %73, i8** %16, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i64 @o2i_SCT_signature(i32* %74, i8** %16, i32 %75)
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %92

79:                                               ; preds = %72
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @OPENSSL_free(i8* %80)
  store i8* null, i8** %15, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @SCT_set_timestamp(i32* %82, i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @SCT_set_log_entry_type(i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %92

90:                                               ; preds = %79
  %91 = load i32*, i32** %14, align 8
  store i32* %91, i32** %7, align 8
  br label %97

92:                                               ; preds = %89, %78, %68, %55, %49, %39, %30
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @OPENSSL_free(i8* %93)
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @SCT_free(i32* %95)
  store i32* null, i32** %7, align 8
  br label %97

97:                                               ; preds = %92, %90, %21
  %98 = load i32*, i32** %7, align 8
  ret i32* %98
}

declare dso_local i32* @SCT_new(...) #1

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i32 @SCT_set_version(i32*, i8 zeroext) #1

declare dso_local i32 @ct_base64_decode(i8*, i8**) #1

declare dso_local i32 @SCT_set0_log_id(i32*, i8*, i32) #1

declare dso_local i32 @SCT_set0_extensions(i32*, i8*, i32) #1

declare dso_local i64 @o2i_SCT_signature(i32*, i8**, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @SCT_set_timestamp(i32*, i32) #1

declare dso_local i32 @SCT_set_log_entry_type(i32*, i32) #1

declare dso_local i32 @SCT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
