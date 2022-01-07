; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_set_option.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CMP_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@OCSP_REVOKED_STATUS_NOSTATUS = common dso_local global i32 0, align 4
@OSSL_CRMF_POPO_NONE = common dso_local global i32 0, align 4
@CMP_R_INVALID_ARGS = common dso_local global i32 0, align 4
@OSSL_CMP_LOG_DEBUG = common dso_local global i32 0, align 4
@OSSL_CRMF_POPO_KEYAGREE = common dso_local global i32 0, align 4
@OCSP_REVOKED_STATUS_AACOMPROMISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CMP_CTX_set_option(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @CMP_R_NULL_ARGUMENT, align 4
  %13 = call i32 @CMPerr(i32 0, i32 %12)
  store i32 0, i32* %4, align 4
  br label %127

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %20 [
    i32 134, label %16
    i32 135, label %18
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @OCSP_REVOKED_STATUS_NOSTATUS, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @OSSL_CRMF_POPO_NONE, align 4
  store i32 %19, i32* %8, align 4
  br label %21

20:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %27 = call i32 @CMPerr(i32 0, i32 %26)
  store i32 0, i32* %4, align 4
  br label %127

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %123 [
    i32 141, label %30
    i32 142, label %41
    i32 144, label %45
    i32 129, label %49
    i32 130, label %53
    i32 128, label %57
    i32 132, label %61
    i32 133, label %65
    i32 136, label %69
    i32 143, label %73
    i32 135, label %77
    i32 145, label %88
    i32 138, label %92
    i32 140, label %96
    i32 139, label %100
    i32 131, label %104
    i32 137, label %108
    i32 134, label %112
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @OSSL_CMP_LOG_DEBUG, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %36 = call i32 @CMPerr(i32 0, i32 %35)
  store i32 0, i32* %4, align 4
  br label %127

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %126

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %126

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %126

49:                                               ; preds = %28
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %126

53:                                               ; preds = %28
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %126

57:                                               ; preds = %28
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  br label %126

61:                                               ; preds = %28
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  br label %126

65:                                               ; preds = %28
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  br label %126

69:                                               ; preds = %28
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  br label %126

73:                                               ; preds = %28
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  br label %126

77:                                               ; preds = %28
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @OSSL_CRMF_POPO_KEYAGREE, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %83 = call i32 @CMPerr(i32 0, i32 %82)
  store i32 0, i32* %4, align 4
  br label %127

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  br label %126

88:                                               ; preds = %28
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  br label %126

92:                                               ; preds = %28
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 4
  br label %126

96:                                               ; preds = %28
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 13
  store i32 %97, i32* %99, align 4
  br label %126

100:                                              ; preds = %28
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 14
  store i32 %101, i32* %103, align 4
  br label %126

104:                                              ; preds = %28
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 15
  store i32 %105, i32* %107, align 4
  br label %126

108:                                              ; preds = %28
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 16
  store i32 %109, i32* %111, align 4
  br label %126

112:                                              ; preds = %28
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @OCSP_REVOKED_STATUS_AACOMPROMISE, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %118 = call i32 @CMPerr(i32 0, i32 %117)
  store i32 0, i32* %4, align 4
  br label %127

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 17
  store i32 %120, i32* %122, align 4
  br label %126

123:                                              ; preds = %28
  %124 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %125 = call i32 @CMPerr(i32 0, i32 %124)
  store i32 0, i32* %4, align 4
  br label %127

126:                                              ; preds = %119, %108, %104, %100, %96, %92, %88, %84, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %123, %116, %81, %34, %25, %11
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @CMPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
