; ModuleID = '/home/carl/AnghaBench/reactos/base/services/umpnpmgr/extr_install.c_InstallDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/umpnpmgr/extr_install.c_InstallDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i8*, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"InstallDevice(%S, %d)\0A\00", align 1
@hEnumKey = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i32] [i32 67, i32 108, i32 97, i32 115, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"No need to install: %S\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 67, i32 111, i32 110, i32 102, i32 105, i32 103, i32 70, i32 108, i32 97, i32 103, i32 115, i32 0], align 4
@CONFIGFLAG_FAILEDINSTALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Installing: %S\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i32] [i32 123, i32 37, i32 48, i32 56, i32 88, i32 45, i32 37, i32 48, i32 52, i32 88, i32 45, i32 37, i32 48, i32 52, i32 88, i32 45, i32 37, i32 48, i32 50, i32 88, i32 37, i32 48, i32 50, i32 88, i32 45, i32 37, i32 48, i32 50, i32 88, i32 37, i32 48, i32 50, i32 88, i32 37, i32 48, i32 50, i32 88, i32 37, i32 48, i32 50, i32 88, i32 37, i32 48, i32 50, i32 88, i32 37, i32 48, i32 50, i32 88, i32 125, i32 0], align 4
@.str.6 = private unnamed_addr constant [35 x i32] [i32 71, i32 108, i32 111, i32 98, i32 97, i32 108, i32 92, i32 80, i32 78, i32 80, i32 95, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 95, i32 73, i32 110, i32 115, i32 116, i32 97, i32 108, i32 108, i32 95, i32 69, i32 118, i32 101, i32 110, i32 116, i32 95, i32 48, i32 46, i32 0], align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"CreateEventW('%ls') failed with error %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i32] [i32 92, i32 92, i32 46, i32 92, i32 112, i32 105, i32 112, i32 101, i32 92, i32 80, i32 78, i32 80, i32 95, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 95, i32 73, i32 110, i32 115, i32 116, i32 97, i32 108, i32 108, i32 95, i32 80, i32 105, i32 112, i32 101, i32 95, i32 48, i32 46, i32 0], align 4
@PIPE_ACCESS_OUTBOUND = common dso_local global i32 0, align 4
@PIPE_TYPE_BYTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"CreateNamedPipeW failed with error %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i32] [i32 114, i32 117, i32 110, i32 100, i32 108, i32 108, i32 51, i32 50, i32 46, i32 101, i32 120, i32 101, i32 32, i32 110, i32 101, i32 119, i32 100, i32 101, i32 118, i32 46, i32 100, i32 108, i32 108, i32 44, i32 67, i32 108, i32 105, i32 101, i32 110, i32 116, i32 83, i32 105, i32 100, i32 101, i32 73, i32 110, i32 115, i32 116, i32 97, i32 108, i32 108, i32 32, i32 0], align 4
@hUserToken = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"CreateEnvironmentBlock failed with error %d\0A\00", align 1
@CREATE_UNICODE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"CreateProcessAsUserW failed with error %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"CreateProcessW failed with error %u\0A\00", align 1
@ERROR_PIPE_CONNECTED = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"ConnectNamedPipe failed with error %u\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [47 x i8] c"InstallDevice failed for DeviceInstance '%ws'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @InstallDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InstallDevice(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca [116 x i32], align 16
  %17 = alloca [73 x i32], align 16
  %18 = alloca [74 x i32], align 16
  %19 = alloca [39 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %21, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, i32*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %23)
  %25 = call i32 @ZeroMemory(%struct.TYPE_11__* %12, i32 24)
  %26 = load i32, i32* @hEnumKey, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %29 = call i64 @RegOpenKeyExW(i32 %26, i32* %27, i32 0, i32 %28, i32* %15)
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %2
  %33 = load i32, i32* %15, align 4
  %34 = call i64 @RegQueryValueExW(i32 %33, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* null, i32* null, i32* null, i32* null)
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i8*, i32*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @RegCloseKey(i32 %40)
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %267

43:                                               ; preds = %32
  store i32 4, i32* %7, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @RegQueryValueExW(i32 %44, i8* bitcast ([12 x i32]* @.str.3 to i8*), i32* null, i32* null, i32* %8, i32* %7)
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CONFIGFLAG_FAILEDINSTALL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 (i8*, i32*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %54)
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @RegCloseKey(i32 %56)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %267

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @RegCloseKey(i32 %61)
  br label %63

63:                                               ; preds = %60, %2
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %64)
  %66 = call i32 @UuidCreate(%struct.TYPE_10__* %14)
  %67 = getelementptr inbounds [39 x i32], [39 x i32]* %19, i64 0, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @swprintf(i32* %67, i8* bitcast ([51 x i32]* @.str.5 to i8*), i8* %69, i32 %71, i32 %73, i32 %77, i32 %81, i32 %85, i32 %89, i32 %93, i32 %97, i32 %101, i32 %105)
  %107 = getelementptr inbounds [73 x i32], [73 x i32]* %17, i64 0, i64 0
  %108 = call i32 @wcscpy(i32* %107, i8* bitcast ([35 x i32]* @.str.6 to i8*))
  %109 = getelementptr inbounds [73 x i32], [73 x i32]* %17, i64 0, i64 0
  %110 = getelementptr inbounds [39 x i32], [39 x i32]* %19, i64 0, i64 0
  %111 = call i32 @wcscat(i32* %109, i32* %110)
  %112 = load i32, i32* @TRUE, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = getelementptr inbounds [73 x i32], [73 x i32]* %17, i64 0, i64 0
  %115 = call i64 @CreateEventW(i32* null, i32 %112, i32 %113, i32* %114)
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %63
  %119 = getelementptr inbounds [73 x i32], [73 x i32]* %17, i64 0, i64 0
  %120 = call i32* (...) @GetLastError()
  %121 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32* %119, i32* %120)
  br label %224

