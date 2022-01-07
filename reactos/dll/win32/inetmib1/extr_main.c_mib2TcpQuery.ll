; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2TcpQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2TcpQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@mib2Tcp = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(0x%02x, %s, %p)\0A\00", align 1
@mib2TcpMap = common dso_local global i32 0, align 4
@tcpStats = common dso_local global i32 0, align 4
@SNMP_ERRORSTATUS_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"0x%02x: unsupported PDU type\0A\00", align 1
@SNMP_ERRORSTATUS_NOSUCHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, i32*)* @mib2TcpQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mib2TcpQuery(i32 %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @mib2Tcp, align 4
  %11 = call i32 @DEFINE_OID(i32 %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @SnmpUtilOidToA(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32* %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %54 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %50
  ]

20:                                               ; preds = %3, %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @getItemFromOid(i32* %22, i32* %7, i32 %23, i32* %8)
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @mib2TcpMap, align 4
  %31 = load i32, i32* @mib2TcpMap, align 4
  %32 = call i32 @DEFINE_SIZEOF(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = call i32 @mapStructEntryToValue(i32 %30, i32 %32, i32* @tcpStats, i32 %33, %struct.TYPE_4__* %34)
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @setOidWithItem(i32* %45, i32* %7, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %40, %29
  br label %49

49:                                               ; preds = %48, %20
  br label %59

50:                                               ; preds = %3
  %51 = load i32, i32* @SNMP_ERRORSTATUS_READONLY, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %3
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %50, %49
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @DEFINE_OID(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32*) #1

declare dso_local i32 @SnmpUtilOidToA(i32*) #1

declare dso_local i32 @getItemFromOid(i32*, i32*, i32, i32*) #1

declare dso_local i32 @mapStructEntryToValue(i32, i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @DEFINE_SIZEOF(i32) #1

declare dso_local i32 @setOidWithItem(i32*, i32*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
