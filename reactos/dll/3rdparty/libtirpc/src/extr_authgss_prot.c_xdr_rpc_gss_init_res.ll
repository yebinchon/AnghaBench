; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authgss_prot.c_xdr_rpc_gss_init_res.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authgss_prot.c_xdr_rpc_gss_init_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.rpc_gss_init_res = type { %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_NETOBJ_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"xdr_rpc_gss_init_res %s %s (ctx %p:%d, maj %d, min %d, win %d, token %p:%d)\00", align 1
@XDR_ENCODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_init_res(%struct.TYPE_9__* %0, %struct.rpc_gss_init_res* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.rpc_gss_init_res*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.rpc_gss_init_res* %1, %struct.rpc_gss_init_res** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to i8**
  %11 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %15 = call i64 @xdr_bytes(%struct.TYPE_9__* %6, i8** %10, i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %19, i32 0, i32 3
  %21 = call i64 @xdr_u_int(%struct.TYPE_9__* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %25, i32 0, i32 2
  %27 = call i64 @xdr_u_int(%struct.TYPE_9__* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %32 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %31, i32 0, i32 1
  %33 = call i64 @xdr_u_int(%struct.TYPE_9__* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %38 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to i8**
  %41 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %42 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %45 = call i64 @xdr_bytes(%struct.TYPE_9__* %36, i8** %40, i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %35, %29, %23, %17, %2
  %48 = phi i1 [ false, %29 ], [ false, %23 ], [ false, %17 ], [ false, %2 ], [ %46, %35 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XDR_ENCODE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %62 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %63 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %67 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %71 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %74 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %77 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %80 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res** %4, align 8
  %84 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @log_debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %61, i32 %65, i32 %69, i32 %72, i32 %75, i32 %78, i32 %82, i32 %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @xdr_bytes(%struct.TYPE_9__*, i8**, i32*, i32) #1

declare dso_local i64 @xdr_u_int(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @log_debug(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
