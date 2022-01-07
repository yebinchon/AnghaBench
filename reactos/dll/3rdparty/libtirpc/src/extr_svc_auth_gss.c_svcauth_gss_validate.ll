; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_data = type { i32 }
%struct.rpc_msg = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, %struct.TYPE_6__, %struct.opaque_auth }
%struct.TYPE_6__ = type { i32, i32* }
%struct.opaque_auth = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"in svcauth_gss_validate()\00", align 1
@MAX_AUTH_BYTES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_data*, %struct.rpc_msg*)* @svcauth_gss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_validate(%struct.svc_rpc_gss_data* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rpc_gss_data*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca %struct.opaque_auth*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [128 x i32], align 16
  %13 = alloca i32*, align 8
  store %struct.svc_rpc_gss_data* %0, %struct.svc_rpc_gss_data** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %14 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  %16 = call i32 @memset(i32* %15, i32 0, i32 512)
  %17 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %18 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  store %struct.opaque_auth* %19, %struct.opaque_auth** %6, align 8
  %20 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %21 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_AUTH_BYTES, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %2
  %28 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %29 = mul nsw i32 8, %28
  %30 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %31 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @RNDUP(i64 %32)
  %34 = add nsw i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 512, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %144

39:                                               ; preds = %27
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %43 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @IXDR_PUT_LONG(i32* %41, i64 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %48 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @IXDR_PUT_ENUM(i32* %46, i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %53 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @IXDR_PUT_LONG(i32* %51, i64 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %59 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @IXDR_PUT_LONG(i32* %57, i64 %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %65 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @IXDR_PUT_LONG(i32* %63, i64 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %71 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @IXDR_PUT_LONG(i32* %69, i64 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %77 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IXDR_PUT_ENUM(i32* %75, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %82 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @IXDR_PUT_LONG(i32* %80, i64 %83)
  %85 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %86 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %39
  %90 = load i32*, i32** %13, align 8
  %91 = ptrtoint i32* %90 to i32
  %92 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %93 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %96 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @memcpy(i32 %91, i32 %94, i64 %97)
  %99 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %100 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @RNDUP(i64 %101)
  %103 = sext i32 %102 to i64
  %104 = udiv i64 %103, 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 %104
  store i32* %106, i32** %13, align 8
  br label %107

107:                                              ; preds = %89, %39
  %108 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32* %108, i32** %109, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %119 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32* %122, i32** %123, align 8
  %124 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %125 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %128, i32* %129, align 8
  %130 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %4, align 8
  %131 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @gss_verify_mic(i64* %10, i32 %132, %struct.TYPE_8__* %7, %struct.TYPE_8__* %8, i64* %11)
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @GSS_S_COMPLETE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %107
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %138, i64 %139)
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %144

142:                                              ; preds = %107
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %137, %37, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RNDUP(i64) #1

declare dso_local i32 @IXDR_PUT_LONG(i32*, i64) #1

declare dso_local i32 @IXDR_PUT_ENUM(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
