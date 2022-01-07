; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNumArpEntries.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNumArpEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"called.\0A\00", align 1
@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"openTcpFile returned 0x%08lx\0A\00", align 1
@INFO_CLASS_PROTOCOL = common dso_local global i32 0, align 4
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@IP_MIB_ARPTABLE_ENTRY_ID = common dso_local global i32 0, align 4
@AT_ENTITY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumArpEntries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
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
  br label %83

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @tdiGetEntityIDSet(i32 %20, %struct.TYPE_7__** %3, i32* %2)
  store i64 %21, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %70, %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = call i64 @isInterface(%struct.TYPE_7__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = call i64 @hasArp(i32 %34, %struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @INFO_CLASS_PROTOCOL, align 4
  %44 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %45 = load i32, i32* @IP_MIB_ARPTABLE_ENTRY_ID, align 4
  %46 = load i32, i32* @AT_ENTITY, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %struct.TYPE_7__** %8 to i32*
  %54 = call i64 @tdiGetSetOfThings(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %52, i32 0, i32 4, i32* %53, i32* %9)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @STATUS_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %41
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = call i32 @tdiFreeThingSet(%struct.TYPE_7__* %66)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %33, %26
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %22

73:                                               ; preds = %22
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @closeTcpFile(i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = call i32 @tdiFreeThingSet(%struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %1, align 4
  br label %83

83:                                               ; preds = %81, %16
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @openTcpFile(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @tdiGetEntityIDSet(i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i64 @isInterface(%struct.TYPE_7__*) #1

declare dso_local i64 @hasArp(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @tdiGetSetOfThings(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @tdiFreeThingSet(%struct.TYPE_7__*) #1

declare dso_local i32 @closeTcpFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