122:                                              ; preds = %63
  %123 = getelementptr inbounds [74 x i32], [74 x i32]* %18, i64 0, i64 0
  %124 = call i32 @wcscpy(i32* %123, i8* bitcast ([36 x i32]* @.str.8 to i8*))
  %125 = getelementptr inbounds [74 x i32], [74 x i32]* %18, i64 0, i64 0
  %126 = getelementptr inbounds [39 x i32], [39 x i32]* %19, i64 0, i64 0
  %127 = call i32 @wcscat(i32* %125, i32* %126)
  %128 = getelementptr inbounds [74 x i32], [74 x i32]* %18, i64 0, i64 0
  %129 = load i32, i32* @PIPE_ACCESS_OUTBOUND, align 4
  %130 = load i32, i32* @PIPE_TYPE_BYTE, align 4
  %131 = call i64 @CreateNamedPipeW(i32* %128, i32 %129, i32 %130, i32 1, i32 512, i32 512, i32 0, i32* null)
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = call i32* (...) @GetLastError()
  %137 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32* %136)
  br label %224

138:                                              ; preds = %122
  %139 = getelementptr inbounds [116 x i32], [116 x i32]* %16, i64 0, i64 0
  %140 = call i32 @wcscpy(i32* %139, i8* bitcast ([43 x i32]* @.str.10 to i8*))
  %141 = getelementptr inbounds [116 x i32], [116 x i32]* %16, i64 0, i64 0
  %142 = getelementptr inbounds [74 x i32], [74 x i32]* %18, i64 0, i64 0
  %143 = call i32 @wcscat(i32* %141, i32* %142)
  %144 = call i32 @ZeroMemory(%struct.TYPE_11__* %13, i32 24)
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 24, i32* %145, align 8
  %146 = load i64, i64* @hUserToken, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %138
  %149 = load i64, i64* @hUserToken, align 8
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32 @CreateEnvironmentBlock(i32** %11, i64 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = call i32* (...) @GetLastError()
  %155 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32* %154)
  br label %224

