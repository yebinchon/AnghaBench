; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_serialize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protect_data_t = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_11__, i32, i32, i64, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"called\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"protect_data_t info0 not 16 bytes long\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"protect_data_t info1 not 16 bytes long\0A\00", align 1
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"struct size changed!? expected %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protect_data_t*, %struct.TYPE_15__*)* @serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialize(%struct.protect_data_t* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.protect_data_t*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.protect_data_t* %0, %struct.protect_data_t** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %11 = icmp ne %struct.protect_data_t* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %14 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %22 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %28 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %34 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %40 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %46 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %52 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50, %44, %38, %32, %26, %20, %17, %12, %2
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %300

58:                                               ; preds = %50
  %59 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %60 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %59, i32 0, i32 13
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 16
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %68 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %67, i32 0, i32 11
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 16
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  %75 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %76 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @lstrlenW(i64 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 32
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 16
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %94 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %93, i32 0, i32 13
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %102 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = add i64 %112, 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 8
  %120 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %121 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %129 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %137 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %145 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* @LPTR, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32* @LocalAlloc(i32 %155, i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %74
  %167 = load i32, i32* @FALSE, align 4
  store i32 %167, i32* %3, align 4
  br label %300

168:                                              ; preds = %74
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %6, align 8
  %172 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %173 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @serialize_dword(i32 %174, i32** %6)
  %176 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %177 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %176, i32 0, i32 13
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %181 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %180, i32 0, i32 13
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FALSE, align 4
  %185 = call i32 @serialize_string(i32* %179, i32** %6, i32 %183, i32 4, i32 %184)
  %186 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %187 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @serialize_dword(i32 %188, i32** %6)
  %190 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %191 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %195 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %194, i32 0, i32 11
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = call i32 @serialize_string(i32* %193, i32** %6, i32 %197, i32 4, i32 %198)
  %200 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %201 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @serialize_dword(i32 %202, i32** %6)
  %204 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %205 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %204, i32 0, i32 9
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* @TRUE, align 4
  %214 = call i32 @serialize_string(i32* %207, i32** %6, i32 %212, i32 4, i32 %213)
  %215 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %216 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @serialize_dword(i32 %217, i32** %6)
  %219 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %220 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @serialize_dword(i32 %221, i32** %6)
  %223 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %224 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %228 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @TRUE, align 4
  %232 = call i32 @serialize_string(i32* %226, i32** %6, i32 %230, i32 4, i32 %231)
  %233 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %234 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @serialize_dword(i32 %235, i32** %6)
  %237 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %238 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @serialize_dword(i32 %239, i32** %6)
  %241 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %242 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @serialize_dword(i32 %243, i32** %6)
  %245 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %246 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %250 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @TRUE, align 4
  %254 = call i32 @serialize_string(i32* %248, i32** %6, i32 %252, i32 4, i32 %253)
  %255 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %256 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %260 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @TRUE, align 4
  %264 = call i32 @serialize_string(i32* %258, i32** %6, i32 %262, i32 4, i32 %263)
  %265 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %266 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.protect_data_t*, %struct.protect_data_t** %4, align 8
  %270 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @TRUE, align 4
  %274 = call i32 @serialize_string(i32* %268, i32** %6, i32 %272, i32 4, i32 %273)
  %275 = load i32*, i32** %6, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = ptrtoint i32* %275 to i64
  %280 = ptrtoint i32* %278 to i64
  %281 = sub i64 %279, %280
  %282 = sdiv exact i64 %281, 4
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = icmp ne i64 %282, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %168
  %287 = load i32, i32* %8, align 4
  %288 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %287)
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @LocalFree(i32* %291)
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  store i32* null, i32** %294, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  store i32 0, i32* %296, align 8
  %297 = load i32, i32* @FALSE, align 4
  store i32 %297, i32* %3, align 4
  br label %300

298:                                              ; preds = %168
  %299 = load i32, i32* @TRUE, align 4
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %298, %286, %166, %56
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @serialize_dword(i32, i32**) #1

declare dso_local i32 @serialize_string(i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
