; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_LoadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_LoadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i64, i64, i8* }

@TRUE = common dso_local global i8* null, align 8
@Settings = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FALSE = common dso_local global i8* null, align 8
@CW_USEDEFAULT = common dso_local global i8* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@EVNTVWR_PARAM_KEY = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 68, i32 101, i32 116, i32 97, i32 105, i32 108, i32 115, i32 80, i32 97, i32 110, i32 101, i32 0], align 4
@REG_SZ = common dso_local global i64 0, align 8
@REG_DWORD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 83, i32 104, i32 111, i32 119, i32 71, i32 114, i32 105, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 83, i32 111, i32 114, i32 116, i32 79, i32 114, i32 100, i32 101, i32 114, i32 0], align 4
@.str.3 = private unnamed_addr constant [10 x i32] [i32 86, i32 83, i32 112, i32 108, i32 105, i32 116, i32 80, i32 111, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [10 x i32] [i32 72, i32 83, i32 112, i32 108, i32 105, i32 116, i32 80, i32 111, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 0], align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i32] [i32 37, i32 100, i32 32, i32 37, i32 100, i32 32, i32 37, i32 100, i32 32, i32 37, i32 100, i32 32, i32 37, i32 100, i32 0], align 4
@.str.7 = private unnamed_addr constant [13 x i32] [i32 83, i32 97, i32 118, i32 101, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LoadSettings(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca [100 x i32], align 16
  store i32 %0, i32* %3, align 4
  %11 = load i8*, i8** @TRUE, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 0), align 8
  %13 = load i8*, i8** @FALSE, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 1), align 4
  %15 = load i8*, i8** @TRUE, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 2), align 8
  %17 = load i8*, i8** @TRUE, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 3), align 4
  store i32 250, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 4), align 8
  store i32 250, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 5), align 4
  %19 = call i32 @ZeroMemory(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6), i32 40)
  store i32 40, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 0), align 8
  %20 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 3), align 8
  %21 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 2), align 8
  %22 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 1), align 8
  %23 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 0), align 8
  %24 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %25 = load i32, i32* @EVNTVWR_PARAM_KEY, align 4
  %26 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %27 = load i32, i32* @KEY_READ, align 4
  %28 = load i32, i32* @KEY_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @RegCreateKeyExW(i32 %24, i32 %25, i32 0, i32* null, i32 %26, i32 %29, i32* null, i32* %4, i32* null)
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i8*, i8** @FALSE, align 8
  store i8* %34, i8** %2, align 8
  br label %250

35:                                               ; preds = %1
  store i64 8, i64* %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = ptrtoint i64* %8 to i32
  %38 = call i64 @RegQueryValueExW(i32 %36, i8* bitcast ([12 x i32]* @.str to i8*), i32* null, i64* %7, i32 %37, i64* %6)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @REG_SZ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @REG_DWORD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @REG_SZ, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = bitcast i64* %8 to i8*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = call i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__* %9, i32 10, i64* %8)
  br label %61

61:                                               ; preds = %54, %50
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 0), align 8
  br label %67

67:                                               ; preds = %61, %46, %35
  store i64 8, i64* %6, align 8
  %68 = load i32, i32* %4, align 4
  %69 = ptrtoint i64* %8 to i32
  %70 = call i64 @RegQueryValueExW(i32 %68, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32* null, i64* %7, i32 %69, i64* %6)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @REG_SZ, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @REG_DWORD, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78, %74
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @REG_SZ, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = bitcast i64* %8 to i8*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i8* %87, i8** %88, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = call i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__* %9, i32 10, i64* %8)
  br label %93

93:                                               ; preds = %86, %82
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 1), align 4
  br label %99

99:                                               ; preds = %93, %78, %67
  store i64 8, i64* %6, align 8
  %100 = load i32, i32* %4, align 4
  %101 = ptrtoint i64* %8 to i32
  %102 = call i64 @RegQueryValueExW(i32 %100, i8* bitcast ([10 x i32]* @.str.2 to i8*), i32* null, i64* %7, i32 %101, i64* %6)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %99
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @REG_SZ, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @REG_DWORD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %110, %106
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @REG_SZ, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = bitcast i64* %8 to i8*
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i8* %119, i8** %120, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %121, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = call i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__* %9, i32 10, i64* %8)
  br label %125

125:                                              ; preds = %118, %114
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 3), align 4
  br label %131

