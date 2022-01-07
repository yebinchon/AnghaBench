; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_d2i_param.c_d2i_KeyParams.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_d2i_param.c_d2i_KeyParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i8**, i64)* }

@ASN1_F_D2I_KEYPARAMS = common dso_local global i32 0, align 4
@ASN1_R_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @d2i_KeyParams(i32 %0, %struct.TYPE_11__** %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %11, align 8
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %15 = icmp eq %struct.TYPE_11__** %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %4
  %21 = call %struct.TYPE_11__* (...) @EVP_PKEY_new()
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %86

24:                                               ; preds = %20
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = call i32 @EVP_PKEY_id(%struct.TYPE_11__* %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @EVP_PKEY_set_type(%struct.TYPE_11__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %74

39:                                               ; preds = %33, %28
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = icmp eq %struct.TYPE_10__* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_11__*, i8**, i64)*, i32 (%struct.TYPE_11__*, i8**, i64)** %48, align 8
  %50 = icmp eq i32 (%struct.TYPE_11__*, i8**, i64)* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44, %39
  %52 = load i32, i32* @ASN1_F_D2I_KEYPARAMS, align 4
  %53 = load i32, i32* @ASN1_R_UNSUPPORTED_TYPE, align 4
  %54 = call i32 @ASN1err(i32 %52, i32 %53)
  br label %74

55:                                               ; preds = %44
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_11__*, i8**, i64)*, i32 (%struct.TYPE_11__*, i8**, i64)** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 %60(%struct.TYPE_11__* %61, i8** %11, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %68 = icmp ne %struct.TYPE_11__** %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %5, align 8
  br label %86

74:                                               ; preds = %65, %51, %38
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %76 = icmp eq %struct.TYPE_11__** %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = icmp ne %struct.TYPE_11__* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %74
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = call i32 @EVP_PKEY_free(%struct.TYPE_11__* %83)
  br label %85

85:                                               ; preds = %82, %77
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %86

86:                                               ; preds = %85, %72, %23
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %87
}

declare dso_local %struct.TYPE_11__* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_id(%struct.TYPE_11__*) #1

declare dso_local i32 @EVP_PKEY_set_type(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
