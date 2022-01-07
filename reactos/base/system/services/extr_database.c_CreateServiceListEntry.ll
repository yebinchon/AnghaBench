; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_CreateServiceListEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_CreateServiceListEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_8__, i32, i64, i64, i32, %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Service: '%S'\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 84, i32 121, i32 112, i32 101, i32 0], align 4
@SERVICE_INTERACTIVE_PROCESS = common dso_local global i64 0, align 8
@SERVICE_WIN32_OWN_PROCESS = common dso_local global i64 0, align 8
@SERVICE_WIN32_SHARE_PROCESS = common dso_local global i64 0, align 8
@SERVICE_KERNEL_DRIVER = common dso_local global i64 0, align 8
@SERVICE_FILE_SYSTEM_DRIVER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Service type: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i32] [i32 83, i32 116, i32 97, i32 114, i32 116, i32 0], align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Start type: %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 0], align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Error control: %lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i32] [i32 84, i32 97, i32 103, i32 0], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Tag: %lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i32] [i32 71, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"Group: %S\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i32] [i32 68, i32 105, i32 115, i32 112, i32 108, i32 97, i32 121, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"Display name: %S\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"ServiceName: '%S'\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Group: '%S'\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Start %lx  Type %lx  Tag %lx  ErrorControl %lx\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SERVICE_WIN32 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [67 x i8] c"No security descriptor found! Assign default security descriptor!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @CreateServiceListEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateServiceListEntry(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 123
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %21, i64* %3, align 8
  br label %252

22:                                               ; preds = %2
  store i64 8, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = ptrtoint i64* %11 to i32
  %25 = call i64 @RegQueryValueExW(i32 %23, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %24, i64* %9)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %30, i64* %3, align 8
  br label %252

31:                                               ; preds = %22
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @SERVICE_INTERACTIVE_PROCESS, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  %36 = load i64, i64* @SERVICE_WIN32_OWN_PROCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @SERVICE_INTERACTIVE_PROCESS, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = load i64, i64* @SERVICE_WIN32_SHARE_PROCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @SERVICE_KERNEL_DRIVER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @SERVICE_FILE_SYSTEM_DRIVER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %54, i64* %3, align 8
  br label %252

55:                                               ; preds = %49, %45, %38, %31
  %56 = load i64, i64* %11, align 8
  %57 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  store i64 8, i64* %9, align 8
  %58 = load i32, i32* %5, align 4
  %59 = ptrtoint i64* %12 to i32
  %60 = call i64 @RegQueryValueExW(i32 %58, i8* bitcast ([6 x i32]* @.str.3 to i8*), i32* null, i32* null, i32 %59, i64* %9)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %65, i64* %3, align 8
  br label %252

66:                                               ; preds = %55
  %67 = load i64, i64* %12, align 8
  %68 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  store i64 8, i64* %9, align 8
  %69 = load i32, i32* %5, align 4
  %70 = ptrtoint i64* %13 to i32
  %71 = call i64 @RegQueryValueExW(i32 %69, i8* bitcast ([13 x i32]* @.str.5 to i8*), i32* null, i32* null, i32 %70, i64* %9)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %76, i64* %3, align 8
  br label %252

77:                                               ; preds = %66
  %78 = load i64, i64* %13, align 8
  %79 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %5, align 4
  %81 = ptrtoint i64* %14 to i32
  %82 = call i64 @RegQueryValueExW(i32 %80, i8* bitcast ([4 x i32]* @.str.7 to i8*), i32* null, i32* null, i32 %81, i64* %9)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i64, i64* %14, align 8
  %89 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @ScmReadString(i32 %90, i8* bitcast ([6 x i32]* @.str.9 to i8*), i32** %8)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32* null, i32** %8, align 8
  br label %96

96:                                               ; preds = %95, %87
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @ScmReadString(i32 %99, i8* bitcast ([12 x i32]* @.str.11 to i8*), i32** %7)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32* null, i32** %7, align 8
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @ScmCreateNewServiceRecord(i32* %108, %struct.TYPE_9__** %6, i64 %109, i64 %110)
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @ERROR_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %226

116:                                              ; preds = %105
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %116
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @ScmSetServiceGroup(%struct.TYPE_9__* %126, i32* %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @ERROR_SUCCESS, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %226

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i32*, i32** %7, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 9
  store i32* %138, i32** %140, align 8
  store i32* null, i32** %7, align 8
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = icmp ne %struct.TYPE_7__* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %141
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %150, %141
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %160, i32 %164, i64 %167, i64 %170)
  %172 = load i32, i32* %5, align 4
  %173 = call i64 @ScmIsDeleteFlagSet(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %157
  %176 = load i32, i32* @TRUE, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  br label %182

179:                                              ; preds = %157
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = call i32 @ScmGenerateServiceTag(%struct.TYPE_9__* %180)
  br label %182

182:                                              ; preds = %179, %175
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @SERVICE_WIN32, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %225

190:                                              ; preds = %182
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = call i64 @ScmReadSecurityDescriptor(i32 %191, i32** %193)
  store i64 %194, i64* %10, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* @ERROR_SUCCESS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %226

199:                                              ; preds = %190
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %224

204:                                              ; preds = %199
  %205 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i64 0, i64 0))
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = call i64 @ScmCreateDefaultServiceSD(i32** %207)
  store i64 %208, i64* %10, align 8
  %209 = load i64, i64* %10, align 8
  %210 = load i64, i64* @ERROR_SUCCESS, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %226

213:                                              ; preds = %204
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = call i64 @ScmWriteSecurityDescriptor(i32 %214, i32* %217)
  store i64 %218, i64* %10, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* @ERROR_SUCCESS, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %226

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %199
  br label %225

225:                                              ; preds = %224, %182
  br label %226

226:                                              ; preds = %225, %222, %212, %198, %132, %115
  %227 = load i32*, i32** %8, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = call i32 (...) @GetProcessHeap()
  %231 = load i32*, i32** %8, align 8
  %232 = call i32 @HeapFree(i32 %230, i32 0, i32* %231)
  br label %233

233:                                              ; preds = %229, %226
  %234 = load i32*, i32** %7, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = call i32 (...) @GetProcessHeap()
  %238 = load i32*, i32** %7, align 8
  %239 = call i32 @HeapFree(i32 %237, i32 0, i32* %238)
  br label %240

240:                                              ; preds = %236, %233
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %242 = icmp ne %struct.TYPE_9__* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  %248 = zext i1 %247 to i32
  %249 = call i32 @ASSERT(i32 %248)
  br label %250

250:                                              ; preds = %243, %240
  %251 = load i64, i64* %10, align 8
  store i64 %251, i64* %3, align 8
  br label %252

252:                                              ; preds = %250, %75, %64, %53, %29, %20
  %253 = load i64, i64* %3, align 8
  ret i64 %253
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i64*) #1

declare dso_local i64 @ScmReadString(i32, i8*, i32**) #1

declare dso_local i64 @ScmCreateNewServiceRecord(i32*, %struct.TYPE_9__**, i64, i64) #1

declare dso_local i64 @ScmSetServiceGroup(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @ScmIsDeleteFlagSet(i32) #1

declare dso_local i32 @ScmGenerateServiceTag(%struct.TYPE_9__*) #1

declare dso_local i64 @ScmReadSecurityDescriptor(i32, i32**) #1

declare dso_local i64 @ScmCreateDefaultServiceSD(i32**) #1

declare dso_local i64 @ScmWriteSecurityDescriptor(i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