131:                                              ; preds = %125, %110, %99
  store i64 8, i64* %6, align 8
  %132 = load i32, i32* %4, align 4
  %133 = ptrtoint i64* %8 to i32
  %134 = call i64 @RegQueryValueExW(i32 %132, i8* bitcast ([10 x i32]* @.str.3 to i8*), i32* null, i64* %7, i32 %133, i64* %6)
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %131
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @REG_SZ, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @REG_DWORD, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %142, %138
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @REG_SZ, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = bitcast i64* %8 to i8*
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i8* %151, i8** %152, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = call i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__* %9, i32 10, i64* %8)
  br label %157

157:                                              ; preds = %150, %146
  %158 = load i64, i64* %8, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 4), align 8
  br label %160

160:                                              ; preds = %157, %142, %131
  store i64 8, i64* %6, align 8
  %161 = load i32, i32* %4, align 4
  %162 = ptrtoint i64* %8 to i32
  %163 = call i64 @RegQueryValueExW(i32 %161, i8* bitcast ([10 x i32]* @.str.4 to i8*), i32* null, i64* %7, i32 %162, i64* %6)
  store i64 %163, i64* %5, align 8
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* @ERROR_SUCCESS, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %160
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @REG_SZ, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @REG_DWORD, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %171, %167
  %176 = load i64, i64* %7, align 8
  %177 = load i64, i64* @REG_SZ, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = bitcast i64* %8 to i8*
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i8* %180, i8** %181, align 8
  %182 = load i64, i64* %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %182, i64* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = call i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__* %9, i32 10, i64* %8)
  br label %186

186:                                              ; preds = %179, %175
  %187 = load i64, i64* %8, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 5), align 4
  br label %189

189:                                              ; preds = %186, %171, %160
  store i64 400, i64* %6, align 8
  %190 = load i32, i32* %4, align 4
  %191 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  %192 = ptrtoint i32* %191 to i32
  %193 = call i64 @RegQueryValueExW(i32 %190, i8* bitcast ([7 x i32]* @.str.5 to i8*), i32* null, i64* %7, i32 %192, i64* %6)
  store i64 %193, i64* %5, align 8
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* @ERROR_SUCCESS, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %189
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @REG_SZ, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197, %189
  %202 = load i32, i32* @UNICODE_NULL, align 4
  %203 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  store i32 %202, i32* %203, align 16
  br label %204

204:                                              ; preds = %201, %197
  %205 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  %206 = call i32 @swscanf(i32* %205, i8* bitcast ([15 x i32]* @.str.6 to i8*), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 3), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 2), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 1), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 0), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 1))
  %207 = icmp ne i32 %206, 5
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %209, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 3), align 8
  %210 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %210, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 2), align 8
  %211 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %211, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 1), align 8
  %212 = load i8*, i8** @CW_USEDEFAULT, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 2, i32 0), align 8
  %213 = load i32, i32* %3, align 4
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 6, i32 1), align 4
  br label %214

214:                                              ; preds = %208, %204
  store i64 8, i64* %6, align 8
  %215 = load i32, i32* %4, align 4
  %216 = ptrtoint i64* %8 to i32
  %217 = call i64 @RegQueryValueExW(i32 %215, i8* bitcast ([13 x i32]* @.str.7 to i8*), i32* null, i64* %7, i32 %216, i64* %6)
  store i64 %217, i64* %5, align 8
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* @ERROR_SUCCESS, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %246

221:                                              ; preds = %214
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @REG_SZ, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* @REG_DWORD, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %246

229:                                              ; preds = %225, %221
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* @REG_SZ, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = bitcast i64* %8 to i8*
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i8* %234, i8** %235, align 8
  %236 = load i64, i64* %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %236, i64* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  %239 = call i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__* %9, i32 10, i64* %8)
  br label %240

240:                                              ; preds = %233, %229
  %241 = load i64, i64* %8, align 8
  %242 = icmp ne i64 %241, 0
  %243 = xor i1 %242, true
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  store i32 %245, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Settings, i32 0, i32 2), align 8
  br label %246

246:                                              ; preds = %240, %225, %214
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @RegCloseKey(i32 %247)
  %249 = load i8*, i8** @TRUE, align 8
  store i8* %249, i8** %2, align 8
  br label %250

250:                                              ; preds = %246, %33
  %251 = load i8*, i8** %2, align 8
  ret i8* %251
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RtlUnicodeStringToInteger(%struct.TYPE_7__*, i32, i64*) #1

declare dso_local i32 @swscanf(i32*, i8*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
