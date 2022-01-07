; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authsspi_prot.c_xdr_rpc_sspi_cred.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authsspi_prot.c_xdr_rpc_sspi_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.rpc_sspi_cred = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"xdr_rpc_gss_cred: %s %s (v %d, proc %d, seq %d, svc %d, ctx %p:%d)\00", align 1
@XDR_ENCODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_sspi_cred(%struct.TYPE_8__* %0, %struct.rpc_sspi_cred* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.rpc_sspi_cred*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.rpc_sspi_cred* %1, %struct.rpc_sspi_cred** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %7, i32 0, i32 4
  %9 = call i64 @xdr_u_int(%struct.TYPE_8__* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %13, i32 0, i32 3
  %15 = call i64 @xdr_enum(%struct.TYPE_8__* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %19, i32 0, i32 2
  %21 = call i64 @xdr_u_int(%struct.TYPE_8__* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %25, i32 0, i32 1
  %27 = call i64 @xdr_enum(%struct.TYPE_8__* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %32 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to i8**
  %35 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %39 = call i64 @xdr_bytes(%struct.TYPE_8__* %30, i8** %34, i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %29, %23, %17, %11, %2
  %42 = phi i1 [ false, %23 ], [ false, %17 ], [ false, %11 ], [ false, %2 ], [ %40, %29 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XDR_ENCODE, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @TRUE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %56 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %60 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %63 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %66 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %69 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rpc_sspi_cred*, %struct.rpc_sspi_cred** %4, align 8
  %73 = getelementptr inbounds %struct.rpc_sspi_cred, %struct.rpc_sspi_cred* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @log_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %71, i32 %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @xdr_u_int(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @xdr_enum(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @xdr_bytes(%struct.TYPE_8__*, i8**, i32*, i32) #1

declare dso_local i32 @log_debug(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
