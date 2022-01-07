; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_cache.c_policy_cache_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_cache.c_policy_cache_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_12__ = type { i32*, i32* }

@X509V3_F_POLICY_CACHE_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_policy_constraints = common dso_local global i32 0, align 4
@NID_certificate_policies = common dso_local global i32 0, align 4
@NID_policy_mappings = common dso_local global i32 0, align 4
@NID_inhibit_any_policy = common dso_local global i32 0, align 4
@EXFLAG_INVALID_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @policy_cache_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_cache_new(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %151

15:                                               ; preds = %1
  %16 = call %struct.TYPE_10__* @OPENSSL_malloc(i32 32)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @X509V3_F_POLICY_CACHE_NEW, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @X509V3err(i32 %20, i32 %21)
  store i32 0, i32* %2, align 4
  br label %151

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = load i32, i32* @NID_policy_constraints, align 4
  %39 = call i8* @X509_get_ext_d2i(%struct.TYPE_11__* %37, i32 %38, i32* %9, i32* null)
  %40 = bitcast i8* %39 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %140

47:                                               ; preds = %43
  br label %78

48:                                               ; preds = %23
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %140

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @policy_cache_set_int(i32* %61, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %140

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @policy_cache_set_int(i32* %70, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %140

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = load i32, i32* @NID_certificate_policies, align 4
  %81 = call i8* @X509_get_ext_d2i(%struct.TYPE_11__* %79, i32 %80, i32* %9, i32* null)
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %140

89:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %151

90:                                               ; preds = %78
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @policy_cache_create(%struct.TYPE_11__* %91, i32* %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %151

99:                                               ; preds = %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = load i32, i32* @NID_policy_mappings, align 4
  %102 = call i8* @X509_get_ext_d2i(%struct.TYPE_11__* %100, i32 %101, i32* %9, i32* null)
  %103 = bitcast i8* %102 to i32*
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %140

110:                                              ; preds = %106
  br label %119

111:                                              ; preds = %99
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @policy_cache_set_mapping(%struct.TYPE_11__* %112, i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %140

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %110
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = load i32, i32* @NID_inhibit_any_policy, align 4
  %122 = call i8* @X509_get_ext_d2i(%struct.TYPE_11__* %120, i32 %121, i32* %9, i32* null)
  %123 = bitcast i8* %122 to i32*
  store i32* %123, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %140

130:                                              ; preds = %126
  br label %139

131:                                              ; preds = %119
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @policy_cache_set_int(i32* %133, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  br label %140

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %130
  br label %146

140:                                              ; preds = %137, %129, %117, %109, %88, %76, %67, %58, %46
  %141 = load i32, i32* @EXFLAG_INVALID_POLICY, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %140, %139
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = call i32 @POLICY_CONSTRAINTS_free(%struct.TYPE_12__* %147)
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @ASN1_INTEGER_free(i32* %149)
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %146, %97, %89, %19, %14
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_10__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i8* @X509_get_ext_d2i(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @policy_cache_set_int(i32*, i32*) #1

declare dso_local i32 @policy_cache_create(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @policy_cache_set_mapping(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @POLICY_CONSTRAINTS_free(%struct.TYPE_12__*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
