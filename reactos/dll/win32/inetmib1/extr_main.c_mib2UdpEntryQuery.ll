; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2UdpEntryQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2UdpEntryQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.GenericTable = type { i32 }

@mib2UdpEntry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(0x%02x, %s, %p)\0A\00", align 1
@udpTable = common dso_local global %struct.TYPE_13__* null, align 8
@SNMP_ERRORSTATUS_NOSUCHNAME = common dso_local global i32 0, align 4
@oidToUdpRow = common dso_local global i32 0, align 4
@compareUdpRow = common dso_local global i32 0, align 4
@mib2UdpEntryMap = common dso_local global i32 0, align 4
@SNMP_ERRORSTATUS_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"0x%02x: unsupported PDU type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, i32*)* @mib2UdpEntryQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mib2UdpEntryQuery(i32 %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @mib2UdpEntry, align 4
  %13 = call { i32, i32* } @DEFINE_OID(i32 %12)
  %14 = bitcast %struct.TYPE_12__* %7 to { i32, i32* }*
  %15 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %14, i32 0, i32 0
  %16 = extractvalue { i32, i32* } %13, 0
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %14, i32 0, i32 1
  %18 = extractvalue { i32, i32* } %13, 1
  store i32* %18, i32** %17, align 8
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = call i32 @SnmpUtilOidToA(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32* %24)
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %109 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %105
  ]

27:                                               ; preds = %3, %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @udpTable, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %104

33:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @udpTable, align 8
  %38 = bitcast %struct.TYPE_13__* %37 to %struct.GenericTable*
  %39 = load i32, i32* @oidToUdpRow, align 4
  %40 = load i32, i32* @compareUdpRow, align 4
  %41 = call i32 @getItemAndInstanceFromTable(i32* %35, %struct.TYPE_12__* %7, i32 5, i32 %36, %struct.GenericTable* %38, i32 4, i32 %39, i32 %40, i32* %10, i32* %9)
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %103, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* @mib2UdpEntryMap, align 4
  %52 = load i32, i32* @mib2UdpEntryMap, align 4
  %53 = call i32 @DEFINE_SIZEOF(i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** @udpTable, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = call i32 @mapStructEntryToValue(i32 %51, i32 %53, %struct.TYPE_14__* %60, i32 %61, %struct.TYPE_11__* %62)
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %102, label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @udpTable, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @setOidWithItemAndIpAddr(i32* %73, %struct.TYPE_12__* %7, i32 %74, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** @udpTable, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32* %96, i32** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = call i32 @SnmpUtilOidAppend(i32* %99, %struct.TYPE_12__* %11)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %87, %71
  br label %102

102:                                              ; preds = %101, %68, %46
  br label %103

103:                                              ; preds = %102, %33
  br label %104

104:                                              ; preds = %103, %30
  br label %114

105:                                              ; preds = %3
  %106 = load i32, i32* @SNMP_ERRORSTATUS_READONLY, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %8, align 4
  br label %114

109:                                              ; preds = %3
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %105, %104
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local { i32, i32* } @DEFINE_OID(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32*) #1

declare dso_local i32 @SnmpUtilOidToA(i32*) #1

declare dso_local i32 @getItemAndInstanceFromTable(i32*, %struct.TYPE_12__*, i32, i32, %struct.GenericTable*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mapStructEntryToValue(i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @DEFINE_SIZEOF(i32) #1

declare dso_local i32 @setOidWithItemAndIpAddr(i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @SnmpUtilOidAppend(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
