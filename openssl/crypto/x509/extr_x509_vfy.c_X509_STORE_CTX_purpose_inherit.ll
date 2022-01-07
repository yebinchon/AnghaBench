; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_X509_STORE_CTX_purpose_inherit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_X509_STORE_CTX_purpose_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@X509_F_X509_STORE_CTX_PURPOSE_INHERIT = common dso_local global i32 0, align 4
@X509_R_UNKNOWN_PURPOSE_ID = common dso_local global i32 0, align 4
@X509_TRUST_DEFAULT = common dso_local global i32 0, align 4
@X509_R_UNKNOWN_TRUST_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_CTX_purpose_inherit(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @X509_PURPOSE_get_by_id(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @X509_F_X509_STORE_CTX_PURPOSE_INHERIT, align 4
  %26 = load i32, i32* @X509_R_UNKNOWN_PURPOSE_ID, align 4
  %27 = call i32 @X509err(i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %102

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.TYPE_8__* @X509_PURPOSE_get0(i32 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %11, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @X509_TRUST_DEFAULT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @X509_PURPOSE_get_by_id(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @X509_F_X509_STORE_CTX_PURPOSE_INHERIT, align 4
  %43 = load i32, i32* @X509_R_UNKNOWN_PURPOSE_ID, align 4
  %44 = call i32 @X509err(i32 %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %102

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.TYPE_8__* @X509_PURPOSE_get0(i32 %46)
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %11, align 8
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %16
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @X509_TRUST_get_by_id(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @X509_F_X509_STORE_CTX_PURPOSE_INHERIT, align 4
  %66 = load i32, i32* @X509_R_UNKNOWN_TRUST_ID, align 4
  %67 = call i32 @X509err(i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %102

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %72, %69
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %88, %85
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %64, %41, %24
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @X509_PURPOSE_get_by_id(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local %struct.TYPE_8__* @X509_PURPOSE_get0(i32) #1

declare dso_local i32 @X509_TRUST_get_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
