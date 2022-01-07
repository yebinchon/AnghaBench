; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_prepare_for_response.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_prepare_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_url_map = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.lwan_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64 }

@HANDLER_MUST_AUTHORIZE = common dso_local global i32 0, align 4
@HTTP_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@HANDLER_PARSE_ACCEPT_ENCODING = common dso_local global i32 0, align 4
@REQUEST_METHOD_POST = common dso_local global i64 0, align 8
@HANDLER_HAS_POST_DATA = common dso_local global i32 0, align 4
@HTTP_NOT_ALLOWED = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_url_map*, %struct.lwan_request*)* @prepare_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_for_response(%struct.lwan_url_map* %0, %struct.lwan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_url_map*, align 8
  %5 = alloca %struct.lwan_request*, align 8
  %6 = alloca i32, align 4
  store %struct.lwan_url_map* %0, %struct.lwan_url_map** %4, align 8
  store %struct.lwan_request* %1, %struct.lwan_request** %5, align 8
  %7 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %8 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %11 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %9
  store i8* %14, i8** %12, align 8
  %15 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %16 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %19 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, %17
  store i64 %22, i64* %20, align 8
  %23 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %24 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HANDLER_MUST_AUTHORIZE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %31 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %32 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %36 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lwan_http_authorize(%struct.lwan_request* %30, i32 %34, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %29, %2
  %43 = phi i1 [ false, %2 ], [ %41, %29 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @UNLIKELY(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @HTTP_NOT_AUTHORIZED, align 4
  store i32 %48, i32* %3, align 4
  br label %115

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %66, %49
  %51 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %52 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %60 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi i1 [ false, %50 ], [ %63, %58 ]
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %68 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %73 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %50

77:                                               ; preds = %64
  %78 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %79 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HANDLER_PARSE_ACCEPT_ENCODING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %86 = call i32 @parse_accept_encoding(%struct.lwan_request* %85)
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %89 = call i64 @lwan_request_get_method(%struct.lwan_request* %88)
  %90 = load i64, i64* @REQUEST_METHOD_POST, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load %struct.lwan_url_map*, %struct.lwan_url_map** %4, align 8
  %94 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HANDLER_HAS_POST_DATA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @HTTP_NOT_ALLOWED, align 4
  store i32 %100, i32* %3, align 4
  br label %115

101:                                              ; preds = %92
  %102 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %103 = call i32 @read_post_data(%struct.lwan_request* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @HTTP_OK, align 4
  %106 = icmp ne i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @UNLIKELY(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %115

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %87
  %114 = load i32, i32* @HTTP_OK, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %110, %99, %47
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_http_authorize(%struct.lwan_request*, i32, i32) #1

declare dso_local i32 @parse_accept_encoding(%struct.lwan_request*) #1

declare dso_local i64 @lwan_request_get_method(%struct.lwan_request*) #1

declare dso_local i32 @read_post_data(%struct.lwan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
