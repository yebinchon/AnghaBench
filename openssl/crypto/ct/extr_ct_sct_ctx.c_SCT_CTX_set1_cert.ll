; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_sct_ctx.c_SCT_CTX_set1_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_sct_ctx.c_SCT_CTX_set1_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i32 }

@NID_ct_precert_poison = common dso_local global i32 0, align 4
@NID_ct_precert_scts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCT_CTX_set1_cert(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @NID_ct_precert_poison, align 4
  %20 = call i32 @ct_x509_get_ext(i32* %18, i32 %19, i32* %14)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %107

24:                                               ; preds = %3
  %25 = load i32, i32* %16, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %107

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @i2d_X509(i32* %32, i8** %8)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %107

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @NID_ct_precert_scts, align 4
  %41 = call i32 @ct_x509_get_ext(i32* %39, i32 %40, i32* %15)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %107

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %16, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %107

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @X509_dup(i32* %61)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %107

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32* @X509_delete_ext(i32* %67, i32 %68)
  store i32* %69, i32** %17, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @X509_EXTENSION_free(i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ct_x509_cert_fixup(i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %107

77:                                               ; preds = %66
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @i2d_re_X509_tbs(i32* %78, i8** %9)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %107

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %57
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @X509_free(i32* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @OPENSSL_free(i8* %89)
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @OPENSSL_free(i8* %99)
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  store i32 1, i32* %4, align 4
  br label %114

107:                                              ; preds = %82, %76, %65, %51, %44, %36, %30, %23
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @OPENSSL_free(i8* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @OPENSSL_free(i8* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @X509_free(i32* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %107, %84
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @ct_x509_get_ext(i32*, i32, i32*) #1

declare dso_local i32 @i2d_X509(i32*, i8**) #1

declare dso_local i32* @X509_dup(i32*) #1

declare dso_local i32* @X509_delete_ext(i32*, i32) #1

declare dso_local i32 @X509_EXTENSION_free(i32*) #1

declare dso_local i32 @ct_x509_cert_fixup(i32*, i32*) #1

declare dso_local i32 @i2d_re_X509_tbs(i32*, i8**) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
