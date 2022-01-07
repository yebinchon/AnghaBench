; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getTcpTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getTcpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"called.\0A\00", align 1
@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"openTcpFile returned 0x%08lx\0A\00", align 1
@UdpTcpTableCall = common dso_local global %struct.TYPE_13__* null, align 8
@CO_TL_ENTITY = common dso_local global i64 0, align 8
@INFO_CLASS_PROTOCOL = common dso_local global i32 0, align 4
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @getTcpTable(i64 %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @getNumTcpEntries()
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @FILE_READ_DATA, align 4
  %18 = call i64 @openTcpFile(i32* %7, i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @NT_SUCCESS(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %153

25:                                               ; preds = %1
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %31, %38
  %40 = call %struct.TYPE_12__* @HeapAlloc(i32 %26, i32 0, i32 %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %13, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @closeTcpFile(i32 %44)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %153

46:                                               ; preds = %25
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @tdiGetEntityIDSet(i32 %47, %struct.TYPE_12__** %6, i32* %4)
  store i64 %48, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %141, %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %144

53:                                               ; preds = %49
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CO_TL_ENTITY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %140

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = call i64 @hasArp(i32 %63, %struct.TYPE_12__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %140

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @INFO_CLASS_PROTOCOL, align 4
  %73 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @CO_TL_ENTITY, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %87 = load i64, i64* %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @tdiGetSetOfThings(i32 %71, i32 %72, i32 %73, i32 %78, i64 %79, i32 %85, i32 0, i32 %90, %struct.TYPE_12__** %14, i32* %5)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @STATUS_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %139

95:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %131, %95
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %96
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %103 = load i64, i64* %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %108 = load i64, i64* %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %106, %113
  %115 = call i32 @Add2Ptr(%struct.TYPE_12__* %101, i32 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %118 = load i64, i64* %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @Add2Ptr(%struct.TYPE_12__* %116, i32 %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** @UdpTcpTableCall, align 8
  %126 = load i64, i64* %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CopyMemory(i32 %115, i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %100
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %96

136:                                              ; preds = %96
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %138 = call i32 @tdiFreeThingSet(%struct.TYPE_12__* %137)
  br label %139

139:                                              ; preds = %136, %70
  br label %140

140:                                              ; preds = %139, %62, %53
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %49

144:                                              ; preds = %49
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @closeTcpFile(i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = call i32 @tdiFreeThingSet(%struct.TYPE_12__* %147)
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %2, align 8
  br label %153

153:                                              ; preds = %144, %43, %22
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %154
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @getNumTcpEntries(...) #1

declare dso_local i64 @openTcpFile(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @closeTcpFile(i32) #1

declare dso_local i64 @tdiGetEntityIDSet(i32, %struct.TYPE_12__**, i32*) #1

declare dso_local i64 @hasArp(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @tdiGetSetOfThings(i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @CopyMemory(i32, i32, i32) #1

declare dso_local i32 @Add2Ptr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @tdiFreeThingSet(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
