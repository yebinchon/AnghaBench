; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_failure.c_QueryFailure.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_failure.c_QueryFailure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@SERVICE_CONFIG_FAILURE_ACTIONS = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SERVICE_NAME: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"        RESET_PERIOD       : %lu seconds\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"        REBOOT_MESSAGE     : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"        COMMAND_LINE       : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"        FAILURE_ACTIONS    : \00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"                             \00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"RESTART -- Delay = %lu milliseconds.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"REBOOT -- Delay = %lu milliseconds.\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"RUN_COMMAND -- Delay = %lu milliseconds.\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @QueryFailure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %10 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %11 = call i32* @OpenSCManager(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %5, align 8
  br label %154

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %20 = call i32* @OpenService(i32* %17, i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %5, align 8
  br label %154

25:                                               ; preds = %16
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @SERVICE_CONFIG_FAILURE_ACTIONS, align 4
  %28 = call i32 @QueryServiceConfig2(i32* %26, i32 %27, i32* null, i64 0, i64* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %5, align 8
  br label %154

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %25
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.TYPE_6__* @HeapAlloc(i32 %37, i32 0, i64 %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = icmp eq %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %44 = call i32 @SetLastError(i32 %43)
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %5, align 8
  br label %154

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @SERVICE_CONFIG_FAILURE_ACTIONS, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = bitcast %struct.TYPE_6__* %49 to i32*
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @QueryServiceConfig2(i32* %47, i32 %48, i32* %50, i64 %51, i64* %6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %5, align 8
  br label %154

56:                                               ; preds = %46
  %57 = call i64 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %2, align 4
  %59 = call i32 (i64, ...) @_tprintf(i64 %57, i32 %58)
  %60 = call i64 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i64, ...) @_tprintf(i64 %60, i32 %63)
  %65 = call i64 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  br label %76

74:                                               ; preds = %56
  %75 = call i64 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i64 [ %73, %70 ], [ %75, %74 ]
  %78 = call i32 (i64, ...) @_tprintf(i64 %65, i64 %77)
  %79 = call i64 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  br label %90

88:                                               ; preds = %76
  %89 = call i64 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i64 [ %87, %84 ], [ %89, %88 ]
  %92 = call i32 (i64, ...) @_tprintf(i64 %79, i64 %91)
  %93 = call i64 @_T(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 (i64, ...) @_tprintf(i64 %93)
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %150, %90
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %153

101:                                              ; preds = %95
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = call i64 @_T(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %106 = call i32 (i64, ...) @_tprintf(i64 %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %146 [
    i32 131, label %115
    i32 129, label %116
    i32 130, label %126
    i32 128, label %136
  ]

115:                                              ; preds = %107
  br label %150

116:                                              ; preds = %107
  %117 = call i64 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i64, ...) @_tprintf(i64 %117, i32 %124)
  br label %149

126:                                              ; preds = %107
  %127 = call i64 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i64, ...) @_tprintf(i64 %127, i32 %134)
  br label %149

136:                                              ; preds = %107
  %137 = call i64 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i64, ...) @_tprintf(i64 %137, i32 %144)
  br label %149

146:                                              ; preds = %107
  %147 = call i64 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %148 = call i32 (i64, ...) @_tprintf(i64 %147)
  br label %149

149:                                              ; preds = %146, %136, %126, %116
  br label %150

150:                                              ; preds = %149, %115
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %8, align 8
  br label %95

153:                                              ; preds = %95
  br label %154

154:                                              ; preds = %153, %54, %42, %33, %23, %14
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @FALSE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = call i32 (...) @ReportLastError()
  br label %160

160:                                              ; preds = %158, %154
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %162 = icmp ne %struct.TYPE_6__* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = call i32 (...) @GetProcessHeap()
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = call i32 @HeapFree(i32 %164, i32 0, %struct.TYPE_6__* %165)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32*, i32** %4, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @CloseServiceHandle(i32* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %3, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @CloseServiceHandle(i32* %177)
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i64, i64* %5, align 8
  ret i64 %180
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @QueryServiceConfig2(i32*, i32, i32*, i64, i64*) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @_tprintf(i64, ...) #1

declare dso_local i64 @_T(i8*) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
