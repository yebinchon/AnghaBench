; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_ts_RESP_check_request.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_ts_RESP_check_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }

@TS_STATUS_REJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Bad request version.\00", align 1
@TS_INFO_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Message digest algorithm is not supported.\00", align 1
@TS_INFO_BAD_ALG = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Superfluous message digest parameter.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Bad message digest.\00", align 1
@TS_INFO_BAD_DATA_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ts_RESP_check_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_RESP_check_request(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  store i32* null, i32** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i32 @TS_REQ_get_version(%struct.TYPE_12__* %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %21 = call i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_11__* %19, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32, i32* @TS_INFO_BAD_REQUEST, align 4
  %24 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_11__* %22, i32 %23)
  store i32 0, i32* %2, align 4
  br label %111

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %5, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @OBJ_obj2nid(i32 %34)
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %61, %25
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sk_EVP_MD_num(i32 %43)
  %45 = icmp slt i32 %40, %44
  br label %46

46:                                               ; preds = %39, %36
  %47 = phi i1 [ false, %36 ], [ %45, %39 ]
  br i1 %47, label %48, label %64

48:                                               ; preds = %46
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32* @sk_EVP_MD_value(i32 %51, i32 %52)
  store i32* %53, i32** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @EVP_MD_type(i32* %55)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32*, i32** %11, align 8
  store i32* %59, i32** %9, align 8
  br label %60

60:                                               ; preds = %58, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %36

64:                                               ; preds = %46
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %70 = call i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_11__* %68, i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = load i32, i32* @TS_INFO_BAD_ALG, align 4
  %73 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_11__* %71, i32 %72)
  store i32 0, i32* %2, align 4
  br label %111

74:                                               ; preds = %64
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @ASN1_TYPE_get(i64 %82)
  %84 = load i64, i64* @V_ASN1_NULL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %89 = call i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_11__* %87, i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = load i32, i32* @TS_INFO_BAD_ALG, align 4
  %92 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_11__* %90, i32 %91)
  store i32 0, i32* %2, align 4
  br label %111

93:                                               ; preds = %79, %74
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %8, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i64 @EVP_MD_size(i32* %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %106 = call i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_11__* %104, i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = load i32, i32* @TS_INFO_BAD_DATA_FORMAT, align 4
  %109 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_11__* %107, i32 %108)
  store i32 0, i32* %2, align 4
  br label %111

110:                                              ; preds = %93
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %103, %86, %67, %18
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @TS_REQ_get_version(%struct.TYPE_12__*) #1

declare dso_local i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @sk_EVP_MD_num(i32) #1

declare dso_local i32* @sk_EVP_MD_value(i32, i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i64 @ASN1_TYPE_get(i64) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
