; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_generic.c_clnt_create_timed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_generic.c_clnt_create_timed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.rpc_err }
%struct.rpc_err = type { i32 }
%struct.timeval = type { i32 }
%struct.netconfig = type { i8* }

@RPC_SUCCESS = common dso_local global i64 0, align 8
@NETIDLEN = common dso_local global i32 0, align 4
@RPC_UNKNOWNPROTO = common dso_local global i8* null, align 8
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RPC_N2AXLATEFAILURE = common dso_local global i64 0, align 8
@RPC_UNKNOWNHOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @clnt_create_timed(i8* %0, i32 %1, i32 %2, i8* %3, %struct.timeval* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.netconfig*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rpc_err, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  store i32* null, i32** %13, align 8
  %22 = load i64, i64* @RPC_SUCCESS, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @NETIDLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8* %28, i8** %19, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i8* null, i8** %19, align 8
  br label %44

32:                                               ; preds = %5
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %20, align 8
  %35 = load i64, i64* %20, align 8
  %36 = icmp uge i64 %35, %25
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %21, align 4
  br label %113

40:                                               ; preds = %32
  %41 = load i8*, i8** %19, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcpy(i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i8*, i8** %19, align 8
  %46 = call i8* @__rpc_setconf(i8* %45)
  store i8* %46, i8** %14, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %21, align 4
  br label %113

51:                                               ; preds = %44
  %52 = load i64, i64* @RPC_SUCCESS, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  br label %53

53:                                               ; preds = %91, %51
  %54 = load i32*, i32** %13, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %92

56:                                               ; preds = %53
  %57 = load i8*, i8** %14, align 8
  %58 = call %struct.netconfig* @__rpc_getconf(i8* %57)
  store %struct.netconfig* %58, %struct.netconfig** %12, align 8
  %59 = icmp eq %struct.netconfig* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %62 = load i64, i64* @RPC_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %92

68:                                               ; preds = %56
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %73 = load %struct.timeval*, %struct.timeval** %11, align 8
  %74 = call i32* @clnt_tp_create_timed(i8* %69, i32 %70, i32 %71, %struct.netconfig* %72, %struct.timeval* %73)
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %92

78:                                               ; preds = %68
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %80 = load i64, i64* @RPC_N2AXLATEFAILURE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %84 = load i64, i64* @RPC_UNKNOWNHOST, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = bitcast %struct.rpc_err* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 8 bitcast (%struct.rpc_err* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 1) to i8*), i64 4, i1 false)
  br label %90

90:                                               ; preds = %86, %82, %78
  br label %91

91:                                               ; preds = %90
  br label %53

92:                                               ; preds = %77, %67, %53
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %94 = load i64, i64* @RPC_N2AXLATEFAILURE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %98 = load i64, i64* @RPC_UNKNOWNHOST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* @RPC_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %108 = bitcast %struct.rpc_err* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.rpc_err* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 1) to i8*), i8* align 4 %108, i64 4, i1 false)
  br label %109

109:                                              ; preds = %105, %100, %96
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @__rpc_endconf(i8* %110)
  %112 = load i32*, i32** %13, align 8
  store i32* %112, i32** %6, align 8
  store i32 1, i32* %21, align 4
  br label %113

113:                                              ; preds = %109, %48, %37
  %114 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32*, i32** %6, align 8
  ret i32* %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @__rpc_setconf(i8*) #2

declare dso_local %struct.netconfig* @__rpc_getconf(i8*) #2

declare dso_local i32* @clnt_tp_create_timed(i8*, i32, i32, %struct.netconfig*, %struct.timeval*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @__rpc_endconf(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
