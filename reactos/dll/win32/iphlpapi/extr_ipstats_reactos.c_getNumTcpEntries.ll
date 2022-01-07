; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNumTcpEntries.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNumTcpEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"called.\0A\00", align 1
@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"openTcpFile returned 0x%08lx\0A\00", align 1
@CO_TL_ENTITY = common dso_local global i64 0, align 8
@INFO_CLASS_PROTOCOL = common dso_local global i32 0, align 4
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@IP_MIB_ARPTABLE_ENTRY_ID = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumTcpEntries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @FILE_READ_DATA, align 4
  %12 = call i64 @openTcpFile(i32* %4, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @NT_SUCCESS(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  store i32 0, i32* %1, align 4
  br label %85

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @tdiGetEntityIDSet(i32 %20, %struct.TYPE_6__** %3, i32* %2)
  store i64 %21, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %72, %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CO_TL_ENTITY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = call i64 @hasArp(i32 %36, %struct.TYPE_6__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @INFO_CLASS_PROTOCOL, align 4
  %46 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %47 = load i32, i32* @IP_MIB_ARPTABLE_ENTRY_ID, align 4
  %48 = load i64, i64* @CO_TL_ENTITY, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %struct.TYPE_6__** %8 to i32*
  %56 = call i64 @tdiGetSetOfThings(i32 %44, i32 %45, i32 %46, i32 %47, i64 %48, i32 %54, i32 0, i32 4, i32* %55, i32* %9)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @STATUS_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %43
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = call i32 @tdiFreeThingSet(%struct.TYPE_6__* %68)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %35, %26
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %22

75:                                               ; preds = %22
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @closeTcpFile(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = icmp ne %struct.TYPE_6__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = call i32 @tdiFreeThingSet(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %83, %16
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @openTcpFile(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @tdiGetEntityIDSet(i32, %struct.TYPE_6__**, i32*) #1

declare dso_local i64 @hasArp(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @tdiGetSetOfThings(i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @tdiFreeThingSet(%struct.TYPE_6__*) #1

declare dso_local i32 @closeTcpFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
