; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmWaitForServiceConnect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmWaitForServiceConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"ScmWaitForServiceConnect()\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"ConnectNamedPipe() returned FALSE\0A\00", align 1
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"dwError: ERROR_IO_PENDING\0A\00", align 1
@PipeTimeout = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"WaitForSingleObject() returned %lu\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"WaitForSingleObject() returned WAIT_TIMEOUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"CancelIo() failed (Error: %lu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Log EVENT_CONNECTION_TIMEOUT by %S\0A\00", align 1
@ERROR_SERVICE_REQUEST_TIMEOUT = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"GetOverlappedResult failed (Error %lu)\0A\00", align 1
@ERROR_PIPE_CONNECTED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"ConnectNamedPipe failed (Error %lu)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Control pipe connected!\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ReadFile() returned FALSE\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Log EVENT_READFILE_TIMEOUT by %S\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"WaitForSingleObject() returned WAIT_OBJECT_0\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Process Id: %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"GetOverlappedResult() failed (Error %lu)\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"ReadFile() failed (Error %lu)\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Log EVENT_SERVICE_DIFFERENT_PID_CONNECTED by %S\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"ScmWaitForServiceConnect() done\0A\00", align 1
@EVENTLOG_ERROR_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_WARNING_TYPE = common dso_local global i32 0, align 4
@EVENT_CONNECTION_TIMEOUT = common dso_local global i32 0, align 4
@EVENT_READFILE_TIMEOUT = common dso_local global i32 0, align 4
@EVENT_SERVICE_DIFFERENT_PID_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @ScmWaitForServiceConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScmWaitForServiceConnect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  %10 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ConnectNamedPipe(i32 %17, %struct.TYPE_9__* %8)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i64 (...) @GetLastError()
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @ERROR_IO_PENDING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @PipeTimeout, align 8
  %36 = call i64 @WaitForSingleObject(i32 %34, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @WAIT_TIMEOUT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %28
  %43 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @CancelIo(i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* @ERROR_SERVICE_REQUEST_TIMEOUT, align 8
  store i64 %61, i64* %2, align 8
  br label %203

62:                                               ; preds = %28
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @WAIT_OBJECT_0, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i64 @GetOverlappedResult(i32 %71, %struct.TYPE_9__* %8, i64* %4, i32 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @FALSE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = call i64 (...) @GetLastError()
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %6, align 8
  store i64 %81, i64* %2, align 8
  br label %203

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83
  br label %94

85:                                               ; preds = %22
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @ERROR_PIPE_CONNECTED, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %2, align 8
  br label %203

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %1
  %96 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* null, i8** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = ptrtoint i64* %5 to i32
  %104 = call i64 @ReadFile(i32 %102, i32 %103, i32 8, i64* %4, %struct.TYPE_9__* %8)
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @FALSE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %180

108:                                              ; preds = %95
  %109 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %110 = call i64 (...) @GetLastError()
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @ERROR_IO_PENDING, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %175

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* @PipeTimeout, align 8
  %122 = call i64 @WaitForSingleObject(i32 %120, i64 %121)
  store i64 %122, i64* %6, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @WAIT_TIMEOUT, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %114
  %127 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @CancelIo(i32 %132)
  store i64 %133, i64* %7, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @FALSE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = call i64 (...) @GetLastError()
  %139 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %138)
  br label %140

140:                                              ; preds = %137, %126
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i64 %143)
  %145 = load i64, i64* @ERROR_SERVICE_REQUEST_TIMEOUT, align 8
  store i64 %145, i64* %2, align 8
  br label %203

146:                                              ; preds = %114
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @WAIT_OBJECT_0, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %152 = load i64, i64* %5, align 8
  %153 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i64 %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @TRUE, align 4
  %160 = call i64 @GetOverlappedResult(i32 %158, %struct.TYPE_9__* %8, i64* %4, i32 %159)
  store i64 %160, i64* %7, align 8
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* @FALSE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %150
  %165 = call i64 (...) @GetLastError()
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i64 %166)
  %168 = load i64, i64* %6, align 8
  store i64 %168, i64* %2, align 8
  br label %203

169:                                              ; preds = %150
  br label %173

170:                                              ; preds = %146
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %171)
  br label %173

173:                                              ; preds = %170, %169
  br label %174

174:                                              ; preds = %173
  br label %179

175:                                              ; preds = %108
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i64 %176)
  %178 = load i64, i64* %6, align 8
  store i64 %178, i64* %2, align 8
  br label %203

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179, %95
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = call i64 @ScmIsSecurityService(%struct.TYPE_10__* %183)
  %185 = load i64, i64* @FALSE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %180
  %188 = load i64, i64* %5, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %188, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i64 %198)
  br label %200

200:                                              ; preds = %195, %187, %180
  %201 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %202 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %202, i64* %2, align 8
  br label %203

203:                                              ; preds = %200, %175, %164, %140, %89, %77, %56
  %204 = load i64, i64* %2, align 8
  ret i64 %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DPRINT(i8*, ...) #2

declare dso_local i64 @ConnectNamedPipe(i32, %struct.TYPE_9__*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @WaitForSingleObject(i32, i64) #2

declare dso_local i64 @CancelIo(i32) #2

declare dso_local i32 @DPRINT1(i8*, i64) #2

declare dso_local i64 @GetOverlappedResult(i32, %struct.TYPE_9__*, i64*, i32) #2

declare dso_local i64 @ReadFile(i32, i32, i32, i64*, %struct.TYPE_9__*) #2

declare dso_local i64 @ScmIsSecurityService(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
