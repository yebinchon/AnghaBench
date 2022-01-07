; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authsspi_prot.c_xdr_rpc_sspi_wrap_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authsspi_prot.c_xdr_rpc_sspi_wrap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"in xdr_rpc_sspi_wrap_data()\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RPCSEC_SSPI_SVC_INTEGRITY = common dso_local global i64 0, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"xdr_rpc_sspi_wrap_data: sspi_get_mic failed with %x\00", align 1
@RPCSEC_SSPI_SVC_PRIVACY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"xdr_rpc_sspi_wrap_data: sspi_wrap failed with %x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@min_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_sspi_wrap_data(i32* %0, i32 (i32*, i32)* %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 (i32*, i32)* %1, i32 (i32*, i32)** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @XDR_GETPOS(i32* %24)
  store i32 %25, i32* %19, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %19, align 4
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
  br label %120

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @XDR_GETPOS(i32* %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %19, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %19, align 4
  %51 = add nsw i32 %50, 4
  %52 = call i32 @XDR_SETPOS(i32* %49, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @XDR_INLINE(i32* %53, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %22, align 4
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @RPCSEC_SSPI_SVC_INTEGRITY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %41
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @XDR_SETPOS(i32* %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %68 = call i32 @xdr_u_int(i32* %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %8, align 4
  br label %120

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @sspi_get_mic(i32 %73, i32 0, i32 %74, %struct.TYPE_12__* %16, %struct.TYPE_12__* %17)
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @SEC_E_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i64, i64* %18, align 8
  %81 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %8, align 4
  br label %120

83:                                               ; preds = %72
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @XDR_SETPOS(i32* %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %89 = bitcast i32* %88 to i8**
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %91 = call i32 @xdr_bytes(i32* %87, i8** %89, i32* %90, i32 -1)
  store i32 %91, i32* %22, align 4
  %92 = call i32 @sspi_release_buffer(%struct.TYPE_12__* %17)
  br label %118

93:                                               ; preds = %41
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @RPCSEC_SSPI_SVC_PRIVACY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @sspi_wrap(i32 %98, i32 0, %struct.TYPE_12__* %16, %struct.TYPE_12__* %17, i32* %21)
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* @SEC_E_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* %18, align 8
  %105 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %8, align 4
  br label %120

107:                                              ; preds = %97
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @XDR_SETPOS(i32* %108, i32 %109)
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %113 = bitcast i32* %112 to i8**
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %115 = call i32 @xdr_bytes(i32* %111, i8** %113, i32* %114, i32 -1)
  store i32 %115, i32* %22, align 4
  %116 = call i32 @sspi_release_buffer(%struct.TYPE_12__* %17)
  br label %117

117:                                              ; preds = %107, %93
  br label %118

118:                                              ; preds = %117, %83
  %119 = load i32, i32* %22, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %103, %79, %70, %39
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_SETPOS(i32*, i32) #1

declare dso_local i32 @xdr_u_int(i32*, i32*) #1

declare dso_local i32 @XDR_INLINE(i32*, i32) #1

declare dso_local i64 @sspi_get_mic(i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @xdr_bytes(i32*, i8**, i32*, i32) #1

declare dso_local i32 @sspi_release_buffer(%struct.TYPE_12__*) #1

declare dso_local i64 @sspi_wrap(i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
