; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_check_policy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_check_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32, %struct.TYPE_11__*)*, i32*, %struct.TYPE_10__*, i8*, i32, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@X509_F_CHECK_POLICY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@X509_V_ERR_OUT_OF_MEM = common dso_local global i8* null, align 8
@X509_PCY_TREE_INTERNAL = common dso_local global i32 0, align 4
@X509_PCY_TREE_INVALID = common dso_local global i32 0, align 4
@EXFLAG_INVALID_POLICY = common dso_local global i32 0, align 4
@X509_V_ERR_INVALID_POLICY_EXTENSION = common dso_local global i32 0, align 4
@X509_PCY_TREE_FAILURE = common dso_local global i32 0, align 4
@X509_V_ERR_NO_EXPLICIT_POLICY = common dso_local global i8* null, align 8
@X509_PCY_TREE_VALID = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@X509_V_FLAG_NOTIFY_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @check_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_policy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %151

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sk_X509_push(i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @X509_F_CHECK_POLICY, align 4
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %26 = call i32 @X509err(i32 %24, i32 %25)
  %27 = load i8*, i8** @X509_V_ERR_OUT_OF_MEM, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  store i32 0, i32* %2, align 4
  br label %151

30:                                               ; preds = %17, %12
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @X509_policy_check(i32* %32, i32* %34, i32 %37, i32 %42, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %30
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sk_X509_pop(i32 %56)
  br label %58

58:                                               ; preds = %53, %30
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @X509_PCY_TREE_INTERNAL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* @X509_F_CHECK_POLICY, align 4
  %64 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %65 = call i32 @X509err(i32 %63, i32 %64)
  %66 = load i8*, i8** @X509_V_ERR_OUT_OF_MEM, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %2, align 4
  br label %151

69:                                               ; preds = %58
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @X509_PCY_TREE_INVALID, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %103, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sk_X509_num(i32 %78)
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call %struct.TYPE_12__* @sk_X509_value(i32 %84, i32 %85)
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %6, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EXFLAG_INVALID_POLICY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %81
  br label %103

94:                                               ; preds = %81
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @X509_V_ERR_INVALID_POLICY_EXTENSION, align 4
  %99 = call i32 @verify_cb_cert(%struct.TYPE_11__* %95, %struct.TYPE_12__* %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %151

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %93
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %74

106:                                              ; preds = %74
  store i32 1, i32* %2, align 4
  br label %151

107:                                              ; preds = %69
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @X509_PCY_TREE_FAILURE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  %114 = load i8*, i8** @X509_V_ERR_NO_EXPLICIT_POLICY, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = call i32 %119(i32 0, %struct.TYPE_11__* %120)
  store i32 %121, i32* %2, align 4
  br label %151

122:                                              ; preds = %107
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @X509_PCY_TREE_VALID, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @X509_F_CHECK_POLICY, align 4
  %128 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %129 = call i32 @X509err(i32 %127, i32 %128)
  store i32 0, i32* %2, align 4
  br label %151

130:                                              ; preds = %122
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @X509_V_FLAG_NOTIFY_POLICY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %130
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = call i32 %144(i32 2, %struct.TYPE_11__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %151

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %130
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %148, %126, %111, %106, %101, %62, %23, %11
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @sk_X509_push(i32, i32*) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @X509_policy_check(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @sk_X509_pop(i32) #1

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local %struct.TYPE_12__* @sk_X509_value(i32, i32) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
