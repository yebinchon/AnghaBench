; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_x509_check_cert_time.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_x509_check_cert_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@X509_V_FLAG_USE_CHECK_TIME = common dso_local global i32 0, align 4
@X509_V_FLAG_NO_CHECK_TIME = common dso_local global i32 0, align 4
@X509_V_ERR_ERROR_IN_CERT_NOT_BEFORE_FIELD = common dso_local global i32 0, align 4
@X509_V_ERR_CERT_NOT_YET_VALID = common dso_local global i32 0, align 4
@X509_V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD = common dso_local global i32 0, align 4
@X509_V_ERR_CERT_HAS_EXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_check_cert_time(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @X509_V_FLAG_USE_CHECK_TIME, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32* %22, i32** %8, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @X509_V_FLAG_NO_CHECK_TIME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %102

33:                                               ; preds = %23
  store i32* null, i32** %8, align 8
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @X509_get0_notBefore(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @X509_cmp_time(i32 %37, i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %102

46:                                               ; preds = %42, %35
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @X509_V_ERR_ERROR_IN_CERT_NOT_BEFORE_FIELD, align 4
  %54 = call i32 @verify_cb_cert(%struct.TYPE_6__* %50, i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %102

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @X509_V_ERR_CERT_NOT_YET_VALID, align 4
  %65 = call i32 @verify_cb_cert(%struct.TYPE_6__* %61, i32* %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %102

68:                                               ; preds = %60, %57
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @X509_get0_notAfter(i32* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @X509_cmp_time(i32 %70, i32* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %102

79:                                               ; preds = %75, %68
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @X509_V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD, align 4
  %87 = call i32 @verify_cb_cert(%struct.TYPE_6__* %83, i32* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %102

90:                                               ; preds = %82, %79
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @X509_V_ERR_CERT_HAS_EXPIRED, align 4
  %98 = call i32 @verify_cb_cert(%struct.TYPE_6__* %94, i32* %95, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %93, %90
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %100, %89, %78, %67, %56, %45, %32
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @X509_cmp_time(i32, i32*) #1

declare dso_local i32 @X509_get0_notBefore(i32*) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @X509_get0_notAfter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
