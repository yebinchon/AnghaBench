; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_tdiGetMibForIfEntity.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_tdiGetMibForIfEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@TCP_REQUEST_QUERY_INFORMATION_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TdiGetMibForIfEntity(tcpFile %p,entityId %p)\0A\00", align 1
@INFO_CLASS_PROTOCOL = common dso_local global i32 0, align 4
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@IF_MIB_STATS_ID = common dso_local global i32 0, align 4
@IOCTL_TCP_QUERY_INFORMATION_EX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IOCTL Failed\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [219 x i8] c"TdiGetMibForIfEntity() => {\0A  if_index ....................... %x\0A  if_type ........................ %x\0A  if_mtu ......................... %d\0A  if_speed ....................... %x\0A  if_physaddrlen ................. %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"  if_physaddr .................... %02x:%02x:%02x:%02x:%02x:%02x\0A  if_descr ....................... %*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"} status %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tdiGetMibForIfEntity(i32 %0, %struct.TYPE_13__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %11 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_14__* @TCP_REQUEST_QUERY_INFORMATION_INIT to i8*), i64 16, i1 false)
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32, i32* @INFO_CLASS_PROTOCOL, align 4
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IF_MIB_STATS_ID, align 4
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = bitcast %struct.TYPE_13__* %28 to i8*
  %31 = bitcast %struct.TYPE_13__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IOCTL_TCP_QUERY_INFORMATION_EX, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = call i32 @DeviceIoControl(i32 %32, i32 %33, %struct.TYPE_14__* %8, i32 16, %struct.TYPE_15__* %34, i32 40, i32* %10, i32* null)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49, i32 %53, i32 %57, i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 255
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 255
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %76, i32 %83, i32 %90, i32 %97, i32 %104, i32 %108, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %41, %38
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WARN(i8*, ...) #2

declare dso_local i32 @DeviceIoControl(i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32, i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