156:                                              ; preds = %148
  %157 = load i64, i64* @hUserToken, align 8
  %158 = getelementptr inbounds [116 x i32], [116 x i32]* %16, i64 0, i64 0
  %159 = load i32, i32* @FALSE, align 4
  %160 = load i32, i32* @CREATE_UNICODE_ENVIRONMENT, align 4
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @CreateProcessAsUserW(i64 %157, i32* null, i32* %158, i32* null, i32* null, i32 %159, i32 %160, i32* %161, i32* null, %struct.TYPE_11__* %13, %struct.TYPE_11__* %12)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = call i32* (...) @GetLastError()
  %166 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32* %165)
  br label %224

167:                                              ; preds = %156
  br label %182

168:                                              ; preds = %138
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 @ASSERT(i32 %172)
  %174 = getelementptr inbounds [116 x i32], [116 x i32]* %16, i64 0, i64 0
  %175 = load i32, i32* @FALSE, align 4
  %176 = call i32 @CreateProcessW(i32* null, i32* %174, i32* null, i32* null, i32 %175, i32 0, i32* null, i32* null, %struct.TYPE_11__* %13, %struct.TYPE_11__* %12)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %168
  %179 = call i32* (...) @GetLastError()
  %180 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32* %179)
  br label %224

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %167
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @ConnectNamedPipe(i64 %183, i32* null)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = call i32* (...) @GetLastError()
  %188 = load i32*, i32** @ERROR_PIPE_CONNECTED, align 8
  %189 = icmp ne i32* %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = call i32* (...) @GetLastError()
  %192 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32* %191)
  br label %224

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %182
  store i32 292, i32* %8, align 4
  %195 = load i64, i64* %10, align 8
  %196 = call i32 @WriteFile(i64 %195, i32* %8, i32 4, i32* %7, i32* null)
  %197 = load i64, i64* %10, align 8
  %198 = getelementptr inbounds [73 x i32], [73 x i32]* %17, i64 0, i64 0
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @WriteFile(i64 %197, i32* %198, i32 %199, i32* %7, i32* null)
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @WriteFile(i64 %201, i32* %5, i32 4, i32* %7, i32* null)
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @wcslen(i32* %203)
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %8, align 4
  %209 = load i64, i64* %10, align 8
  %210 = call i32 @WriteFile(i64 %209, i32* %8, i32 4, i32* %7, i32* null)
  %211 = load i64, i64* %10, align 8
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @WriteFile(i64 %211, i32* %212, i32 %213, i32* %7, i32* null)
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @INFINITE, align 4
  %218 = call i64 @WaitForSingleObject(i64 %216, i32 %217)
  %219 = load i64, i64* %9, align 8
  %220 = call i64 @WaitForSingleObject(i64 %219, i32 0)
  %221 = load i64, i64* @WAIT_OBJECT_0, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %194, %190, %178, %164, %153, %135, %118
  %225 = load i64, i64* %9, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i64, i64* %9, align 8
  %229 = call i32 @CloseHandle(i64 %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @CloseHandle(i64 %235)
  br label %237

237:                                              ; preds = %234, %230
  %238 = load i32*, i32** %11, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @DestroyEnvironmentBlock(i32* %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @CloseHandle(i64 %249)
  br label %251

251:                                              ; preds = %247, %243
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @CloseHandle(i64 %257)
  br label %259

259:                                              ; preds = %255, %251
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32* %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %53, %37
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @DPRINT(i8*, i32*, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i32 @UuidCreate(%struct.TYPE_10__*) #1

declare dso_local i32 @swprintf(i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @wcscat(i32*, i32*) #1

declare dso_local i64 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32* @GetLastError(...) #1

declare dso_local i64 @CreateNamedPipeW(i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CreateEnvironmentBlock(i32**, i64, i32) #1

declare dso_local i32 @CreateProcessAsUserW(i64, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @CreateProcessW(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ConnectNamedPipe(i64, i32*) #1

declare dso_local i32 @WriteFile(i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DestroyEnvironmentBlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
