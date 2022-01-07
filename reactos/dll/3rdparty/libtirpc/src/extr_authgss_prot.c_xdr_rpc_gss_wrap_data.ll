; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authgss_prot.c_xdr_rpc_gss_wrap_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authgss_prot.c_xdr_rpc_gss_wrap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@RPCSEC_GSS_SVC_INTEGRITY = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"gss_get_mic failed\00", align 1
@MAX_NETOBJ_SZ = common dso_local global i32 0, align 4
@RPCSEC_GSS_SVC_PRIVACY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gss_wrap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_wrap_data(i32* %0, i32 (i32*, i32)* %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 4
  %17 = alloca %struct.TYPE_7__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 (i32*, i32)* %1, i32 (i32*, i32)** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @XDR_GETPOS(i32* %24)
  store i32 %25, i32* %20, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %20, align 4
  %28 = add nsw i32 %27, 4
  %29 = call i32 @XDR_SETPOS(i32* %26, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @xdr_u_int(i32* %30, i32* %15)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load i32 (i32*, i32)*, i32 (i32*, i32)** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 %34(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33, %7
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %8, align 4
  br label %124

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @XDR_GETPOS(i32* %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %20, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, 4
  %52 = call i32 @XDR_SETPOS(i32* %49, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @XDR_INLINE(i32* %53, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %23, align 4
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @RPCSEC_GSS_SVC_INTEGRITY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %41
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @XDR_SETPOS(i32* %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %68 = call i32 @xdr_u_int(i32* %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %8, align 4
  br label %124

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @gss_get_mic(i64* %19, i32 %73, i32 %74, %struct.TYPE_7__* %16, %struct.TYPE_7__* %17)
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @GSS_S_COMPLETE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = call i32 @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %8, align 4
  br label %124

82:                                               ; preds = %72
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @XDR_SETPOS(i32* %83, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %88 = bitcast i32* %87 to i8**
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %90 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %91 = call i32 @xdr_bytes(i32* %86, i8** %88, i32* %89, i32 %90)
  store i32 %91, i32* %23, align 4
  %92 = call i32 @gss_release_buffer(i64* %19, %struct.TYPE_7__* %17)
  br label %122

93:                                               ; preds = %41
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @RPCSEC_GSS_SVC_PRIVACY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @gss_wrap(i64* %19, i32 %98, i32 %99, i32 %100, %struct.TYPE_7__* %16, i32* %22, %struct.TYPE_7__* %17)
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* @GSS_S_COMPLETE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = call i32 @log_status(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %107)
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %8, align 4
  br label %124

110:                                              ; preds = %97
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %20, align 4
  %113 = call i32 @XDR_SETPOS(i32* %111, i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %116 = bitcast i32* %115 to i8**
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %118 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %119 = call i32 @xdr_bytes(i32* %114, i8** %116, i32* %117, i32 %118)
  store i32 %119, i32* %23, align 4
  %120 = call i32 @gss_release_buffer(i64* %19, %struct.TYPE_7__* %17)
  br label %121

121:                                              ; preds = %110, %93
  br label %122

122:                                              ; preds = %121, %82
  %123 = load i32, i32* %23, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %105, %79, %70, %39
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_SETPOS(i32*, i32) #1

declare dso_local i32 @xdr_u_int(i32*, i32*) #1

declare dso_local i32 @XDR_INLINE(i32*, i32) #1

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @xdr_bytes(i32*, i8**, i32*, i32) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_7__*) #1

declare dso_local i64 @gss_wrap(i64*, i32, i32, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
