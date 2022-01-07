; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_cache.c_policy_cache_create.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_cache.c_policy_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@policy_data_cmp = common dso_local global i32 0, align 4
@X509V3_F_POLICY_CACHE_CREATE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_any_policy = common dso_local global i64 0, align 8
@EXFLAG_INVALID_POLICY = common dso_local global i32 0, align 4
@POLICYINFO_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32)* @policy_cache_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_cache_create(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sk_POLICYINFO_num(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %94

20:                                               ; preds = %3
  %21 = load i32, i32* @policy_data_cmp, align 4
  %22 = call i32* @sk_X509_POLICY_DATA_new(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @X509V3_F_POLICY_CACHE_CREATE, align 4
  %31 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %32 = call i32 @X509V3err(i32 %30, i32 %31)
  br label %106

33:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %90, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @sk_POLICYINFO_value(i32* %39, i32 %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_10__* @policy_data_new(i32* %42, i32* null, i32 %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = icmp eq %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @X509V3_F_POLICY_CACHE_CREATE, align 4
  %49 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %50 = call i32 @X509V3err(i32 %48, i32 %49)
  br label %106

51:                                               ; preds = %38
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @OBJ_obj2nid(i32 %54)
  %56 = load i64, i64* @NID_any_policy, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 -1, i32* %9, align 4
  br label %94

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %67, align 8
  br label %89

68:                                               ; preds = %51
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = call i64 @sk_X509_POLICY_DATA_find(i32* %71, %struct.TYPE_10__* %72)
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %9, align 4
  br label %94

76:                                               ; preds = %68
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = call i32 @sk_X509_POLICY_DATA_push(i32* %79, %struct.TYPE_10__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @X509V3_F_POLICY_CACHE_CREATE, align 4
  %85 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %86 = call i32 @X509V3err(i32 %84, i32 %85)
  br label %94

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %64
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %34

93:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %83, %75, %63, %19
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @EXFLAG_INVALID_POLICY, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %94
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = call i32 @policy_data_free(%struct.TYPE_10__* %104)
  br label %106

106:                                              ; preds = %103, %47, %29
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @POLICYINFO_free, align 4
  %109 = call i32 @sk_POLICYINFO_pop_free(i32* %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @sk_X509_POLICY_DATA_pop_free(i32* %115, i32 (%struct.TYPE_10__*)* @policy_data_free)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %112, %106
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local i32 @sk_POLICYINFO_num(i32*) #1

declare dso_local i32* @sk_X509_POLICY_DATA_new(i32) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32* @sk_POLICYINFO_value(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @policy_data_new(i32*, i32*, i32) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i64 @sk_X509_POLICY_DATA_find(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @sk_X509_POLICY_DATA_push(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @policy_data_free(%struct.TYPE_10__*) #1

declare dso_local i32 @sk_POLICYINFO_pop_free(i32*, i32) #1

declare dso_local i32 @sk_X509_POLICY_DATA_pop_free(i32*, i32 (%struct.TYPE_10__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
