; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_adapter.c_IsReconnectHackNeeded.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_adapter.c_IsReconnectHackNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.protocol = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@S_BOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@S_STATIC = common dso_local global i64 0, align 8
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsReconnectHackNeeded(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.protocol*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = call %struct.protocol* @find_protocol_by_adapter(%struct.TYPE_19__* %13)
  store %struct.protocol* %14, %struct.protocol** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @S_BOUND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.protocol*, %struct.protocol** %6, align 8
  %25 = icmp ne %struct.protocol* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %144

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S_BOUND, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @S_STATIC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %144

48:                                               ; preds = %37, %28
  %49 = call i32 (...) @ApiUnlock()
  %50 = call i32 (...) @GetProcessHeap()
  %51 = call %struct.TYPE_16__* @HeapAlloc(i32 %50, i32 0, i64 4)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %8, align 8
  store i64 4, i64* %9, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = icmp ne %struct.TYPE_16__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = call i32 (...) @ApiLock()
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %144

57:                                               ; preds = %48
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = call i64 @GetAdaptersInfo(%struct.TYPE_16__* %58, i64* %9)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %57
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.TYPE_16__* %65)
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load i64, i64* %9, align 8
  %69 = call %struct.TYPE_16__* @HeapAlloc(i32 %67, i32 0, i64 %68)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %7, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = icmp ne %struct.TYPE_16__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = call i32 (...) @ApiLock()
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %63
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = call i64 @GetAdaptersInfo(%struct.TYPE_16__* %76, i64* %9)
  %78 = load i64, i64* @NO_ERROR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 (...) @ApiLock()
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %144

83:                                               ; preds = %75
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %8, align 8
  br label %85

85:                                               ; preds = %98, %83
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = icmp ne %struct.TYPE_16__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %102

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %7, align 8
  br label %85

102:                                              ; preds = %96, %85
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = icmp eq %struct.TYPE_16__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = call i32 (...) @GetProcessHeap()
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %108 = call i32 @HeapFree(i32 %106, i32 0, %struct.TYPE_16__* %107)
  %109 = call i32 (...) @ApiLock()
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %3, align 4
  br label %144

111:                                              ; preds = %102
  br label %123

112:                                              ; preds = %57
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @NO_ERROR, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %119 = call i32 @HeapFree(i32 %117, i32 0, %struct.TYPE_16__* %118)
  %120 = call i32 (...) @ApiLock()
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %3, align 4
  br label %144

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %111
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @strcmp(i32 %128, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %123
  %133 = call i32 (...) @GetProcessHeap()
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %135 = call i32 @HeapFree(i32 %133, i32 0, %struct.TYPE_16__* %134)
  %136 = call i32 (...) @ApiLock()
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %3, align 4
  br label %144

138:                                              ; preds = %123
  %139 = call i32 (...) @GetProcessHeap()
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %141 = call i32 @HeapFree(i32 %139, i32 0, %struct.TYPE_16__* %140)
  %142 = call i32 (...) @ApiLock()
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %132, %116, %105, %80, %72, %54, %46, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.protocol* @find_protocol_by_adapter(%struct.TYPE_19__*) #1

declare dso_local i32 @ApiUnlock(...) #1

declare dso_local %struct.TYPE_16__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ApiLock(...) #1

declare dso_local i64 @GetAdaptersInfo(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
