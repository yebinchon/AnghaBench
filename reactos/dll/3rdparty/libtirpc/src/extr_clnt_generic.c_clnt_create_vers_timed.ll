; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_generic.c_clnt_create_vers_timed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_generic.c_clnt_create_vers_timed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.rpc_err }
%struct.rpc_err = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timeval = type { i32, i64 }

@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@CLSET_VERS = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @clnt_create_vers_timed(i8* %0, i32 %1, i64* %2, i64 %3, i64 %4, i8* %5, %struct.timeval* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.timeval*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.rpc_err, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.timeval* %6, %struct.timeval** %15, align 8
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %20, align 8
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %21, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %20, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.timeval*, %struct.timeval** %15, align 8
  %31 = call i32* @clnt_create_timed(i8* %26, i32 %27, i64 %28, i8* %29, %struct.timeval* %30)
  store i32* %31, i32** %16, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %123

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 10, i32* %36, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = load i32, i32* @NULLPROC, align 4
  %40 = load i64, i64* @xdr_void, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* @xdr_void, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @clnt_call(i32* %38, i32 %39, i32 %41, i8* null, i32 %43, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* @RPC_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i64, i64* %20, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32*, i32** %16, align 8
  store i32* %51, i32** %8, align 8
  br label %123

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %114, %52
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* %21, align 8
  %60 = icmp sgt i64 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %63, label %115

63:                                               ; preds = %61
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @clnt_geterr(i32* %64, %struct.rpc_err* %19)
  %66 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %19, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %22, align 4
  %69 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %19, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* %20, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* %23, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %20, align 8
  br label %82

79:                                               ; preds = %63
  %80 = load i64, i64* %20, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %20, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %22, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %21, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %22, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %21, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %20, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %118

95:                                               ; preds = %90
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* @CLSET_VERS, align 4
  %98 = bitcast i64* %20 to i8*
  %99 = call i32 @CLNT_CONTROL(i32* %96, i32 %97, i8* %98)
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* @NULLPROC, align 4
  %102 = load i64, i64* @xdr_void, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* @xdr_void, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @clnt_call(i32* %100, i32 %101, i32 %103, i8* null, i32 %105, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @RPC_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %95
  %111 = load i64, i64* %20, align 8
  %112 = load i64*, i64** %11, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i32*, i32** %16, align 8
  store i32* %113, i32** %8, align 8
  br label %123

114:                                              ; preds = %95
  br label %53

115:                                              ; preds = %61
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @clnt_geterr(i32* %116, %struct.rpc_err* %19)
  br label %118

118:                                              ; preds = %115, %94
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %120 = bitcast %struct.rpc_err* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.rpc_err* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 1) to i8*), i8* align 4 %120, i64 8, i1 false)
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @clnt_destroy(i32* %121)
  store i32* null, i32** %8, align 8
  br label %123

123:                                              ; preds = %118, %110, %48, %34
  %124 = load i32*, i32** %8, align 8
  ret i32* %124
}

declare dso_local i32* @clnt_create_timed(i8*, i32, i64, i8*, %struct.timeval*) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_geterr(i32*, %struct.rpc_err*) #1

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
