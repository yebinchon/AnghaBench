; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2IpRouteQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2IpRouteQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.GenericTable = type { i32 }

@mib2IpRoute = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(0x%02x, %s, %p)\0A\00", align 1
@ipRouteTable = common dso_local global %struct.TYPE_8__* null, align 8
@oidToIpForwardRow = common dso_local global i32 0, align 4
@compareIpForwardRow = common dso_local global i32 0, align 4
@mib2IpRouteMap = common dso_local global i32 0, align 4
@SNMP_ERRORSTATUS_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"0x%02x: unsupported PDU type\0A\00", align 1
@SNMP_ERRORSTATUS_NOSUCHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32*)* @mib2IpRouteQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mib2IpRouteQuery(i32 %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @mib2IpRoute, align 4
  %12 = call i32 @DEFINE_OID(i32 %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @SnmpUtilOidToA(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32* %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %79 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %75
  ]

21:                                               ; preds = %3, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ipRouteTable, align 8
  %26 = bitcast %struct.TYPE_8__* %25 to %struct.GenericTable*
  %27 = load i32, i32* @oidToIpForwardRow, align 4
  %28 = load i32, i32* @compareIpForwardRow, align 4
  %29 = call i32 @getItemAndInstanceFromTable(i32* %23, i32* %7, i32 4, i32 %24, %struct.GenericTable* %26, i32 4, i32 %27, i32 %28, i32* %9, i32* %8)
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @mib2IpRouteMap, align 4
  %40 = load i32, i32* @mib2IpRouteMap, align 4
  %41 = call i32 @DEFINE_SIZEOF(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ipRouteTable, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = call i32 @mapStructEntryToValue(i32 %39, i32 %41, %struct.TYPE_7__* %48, i32 %49, %struct.TYPE_6__* %50)
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ipRouteTable, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @setOidWithItemAndIpAddr(i32* %61, i32* %7, i32 %62, i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %59, %56, %34
  br label %74

74:                                               ; preds = %73, %21
  br label %84

75:                                               ; preds = %3
  %76 = load i32, i32* @SNMP_ERRORSTATUS_READONLY, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %10, align 4
  br label %84

79:                                               ; preds = %3
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %75, %74
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @DEFINE_OID(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32*) #1

declare dso_local i32 @SnmpUtilOidToA(i32*) #1

declare dso_local i32 @getItemAndInstanceFromTable(i32*, i32*, i32, i32, %struct.GenericTable*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mapStructEntryToValue(i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DEFINE_SIZEOF(i32) #1

declare dso_local i32 @setOidWithItemAndIpAddr(i32*, i32*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
