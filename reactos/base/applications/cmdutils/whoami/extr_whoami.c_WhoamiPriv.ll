; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiPriv.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiPriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@TokenPrivileges = common dso_local global i32 0, align 4
@IDS_PRIV_HEADER = common dso_local global i32 0, align 4
@IDS_COL_PRIV_NAME = common dso_local global i32 0, align 4
@IDS_COL_DESCRIPTION = common dso_local global i32 0, align 4
@IDS_COL_STATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IDS_UNKNOWN_DESCRIPTION = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@IDS_STATE_ENABLED = common dso_local global i32 0, align 4
@IDS_STATE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WhoamiPriv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = load i32, i32* @TokenPrivileges, align 4
  %12 = call i32 @WhoamiGetTokenInfo(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %139

18:                                               ; preds = %0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  %23 = call i32* @WhoamiAllocTable(i64 %22, i32 3)
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* @IDS_PRIV_HEADER, align 4
  %25 = call i32 @WhoamiPrintHeader(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @IDS_COL_PRIV_NAME, align 4
  %28 = call i32 @WhoamiLoadRcString(i32 %27)
  %29 = call i32 @WhoamiSetTable(i32* %26, i32 %28, i64 0, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @IDS_COL_DESCRIPTION, align 4
  %32 = call i32 @WhoamiLoadRcString(i32 %31)
  %33 = call i32 @WhoamiSetTable(i32* %30, i32 %32, i64 0, i32 1)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @IDS_COL_STATE, align 4
  %36 = call i32 @WhoamiLoadRcString(i32 %35)
  %37 = call i32 @WhoamiSetTable(i32* %34, i32 %36, i64 0, i32 2)
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %131, %18
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %134

44:                                               ; preds = %38
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = call i64 @LookupPrivilegeNameW(i32* null, i32* %51, %struct.TYPE_11__* null, i64* %8)
  store i64 %52, i64* %10, align 8
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = mul i64 %55, 4
  %57 = call %struct.TYPE_11__* @HeapAlloc(i32 %53, i32 0, i64 %56)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %6, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = call i64 @LookupPrivilegeNameW(i32* null, i32* %63, %struct.TYPE_11__* %64, i64* %8)
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  %70 = call i32 @WhoamiSetTableDyn(i32* %66, %struct.TYPE_11__* %67, i64 %69, i32 0)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = call i64 @LookupPrivilegeDisplayNameW(i32* null, %struct.TYPE_11__* %71, %struct.TYPE_11__* null, i64* %9, i64* %3)
  %73 = call i32 (...) @GetProcessHeap()
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  %76 = mul i64 %75, 4
  %77 = call %struct.TYPE_11__* @HeapAlloc(i32 %73, i32 0, i64 %76)
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %7, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = call i64 @LookupPrivilegeDisplayNameW(i32* null, %struct.TYPE_11__* %78, %struct.TYPE_11__* %79, i64* %9, i64* %3)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %44
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = icmp ne %struct.TYPE_11__* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  %91 = call i32 @WhoamiSetTableDyn(i32* %87, %struct.TYPE_11__* %88, i64 %90, i32 1)
  br label %105

92:                                               ; preds = %83, %44
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @IDS_UNKNOWN_DESCRIPTION, align 4
  %95 = call i32 @WhoamiLoadRcString(i32 %94)
  %96 = load i64, i64* %4, align 8
  %97 = add i64 %96, 1
  %98 = call i32 @WhoamiSetTable(i32* %93, i32 %95, i64 %97, i32 1)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = icmp ne %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = call i32 @WhoamiFree(%struct.TYPE_11__* %102)
  br label %104

104:                                              ; preds = %101, %92
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @IDS_STATE_ENABLED, align 4
  %119 = call i32 @WhoamiLoadRcString(i32 %118)
  %120 = load i64, i64* %4, align 8
  %121 = add i64 %120, 1
  %122 = call i32 @WhoamiSetTable(i32* %117, i32 %119, i64 %121, i32 2)
  br label %130

123:                                              ; preds = %105
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @IDS_STATE_DISABLED, align 4
  %126 = call i32 @WhoamiLoadRcString(i32 %125)
  %127 = load i64, i64* %4, align 8
  %128 = add i64 %127, 1
  %129 = call i32 @WhoamiSetTable(i32* %124, i32 %126, i64 %128, i32 2)
  br label %130

130:                                              ; preds = %123, %116
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %4, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %4, align 8
  br label %38

134:                                              ; preds = %38
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @WhoamiPrintTable(i32* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = call i32 @WhoamiFree(%struct.TYPE_11__* %137)
  store i32 0, i32* %1, align 4
  br label %139

139:                                              ; preds = %134, %17
  %140 = load i32, i32* %1, align 4
  ret i32 %140
}

declare dso_local i32 @WhoamiGetTokenInfo(i32) #1

declare dso_local i32* @WhoamiAllocTable(i64, i32) #1

declare dso_local i32 @WhoamiPrintHeader(i32) #1

declare dso_local i32 @WhoamiSetTable(i32*, i32, i64, i32) #1

declare dso_local i32 @WhoamiLoadRcString(i32) #1

declare dso_local i64 @LookupPrivilegeNameW(i32*, i32*, %struct.TYPE_11__*, i64*) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WhoamiSetTableDyn(i32*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @LookupPrivilegeDisplayNameW(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i64*, i64*) #1

declare dso_local i32 @WhoamiFree(%struct.TYPE_11__*) #1

declare dso_local i32 @WhoamiPrintTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
