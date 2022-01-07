; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_unix.c_authunix_refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_unix.c_authunix_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.audata = type { %struct.TYPE_11__, i32 }
%struct.authunix_parms = type { i32, i32*, i32* }
%struct.timeval = type { i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@XDR_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*)* @authunix_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authunix_refresh(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.audata*, align 8
  %7 = alloca %struct.authunix_parms, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_13__* %11)
  store %struct.audata* %12, %struct.audata** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.audata*, %struct.audata** %6, align 8
  %22 = getelementptr inbounds %struct.audata, %struct.audata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load %struct.audata*, %struct.audata** %6, align 8
  %30 = getelementptr inbounds %struct.audata, %struct.audata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %7, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %7, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.audata*, %struct.audata** %6, align 8
  %36 = getelementptr inbounds %struct.audata, %struct.audata* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.audata*, %struct.audata** %6, align 8
  %40 = getelementptr inbounds %struct.audata, %struct.audata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XDR_DECODE, align 4
  %44 = call i32 @xdrmem_create(%struct.TYPE_12__* %9, i64 %38, i32 %42, i32 %43)
  %45 = call i32 @xdr_authunix_parms(%struct.TYPE_12__* %9, %struct.authunix_parms* %7)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %28
  br label %70

49:                                               ; preds = %28
  %50 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %7, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @XDR_ENCODE, align 4
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = call i32 @XDR_SETPOS(%struct.TYPE_12__* %9, i32 0)
  %57 = call i32 @xdr_authunix_parms(%struct.TYPE_12__* %9, %struct.authunix_parms* %7)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %70

61:                                               ; preds = %49
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.audata*, %struct.audata** %6, align 8
  %65 = getelementptr inbounds %struct.audata, %struct.audata* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_11__* %63 to i8*
  %67 = bitcast %struct.TYPE_11__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = call i32 @marshal_new_auth(%struct.TYPE_13__* %68)
  br label %70

70:                                               ; preds = %61, %60, %48
  %71 = load i32, i32* @XDR_FREE, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = call i32 @xdr_authunix_parms(%struct.TYPE_12__* %9, %struct.authunix_parms* %7)
  %74 = call i32 @XDR_DESTROY(%struct.TYPE_12__* %9)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xdrmem_create(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @xdr_authunix_parms(%struct.TYPE_12__*, %struct.authunix_parms*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @XDR_SETPOS(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @marshal_new_auth(%struct.TYPE_13__*) #1

declare dso_local i32 @XDR_DESTROY(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
