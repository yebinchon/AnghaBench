; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_marshal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.rpc_gss_data = type { i64, %struct.TYPE_13__, i32, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i8*, i8* }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"in authgss_marshal()\00", align 1
@XDR_ENCODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@RPCSEC_GSS = common dso_local global i8* null, align 8
@RPCSEC_GSS_INIT = common dso_local global i64 0, align 8
@RPCSEC_GSS_CONTINUE_INIT = common dso_local global i64 0, align 8
@_null_auth = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i32*)* @authgss_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @authgss_marshal(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rpc_gss_data*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = call %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.TYPE_15__* %21)
  store %struct.rpc_gss_data* %22, %struct.rpc_gss_data** %9, align 8
  %23 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %24 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %29 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = trunc i64 %17 to i32
  %35 = load i32, i32* @XDR_ENCODE, align 4
  %36 = call i32 @xdrmem_create(i32* %6, i8* %19, i32 %34, i32 %35)
  %37 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %38 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %37, i32 0, i32 3
  %39 = call i32 @xdr_rpc_gss_cred(i32* %6, %struct.TYPE_16__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = call i32 @XDR_DESTROY(i32* %6)
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %139

44:                                               ; preds = %33
  %45 = load i8*, i8** @RPCSEC_GSS, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i8* %19, i8** %51, align 8
  %52 = call i8* @XDR_GETPOS(i32* %6)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = call i32 @XDR_DESTROY(i32* %6)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = call i64 @xdr_opaque_auth(i32* %57, %struct.TYPE_17__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %44
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %139

64:                                               ; preds = %44
  %65 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %66 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RPCSEC_GSS_INIT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %73 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RPCSEC_GSS_CONTINUE_INIT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71, %64
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @xdr_opaque_auth(i32* %79, %struct.TYPE_17__* @_null_auth)
  store i64 %80, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %139

81:                                               ; preds = %71
  %82 = load i32*, i32** %5, align 8
  %83 = call i8* @XDR_GETPOS(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @XDR_SETPOS(i32* %85, i32 0)
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @XDR_INLINE(i32* %87, i8* %89)
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %93 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %96 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @gss_get_mic(i64* %13, i32 %94, i32 %98, %struct.TYPE_14__* %10, %struct.TYPE_14__* %11)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @GSS_S_COMPLETE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %81
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @log_status(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %105)
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i64, i64* @FALSE, align 8
  %112 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %9, align 8
  %113 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = call i32 @authgss_destroy_context(%struct.TYPE_15__* %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i64, i64* @FALSE, align 8
  store i64 %117, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %139

118:                                              ; preds = %81
  %119 = load i8*, i8** @RPCSEC_GSS, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = call i64 @xdr_opaque_auth(i32* %133, %struct.TYPE_17__* %135)
  store i64 %136, i64* %14, align 8
  %137 = call i32 @gss_release_buffer(i64* %13, %struct.TYPE_14__* %11)
  %138 = load i64, i64* %14, align 8
  store i64 %138, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %139

139:                                              ; preds = %118, %116, %78, %62, %41
  %140 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_debug(i8*) #2

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.TYPE_15__*) #2

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #2

declare dso_local i32 @xdr_rpc_gss_cred(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @XDR_DESTROY(i32*) #2

declare dso_local i8* @XDR_GETPOS(i32*) #2

declare dso_local i64 @xdr_opaque_auth(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @XDR_SETPOS(i32*, i32) #2

declare dso_local i8* @XDR_INLINE(i32*, i8*) #2

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #2

declare dso_local i32 @log_status(i8*, i64, i64) #2

declare dso_local i32 @authgss_destroy_context(%struct.TYPE_15__*) #2

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
