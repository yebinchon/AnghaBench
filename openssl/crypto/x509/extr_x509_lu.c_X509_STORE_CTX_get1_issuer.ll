; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_X509_STORE_CTX_get1_issuer.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_X509_STORE_CTX_get1_issuer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 (%struct.TYPE_17__*, i32*, i32*)*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }

@X509_LU_X509 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_CTX_get1_issuer(i32** %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = call %struct.TYPE_19__* (...) @X509_OBJECT_new()
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %11, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = icmp eq %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %167

23:                                               ; preds = %3
  %24 = load i32**, i32*** %5, align 8
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @X509_get_issuer_name(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = load i64, i64* @X509_LU_X509, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = call i32 @X509_STORE_CTX_get_by_subject(%struct.TYPE_17__* %27, i64 %28, i32* %29, %struct.TYPE_19__* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = call i32 @X509_OBJECT_free(%struct.TYPE_19__* %35)
  store i32 0, i32* %4, align 4
  br label %167

37:                                               ; preds = %23
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64 (%struct.TYPE_17__*, i32*, i32*)*, i64 (%struct.TYPE_17__*, i32*, i32*)** %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 %40(%struct.TYPE_17__* %41, i32* %42, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %37
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @x509_check_cert_time(%struct.TYPE_17__* %50, i32* %54, i32 -1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32**, i32*** %5, align 8
  store i32* %61, i32** %62, align 8
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @X509_up_ref(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %57
  %68 = load i32**, i32*** %5, align 8
  store i32* null, i32** %68, align 8
  store i32 -1, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %57
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = call i32 @X509_OBJECT_free(%struct.TYPE_19__* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  br label %167

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %37
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = call i32 @X509_OBJECT_free(%struct.TYPE_19__* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = icmp eq %struct.TYPE_18__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %167

80:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = call i32 @X509_STORE_lock(%struct.TYPE_18__* %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @X509_LU_X509, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @X509_OBJECT_idx_by_subject(i32 %85, i64 %86, i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %152

91:                                               ; preds = %80
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %148, %91
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sk_X509_OBJECT_num(i32 %97)
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %151

100:                                              ; preds = %93
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call %struct.TYPE_19__* @sk_X509_OBJECT_value(i32 %103, i32 %104)
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %10, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @X509_LU_X509, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %151

112:                                              ; preds = %100
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @X509_get_subject_name(i32* %117)
  %119 = call i64 @X509_NAME_cmp(i32* %113, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %151

122:                                              ; preds = %112
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i64 (%struct.TYPE_17__*, i32*, i32*)*, i64 (%struct.TYPE_17__*, i32*, i32*)** %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i64 %125(%struct.TYPE_17__* %126, i32* %127, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %122
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32**, i32*** %5, align 8
  store i32* %138, i32** %139, align 8
  store i32 1, i32* %15, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = load i32**, i32*** %5, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @x509_check_cert_time(%struct.TYPE_17__* %140, i32* %142, i32 -1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %151

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %122
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %93

151:                                              ; preds = %145, %121, %111, %93
  br label %152

152:                                              ; preds = %151, %80
  %153 = load i32**, i32*** %5, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32**, i32*** %5, align 8
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @X509_up_ref(i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = load i32**, i32*** %5, align 8
  store i32* null, i32** %162, align 8
  store i32 -1, i32* %15, align 4
  br label %163

163:                                              ; preds = %161, %156, %152
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = call i32 @X509_STORE_unlock(%struct.TYPE_18__* %164)
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %79, %69, %34, %22
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_19__* @X509_OBJECT_new(...) #1

declare dso_local i32* @X509_get_issuer_name(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_by_subject(%struct.TYPE_17__*, i64, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @X509_OBJECT_free(%struct.TYPE_19__*) #1

declare dso_local i64 @x509_check_cert_time(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @X509_up_ref(i32*) #1

declare dso_local i32 @X509_STORE_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @X509_OBJECT_idx_by_subject(i32, i64, i32*) #1

declare dso_local i32 @sk_X509_OBJECT_num(i32) #1

declare dso_local %struct.TYPE_19__* @sk_X509_OBJECT_value(i32, i32) #1

declare dso_local i64 @X509_NAME_cmp(i32*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_STORE_unlock(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
