; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getArpTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getArpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"called.\0A\00", align 1
@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"openTcpFile returned 0x%08lx\0A\00", align 1
@INFO_CLASS_PROTOCOL = common dso_local global i32 0, align 4
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@IP_MIB_ARPTABLE_ENTRY_ID = common dso_local global i32 0, align 4
@AT_ENTITY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @getArpTable() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @getNumArpEntries()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @FILE_READ_DATA, align 4
  %16 = call i64 @openTcpFile(i32* %5, i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @NT_SUCCESS(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %1, align 8
  br label %115

23:                                               ; preds = %0
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = add i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_11__* @HeapAlloc(i32 %24, i32 0, i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %11, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @closeTcpFile(i32 %34)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %1, align 8
  br label %115

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @tdiGetEntityIDSet(i32 %37, %struct.TYPE_10__** %4, i32* %2)
  store i64 %38, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %103, %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %106

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = call i64 @isInterface(%struct.TYPE_10__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %102

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = call i64 @hasArp(i32 %51, %struct.TYPE_10__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @INFO_CLASS_PROTOCOL, align 4
  %61 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %62 = load i32, i32* @IP_MIB_ARPTABLE_ENTRY_ID, align 4
  %63 = load i32, i32* @AT_ENTITY, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = bitcast %struct.TYPE_10__** %12 to i32*
  %71 = call i64 @tdiGetSetOfThings(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %69, i32 0, i32 4, i32* %70, i32* %3)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @STATUS_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = bitcast %struct.TYPE_10__* %86 to i8*
  %92 = bitcast %struct.TYPE_10__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 4, i1 false)
  br label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = call i32 @tdiFreeThingSet(%struct.TYPE_10__* %99)
  br label %101

101:                                              ; preds = %98, %58
  br label %102

102:                                              ; preds = %101, %50, %43
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %39

106:                                              ; preds = %39
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @closeTcpFile(i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = call i32 @tdiFreeThingSet(%struct.TYPE_10__* %109)
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %1, align 8
  br label %115

115:                                              ; preds = %106, %33, %20
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  ret %struct.TYPE_11__* %116
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @getNumArpEntries(...) #1

declare dso_local i64 @openTcpFile(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @closeTcpFile(i32) #1

declare dso_local i64 @tdiGetEntityIDSet(i32, %struct.TYPE_10__**, i32*) #1

declare dso_local i64 @isInterface(%struct.TYPE_10__*) #1

declare dso_local i64 @hasArp(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @tdiGetSetOfThings(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tdiFreeThingSet(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
