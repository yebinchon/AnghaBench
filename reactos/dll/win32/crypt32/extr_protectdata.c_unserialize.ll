; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_unserialize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_unserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32* }
%struct.protect_data_t = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"called\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"reading count0 failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"reading info0 failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"reading count1 failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"reading info1 failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"reading null0 failed!\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"reading szDataDescr failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"reading cipher_alg failed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"reading cipher_key_len failed!\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"reading data0 failed!\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"reading null1 failed!\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"reading hash_alg failed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"reading hash_len failed!\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"reading salt failed!\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"reading cipher failed!\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"reading fingerprint failed!\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"loaded corrupt structure! (used %u expected %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.protect_data_t*)* @unserialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unserialize(%struct.TYPE_15__* %0, %struct.protect_data_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.protect_data_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.protect_data_t* %1, %struct.protect_data_t** %5, align 8
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %13 = icmp ne %struct.protect_data_t* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %14, %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %223

24:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %34 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %33, i32 0, i32 14
  %35 = call i32 @unserialize_dword(i32* %31, i64* %7, i64 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %223

40:                                               ; preds = %24
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @FALSE, align 4
  %44 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %45 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %44, i32 0, i32 13
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %48 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i32 @unserialize_string(i32* %41, i64* %7, i64 %42, i32 16, i32 4, i32 %43, i32** %46, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %223

55:                                               ; preds = %40
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %59 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %58, i32 0, i32 12
  %60 = call i32 @unserialize_dword(i32* %56, i64* %7, i64 %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %223

65:                                               ; preds = %55
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %70 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %69, i32 0, i32 11
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %73 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = call i32 @unserialize_string(i32* %66, i64* %7, i64 %67, i32 16, i32 4, i32 %68, i32** %71, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %223

80:                                               ; preds = %65
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %84 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %83, i32 0, i32 10
  %85 = call i32 @unserialize_dword(i32* %81, i64* %7, i64 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %223

90:                                               ; preds = %80
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %95 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %94, i32 0, i32 9
  %96 = bitcast i32* %95 to i32**
  %97 = call i32 @unserialize_string(i32* %91, i64* %7, i64 %92, i32 0, i32 4, i32 %93, i32** %96, i32* null)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %223

102:                                              ; preds = %90
  %103 = load i32*, i32** %6, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %106 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %105, i32 0, i32 8
  %107 = call i32 @unserialize_dword(i32* %103, i64* %7, i64 %104, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %3, align 4
  br label %223

112:                                              ; preds = %102
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %116 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %115, i32 0, i32 7
  %117 = call i32 @unserialize_dword(i32* %113, i64* %7, i64 %114, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %3, align 4
  br label %223

122:                                              ; preds = %112
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* @TRUE, align 4
  %126 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %127 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %130 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = call i32 @unserialize_string(i32* %123, i64* %7, i64 %124, i32 0, i32 4, i32 %125, i32** %128, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %122
  %135 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %3, align 4
  br label %223

137:                                              ; preds = %122
  %138 = load i32*, i32** %6, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %141 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %140, i32 0, i32 5
  %142 = call i32 @unserialize_dword(i32* %138, i64* %7, i64 %139, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %3, align 4
  br label %223

147:                                              ; preds = %137
  %148 = load i32*, i32** %6, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %151 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %150, i32 0, i32 4
  %152 = call i32 @unserialize_dword(i32* %148, i64* %7, i64 %149, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %3, align 4
  br label %223

157:                                              ; preds = %147
  %158 = load i32*, i32** %6, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %161 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %160, i32 0, i32 3
  %162 = call i32 @unserialize_dword(i32* %158, i64* %7, i64 %159, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %157
  %165 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %3, align 4
  br label %223

167:                                              ; preds = %157
  %168 = load i32*, i32** %6, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i32, i32* @TRUE, align 4
  %171 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %172 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %175 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = call i32 @unserialize_string(i32* %168, i64* %7, i64 %169, i32 0, i32 4, i32 %170, i32** %173, i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %167
  %180 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %3, align 4
  br label %223

182:                                              ; preds = %167
  %183 = load i32*, i32** %6, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i32, i32* @TRUE, align 4
  %186 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %187 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %190 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = call i32 @unserialize_string(i32* %183, i64* %7, i64 %184, i32 0, i32 4, i32 %185, i32** %188, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %182
  %195 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %3, align 4
  br label %223

197:                                              ; preds = %182
  %198 = load i32*, i32** %6, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load i32, i32* @TRUE, align 4
  %201 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %202 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %205 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = call i32 @unserialize_string(i32* %198, i64* %7, i64 %199, i32 0, i32 4, i32 %200, i32** %203, i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %197
  %210 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %3, align 4
  br label %223

212:                                              ; preds = %197
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* %8, align 8
  %215 = icmp sgt i64 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i64 %217, i64 %218)
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %216, %212
  %222 = load i32, i32* %9, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %221, %209, %194, %179, %164, %154, %144, %134, %119, %109, %99, %87, %77, %62, %52, %37, %22
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @unserialize_dword(i32*, i64*, i64, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @unserialize_string(i32*, i64*, i64, i32, i32, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
