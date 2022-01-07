; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_env_asn1_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_env_asn1_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*)* }

@CMS_RECIPINFO_TRANS = common dso_local global i64 0, align 8
@CMS_RECIPINFO_AGREE = common dso_local global i64 0, align 8
@ASN1_PKEY_CTRL_CMS_ENVELOPE = common dso_local global i32 0, align 4
@CMS_F_CMS_ENV_ASN1_CTRL = common dso_local global i32 0, align 4
@CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE = common dso_local global i32 0, align 4
@CMS_R_CTRL_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_env_asn1_ctrl(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CMS_RECIPINFO_TRANS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CMS_RECIPINFO_AGREE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %84

37:                                               ; preds = %27
  %38 = load i32*, i32** %8, align 8
  %39 = call %struct.TYPE_15__* @EVP_PKEY_CTX_get0_pkey(i32* %38)
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %6, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = icmp eq %struct.TYPE_15__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %84

43:                                               ; preds = %37
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %84

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = icmp eq %struct.TYPE_14__* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*)** %55, align 8
  %57 = icmp eq i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*)* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %46
  store i32 1, i32* %3, align 4
  br label %84

59:                                               ; preds = %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*)** %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = load i32, i32* @ASN1_PKEY_CTRL_CMS_ENVELOPE, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = call i32 %64(%struct.TYPE_15__* %65, i32 %66, i32 %67, %struct.TYPE_16__* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, -2
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load i32, i32* @CMS_F_CMS_ENV_ASN1_CTRL, align 4
  %74 = load i32, i32* @CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE, align 4
  %75 = call i32 @CMSerr(i32 %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %84

76:                                               ; preds = %59
  %77 = load i32, i32* %7, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @CMS_F_CMS_ENV_ASN1_CTRL, align 4
  %81 = load i32, i32* @CMS_R_CTRL_FAILURE, align 4
  %82 = call i32 @CMSerr(i32 %80, i32 %81)
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %79, %72, %58, %44, %42, %36
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_15__* @EVP_PKEY_CTX_get0_pkey(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
