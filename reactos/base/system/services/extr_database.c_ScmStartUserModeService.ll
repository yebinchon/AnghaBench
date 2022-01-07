; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmStartUserModeService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmStartUserModeService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i8*, i32, i32, i32, i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"ScmStartUserModeService(%p)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [100 x i8] c"CreateEnvironmentBlock() failed with error %d; service '%S' will run with the current environment.\0A\00", align 1
@CREATE_UNICODE_ENVIRONMENT = common dso_local global i32 0, align 4
@DETACHED_PROCESS = common dso_local global i32 0, align 4
@CREATE_SUSPENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"ImpersonateLoggedOnUser() failed with error %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@NoInteractiveServices = common dso_local global i64 0, align 8
@SERVICE_INTERACTIVE_PROCESS = common dso_local global i32 0, align 4
@STARTF_INHERITDESKTOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 87, i32 105, i32 110, i32 83, i32 116, i32 97, i32 48, i32 92, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 0], align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Starting '%S' failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Process Id: %lu  Handle %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Thread Id: %lu  Handle %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Connecting control pipe failed! (Error %lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i64, i32*)* @ScmStartUserModeService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScmStartUserModeService(%struct.TYPE_17__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32 (i8*, %struct.TYPE_17__*, ...) @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @ScmSendStartCommand(%struct.TYPE_17__* %23, i64 %24, i32* %25)
  store i64 %26, i64* %4, align 8
  br label %215

27:                                               ; preds = %3
  %28 = call i32 @ZeroMemory(%struct.TYPE_16__* %9, i32 40)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 40, i32* %29, align 8
  %30 = call i32 @ZeroMemory(%struct.TYPE_16__* %8, i32 40)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %91

37:                                               ; preds = %27
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = call i32 @CreateEnvironmentBlock(i32** %10, i32* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = call i64 (...) @GetLastError()
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %50)
  store i32* null, i32** %10, align 8
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @ImpersonateLoggedOnUser(i32* %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %52
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* @FALSE, align 8
  %73 = load i32, i32* @CREATE_UNICODE_ENVIRONMENT, align 4
  %74 = load i32, i32* @DETACHED_PROCESS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @CREATE_SUSPENDED, align 4
  %77 = or i32 %75, %76
  %78 = load i32*, i32** %10, align 8
  %79 = call i64 @CreateProcessAsUserW(i32* %66, i32* null, i32 %71, i32* null, i32* null, i64 %72, i32 %77, i32* %78, i32* null, %struct.TYPE_16__* %9, %struct.TYPE_16__* %8)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %61
  %83 = call i64 (...) @GetLastError()
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %82, %61
  %85 = call i32 (...) @RevertToSelf()
  br label %90

86:                                               ; preds = %52
  %87 = call i64 (...) @GetLastError()
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %86, %84
  br label %147

91:                                               ; preds = %27
  %92 = load i64, i64* @TRUE, align 8
  %93 = call i32 @CreateEnvironmentBlock(i32** %10, i32* null, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = call i64 (...) @GetLastError()
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i64 %96, i32 %99)
  store i32* null, i32** %10, align 8
  br label %101

101:                                              ; preds = %95, %91
  %102 = load i64, i64* @NoInteractiveServices, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SERVICE_INTERACTIVE_PROCESS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i32, i32* @STARTF_INHERITDESKTOP, align 4
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i8* bitcast ([16 x i32]* @.str.3 to i8*), i8** %117, align 8
  br label %118

118:                                              ; preds = %112, %104, %101
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = call i32 @ScmIsSecurityService(%struct.TYPE_18__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @FALSE, align 8
  %131 = load i32, i32* @CREATE_UNICODE_ENVIRONMENT, align 4
  %132 = load i32, i32* @DETACHED_PROCESS, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @CREATE_SUSPENDED, align 4
  %135 = or i32 %133, %134
  %136 = load i32*, i32** %10, align 8
  %137 = call i64 @CreateProcessW(i32* null, i32 %129, i32* null, i32* null, i64 %130, i32 %135, i32* %136, i32* null, %struct.TYPE_16__* %9, %struct.TYPE_16__* %8)
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %124
  %141 = call i64 (...) @GetLastError()
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %140, %124
  br label %146

143:                                              ; preds = %118
  %144 = load i64, i64* @TRUE, align 8
  store i64 %144, i64* %11, align 8
  %145 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %143, %142
  br label %147

147:                                              ; preds = %146, %90
  %148 = load i32*, i32** %10, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @DestroyEnvironmentBlock(i32* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i64, i64* %11, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %12, align 8
  %162 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %160, i64 %161)
  %163 = load i64, i64* %12, align 8
  store i64 %163, i64* %4, align 8
  br label %215

164:                                              ; preds = %153
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.TYPE_17__*
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, %struct.TYPE_17__*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_17__* %168, i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to %struct.TYPE_17__*
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i8*, %struct.TYPE_17__*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_17__* %175, i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  store i32 %180, i32* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  store i32 %186, i32* %190, align 4
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ResumeThread(i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @CloseHandle(i32 %195)
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = call i64 @ScmWaitForServiceConnect(%struct.TYPE_17__* %197)
  store i64 %198, i64* %12, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* @ERROR_SUCCESS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %164
  %203 = load i64, i64* %12, align 8
  %204 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %203)
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  store i32 0, i32* %208, align 4
  %209 = load i64, i64* %12, align 8
  store i64 %209, i64* %4, align 8
  br label %215

210:                                              ; preds = %164
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = load i64, i64* %6, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = call i64 @ScmSendStartCommand(%struct.TYPE_17__* %211, i64 %212, i32* %213)
  store i64 %214, i64* %4, align 8
  br label %215

215:                                              ; preds = %210, %202, %156, %22
  %216 = load i64, i64* %4, align 8
  ret i64 %216
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_17__*, ...) #1

declare dso_local i64 @ScmSendStartCommand(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @CreateEnvironmentBlock(i32**, i32*, i64) #1

declare dso_local i32 @DPRINT1(i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @ImpersonateLoggedOnUser(i32*) #1

declare dso_local i64 @CreateProcessAsUserW(i32*, i32*, i32, i32*, i32*, i64, i32, i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @RevertToSelf(...) #1

declare dso_local i32 @ScmIsSecurityService(%struct.TYPE_18__*) #1

declare dso_local i64 @CreateProcessW(i32*, i32, i32*, i32*, i64, i32, i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @DestroyEnvironmentBlock(i32*) #1

declare dso_local i32 @ResumeThread(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i64 @ScmWaitForServiceConnect(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
