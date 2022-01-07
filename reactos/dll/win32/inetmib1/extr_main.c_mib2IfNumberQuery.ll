; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2IfNumberQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mib2IfNumberQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@mib2IfNumber = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(0x%02x, %s, %p)\0A\00", align 1
@ifTable = common dso_local global %struct.TYPE_10__* null, align 8
@SNMP_ERRORSTATUS_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERRORSTATUS_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERRORSTATUS_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"0x%02x: unsupported PDU type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32*)* @mib2IfNumberQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mib2IfNumberQuery(i32 %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @mib2IfNumber, align 4
  %11 = call i32 @DEFINE_OID(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i32 @SnmpUtilOidToA(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32* %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %71 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %67
  ]

21:                                               ; preds = %3, %3
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SnmpUtilOidNCmp(i32* %26, %struct.TYPE_9__* %7, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24, %21
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SnmpUtilOidNCmp(i32* %33, %struct.TYPE_9__* %7, i32 %35)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %31, %24
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ifTable, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ifTable, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = call i32 @copyInt(i32* %49, i32* %9)
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = call i32 @SnmpUtilOidFree(i32* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @SnmpUtilOidCpy(i32* %58, %struct.TYPE_9__* %7)
  br label %60

60:                                               ; preds = %53, %46
  %61 = load i32, i32* @SNMP_ERRORSTATUS_NOERROR, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %31
  %64 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %76

67:                                               ; preds = %3
  %68 = load i32, i32* @SNMP_ERRORSTATUS_READONLY, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %8, align 4
  br label %76

71:                                               ; preds = %3
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %67, %66
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @DEFINE_OID(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32*) #1

declare dso_local i32 @SnmpUtilOidToA(i32*) #1

declare dso_local i32 @SnmpUtilOidNCmp(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @copyInt(i32*, i32*) #1

declare dso_local i32 @SnmpUtilOidFree(i32*) #1

declare dso_local i32 @SnmpUtilOidCpy(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
