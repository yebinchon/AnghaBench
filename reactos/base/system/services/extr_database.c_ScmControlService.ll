; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmControlService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmControlService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i32, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"ScmControlService() called\0A\00", align 1
@ControlServiceCriticalSection = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"WriteFile() returned FALSE\0A\00", align 1
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"dwError: ERROR_IO_PENDING\0A\00", align 1
@PipeTimeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"WaitForSingleObject() returned %lu\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"CancelIo() failed (Error: %lu)\0A\00", align 1
@ERROR_SERVICE_REQUEST_TIMEOUT = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"GetOverlappedResult() failed (Error %lu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"WriteFile() failed (Error %lu)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"ReadFile() returned FALSE\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ReadFile() failed (Error %lu)\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ScmControlService() done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmControlService(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %19, i64* %16, align 8
  %20 = bitcast %struct.TYPE_13__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @EnterCriticalSection(i32* @ControlServiceCriticalSection)
  store i64 4, i64* %14, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @wcslen(i64 %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = load i64, i64* %14, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %14, align 8
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %32 = load i64, i64* %14, align 8
  %33 = call %struct.TYPE_12__* @HeapAlloc(i32 %30, i32 %31, i64 %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %10, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = icmp eq %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = call i32 @LeaveCriticalSection(i32* @ControlServiceCriticalSection)
  %38 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %38, i64* %5, align 8
  br label %191

39:                                               ; preds = %4
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = ptrtoint %struct.TYPE_12__* %51 to i64
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @wcscpy(i64 %58, i64 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @WriteFile(i64 %65, %struct.TYPE_12__* %66, i64 %67, i64* %12, %struct.TYPE_13__* %18)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @FALSE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %121

72:                                               ; preds = %39
  %73 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i64 (...) @GetLastError()
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* @ERROR_IO_PENDING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %117

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @PipeTimeout, align 4
  %82 = call i64 @WaitForSingleObject(i64 %80, i32 %81)
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %16, align 8
  %84 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* @WAIT_TIMEOUT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @CancelIo(i64 %89)
  store i64 %90, i64* %17, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* @FALSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = call i64 (...) @GetLastError()
  %96 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i64, i64* @ERROR_SERVICE_REQUEST_TIMEOUT, align 8
  store i64 %98, i64* %16, align 8
  br label %178

99:                                               ; preds = %78
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* @WAIT_OBJECT_0, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i64, i64* %6, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i64 @GetOverlappedResult(i64 %104, %struct.TYPE_13__* %18, i64* %12, i32 %105)
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @FALSE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = call i64 (...) @GetLastError()
  store i64 %111, i64* %16, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %112)
  br label %178

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115
  br label %120

117:                                              ; preds = %72
  %118 = load i64, i64* %16, align 8
  %119 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %118)
  br label %178

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %39
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @ReadFile(i64 %123, %struct.TYPE_11__* %11, i32 8, i64* %13, %struct.TYPE_13__* %18)
  store i64 %124, i64* %17, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* @FALSE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %177

128:                                              ; preds = %121
  %129 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %130 = call i64 (...) @GetLastError()
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* @ERROR_IO_PENDING, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %173

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i64, i64* %6, align 8
  %137 = load i32, i32* @PipeTimeout, align 4
  %138 = call i64 @WaitForSingleObject(i64 %136, i32 %137)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %139)
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* @WAIT_TIMEOUT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %134
  %145 = load i64, i64* %6, align 8
  %146 = call i64 @CancelIo(i64 %145)
  store i64 %146, i64* %17, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i64, i64* @FALSE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = call i64 (...) @GetLastError()
  %152 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %150, %144
  %154 = load i64, i64* @ERROR_SERVICE_REQUEST_TIMEOUT, align 8
  store i64 %154, i64* %16, align 8
  br label %178

155:                                              ; preds = %134
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* @WAIT_OBJECT_0, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load i64, i64* %6, align 8
  %161 = load i32, i32* @TRUE, align 4
  %162 = call i64 @GetOverlappedResult(i64 %160, %struct.TYPE_13__* %18, i64* %13, i32 %161)
  store i64 %162, i64* %17, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* @FALSE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = call i64 (...) @GetLastError()
  store i64 %167, i64* %16, align 8
  %168 = load i64, i64* %16, align 8
  %169 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %168)
  br label %178

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %155
  br label %172

172:                                              ; preds = %171
  br label %176

173:                                              ; preds = %128
  %174 = load i64, i64* %16, align 8
  %175 = call i32 @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %174)
  br label %178

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %121
  br label %178

178:                                              ; preds = %177, %173, %166, %153, %117, %110, %97
  %179 = call i32 (...) @GetProcessHeap()
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %181 = call i32 @HeapFree(i32 %179, i32 0, %struct.TYPE_12__* %180)
  %182 = load i64, i64* %13, align 8
  %183 = icmp eq i64 %182, 8
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %16, align 8
  br label %187

187:                                              ; preds = %184, %178
  %188 = call i32 @LeaveCriticalSection(i32* @ControlServiceCriticalSection)
  %189 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i64, i64* %16, align 8
  store i64 %190, i64* %5, align 8
  br label %191

191:                                              ; preds = %187, %36
  %192 = load i64, i64* %5, align 8
  ret i64 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DPRINT(i8*, ...) #2

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local i32 @wcslen(i64) #2

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

declare dso_local i32 @wcscpy(i64, i64) #2

declare dso_local i64 @WriteFile(i64, %struct.TYPE_12__*, i64, i64*, %struct.TYPE_13__*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @WaitForSingleObject(i64, i32) #2

declare dso_local i64 @CancelIo(i64) #2

declare dso_local i32 @DPRINT1(i8*, i64) #2

declare dso_local i64 @GetOverlappedResult(i64, %struct.TYPE_13__*, i64*, i32) #2

declare dso_local i64 @ReadFile(i64, %struct.TYPE_11__*, i32, i64*, %struct.TYPE_13__*) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
