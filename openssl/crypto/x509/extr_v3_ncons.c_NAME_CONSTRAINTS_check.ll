; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_NAME_CONSTRAINTS_check.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_NAME_CONSTRAINTS_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i64 }

@NAME_CHECK_MAX = common dso_local global i32 0, align 4
@X509_V_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@GEN_EMAIL = common dso_local global i32 0, align 4
@NID_pkcs9_emailAddress = common dso_local global i32 0, align 4
@V_ASN1_IA5STRING = common dso_local global i64 0, align 8
@X509_V_ERR_UNSUPPORTED_NAME_SYNTAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NAME_CONSTRAINTS_check(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32* @X509_get_subject_name(%struct.TYPE_13__* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @X509_NAME_entry_count(i32* %16)
  %18 = trunc i64 %17 to i32
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sk_GENERAL_NAME_num(i32 %21)
  %23 = call i32 @add_lengths(i32* %8, i32 %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sk_GENERAL_SUBTREE_num(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sk_GENERAL_SUBTREE_num(i32 %32)
  %34 = call i32 @add_lengths(i32* %9, i32 %29, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NAME_CHECK_MAX, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sdiv i32 %41, %42
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %25, %2
  %46 = load i32, i32* @X509_V_ERR_UNSPECIFIED, align 4
  store i32 %46, i32* %3, align 4
  br label %130

47:                                               ; preds = %39, %36
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @X509_NAME_entry_count(i32* %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load i32, i32* @GEN_DIRNAME, align 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = call i32 @nc_match(%struct.TYPE_15__* %11, %struct.TYPE_14__* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @X509_V_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %130

64:                                               ; preds = %51
  %65 = load i32, i32* @GEN_EMAIL, align 4
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  store i32 -1, i32* %7, align 4
  br label %67

67:                                               ; preds = %100, %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* @NID_pkcs9_emailAddress, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @X509_NAME_get_index_by_NID(i32* %68, i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %101

75:                                               ; preds = %67
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32* @X509_NAME_get_entry(i32* %76, i32 %77)
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call %struct.TYPE_16__* @X509_NAME_ENTRY_get_data(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @V_ASN1_IA5STRING, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @X509_V_ERR_UNSUPPORTED_NAME_SYNTAX, align 4
  store i32 %91, i32* %3, align 4
  br label %130

92:                                               ; preds = %75
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = call i32 @nc_match(%struct.TYPE_15__* %11, %struct.TYPE_14__* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @X509_V_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %130

100:                                              ; preds = %92
  br label %67

101:                                              ; preds = %74
  br label %102

102:                                              ; preds = %101, %47
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %125, %102
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sk_GENERAL_NAME_num(i32 %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %103
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call %struct.TYPE_15__* @sk_GENERAL_NAME_value(i32 %113, i32 %114)
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** %13, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = call i32 @nc_match(%struct.TYPE_15__* %116, %struct.TYPE_14__* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @X509_V_OK, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %130

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %103

128:                                              ; preds = %103
  %129 = load i32, i32* @X509_V_OK, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %122, %98, %90, %62, %45
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32* @X509_get_subject_name(%struct.TYPE_13__*) #1

declare dso_local i32 @add_lengths(i32*, i32, i32) #1

declare dso_local i64 @X509_NAME_entry_count(i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_num(i32) #1

declare dso_local i32 @sk_GENERAL_SUBTREE_num(i32) #1

declare dso_local i32 @nc_match(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @X509_NAME_get_index_by_NID(i32*, i32, i32) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local %struct.TYPE_15__* @sk_GENERAL_NAME_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
