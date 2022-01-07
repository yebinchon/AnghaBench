; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2IfEntryQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2IfEntryQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@mib2IfEntry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(0x%02x, %s, %p)\0A\00", align 1
@ifTable = common dso_local global %struct.TYPE_6__* null, align 8
@SNMP_ERRORSTATUS_NOSUCHNAME = common dso_local global i32 0, align 4
@mib2IfEntryMap = common dso_local global i32 0, align 4
@SNMP_ERRORSTATUS_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"0x%02x: unsupported PDU type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32*)* @mib2IfEntryQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mib2IfEntryQuery(i32 %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @mib2IfEntry, align 4
  %12 = call i32 @DEFINE_OID(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @SnmpUtilOidToA(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32* %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %80 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %76
  ]

21:                                               ; preds = %3, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ifTable, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %75

27:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @getItemAndIntegerInstanceFromOid(i32* %29, i32* %7, i32 %30, i32* %10, i32* %9)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ifTable, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %73

49:                                               ; preds = %36
  %50 = load i32, i32* @mib2IfEntryMap, align 4
  %51 = load i32, i32* @mib2IfEntryMap, align 4
  %52 = call i32 @DEFINE_SIZEOF(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ifTable, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = call i32 @mapStructEntryToValue(i32 %50, i32 %52, i32* %59, i32 %60, %struct.TYPE_5__* %61)
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @setOidWithItemAndInteger(i32* %68, i32* %7, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %49
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %27
  br label %75

75:                                               ; preds = %74, %24
  br label %85

76:                                               ; preds = %3
  %77 = load i32, i32* @SNMP_ERRORSTATUS_READONLY, align 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %3
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %76, %75
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @DEFINE_OID(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32*) #1

declare dso_local i32 @SnmpUtilOidToA(i32*) #1

declare dso_local i32 @getItemAndIntegerInstanceFromOid(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mapStructEntryToValue(i32, i32, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @DEFINE_SIZEOF(i32) #1

declare dso_local i32 @setOidWithItemAndInteger(i32*, i32*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
