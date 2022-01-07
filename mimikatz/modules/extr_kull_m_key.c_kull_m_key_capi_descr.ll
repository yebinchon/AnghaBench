; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_capi_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_capi_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 75, i32 69, i32 89, i32 32, i32 40, i32 99, i32 97, i32 112, i32 105, i32 41, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 85, i32 110, i32 105, i32 113, i32 117, i32 101, i32 78, i32 97, i32 109, i32 101, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 83, i32 105, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 83, i32 105, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 69, i32 120, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 69, i32 120, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 72, i32 97, i32 115, i32 104, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 83, i32 105, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 70, i32 108, i32 97, i32 103, i32 76, i32 101, i32 110, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 69, i32 120, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 70, i32 108, i32 97, i32 103, i32 76, i32 101, i32 110, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 85, i32 110, i32 105, i32 113, i32 117, i32 101, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.12 = private unnamed_addr constant [4 x i32] [i32 37, i32 83, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 72, i32 97, i32 115, i32 104, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.14 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 83, i32 105, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 75, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.16 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 83, i32 105, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 10, i32 0], align 4
@.str.17 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 83, i32 105, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 70, i32 108, i32 97, i32 103, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 10, i32 0], align 4
@.str.18 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 69, i32 120, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 75, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.19 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 69, i32 120, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 10, i32 0], align 4
@.str.20 = private unnamed_addr constant [27 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 69, i32 120, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 70, i32 108, i32 97, i32 103, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_key_capi_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %212

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.3 to i8*), i32 %21, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.4 to i8*), i32 %30, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = shl i32 %38, 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.5 to i8*), i32 %39, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 %47, 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.6 to i8*), i32 %48, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = shl i32 %56, 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.7 to i8*), i32 %57, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i64 %60, i64 %63)
  %65 = load i32, i32* %3, align 4
  %66 = shl i32 %65, 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.8 to i8*), i32 %66, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = shl i32 %74, 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.9 to i8*), i32 %75, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i64 %78, i64 %81)
  %83 = load i32, i32* %3, align 4
  %84 = shl i32 %83, 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.10 to i8*), i32 %84, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i64 %87, i64 %90)
  %92 = load i32, i32* %3, align 4
  %93 = shl i32 %92, 1
  %94 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.11 to i8*), i32 %93, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 14
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.12 to i8*), i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = shl i32 %99, 1
  %101 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.13 to i8*), i32 %100, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @kull_m_string_wprintf_hex(i32 %104, i32 %107, i32 0)
  %109 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  %110 = load i32, i32* %3, align 4
  %111 = shl i32 %110, 1
  %112 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.15 to i8*), i32 %111, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @kull_m_string_wprintf_hex(i32 %115, i32 %118, i32 0)
  %120 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  %121 = load i32, i32* %3, align 4
  %122 = shl i32 %121, 1
  %123 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.16 to i8*), i32 %122, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %10
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @kull_m_dpapi_blob_quick_descr(i32 %135, i64 %138)
  br label %140

140:                                              ; preds = %133, %128, %10
  %141 = load i32, i32* %3, align 4
  %142 = shl i32 %141, 1
  %143 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.17 to i8*), i32 %142, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %140
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @kull_m_dpapi_blob_quick_descr(i32 %155, i64 %158)
  br label %160

160:                                              ; preds = %153, %148, %140
  %161 = load i32, i32* %3, align 4
  %162 = shl i32 %161, 1
  %163 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.18 to i8*), i32 %162, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @kull_m_string_wprintf_hex(i32 %166, i32 %169, i32 0)
  %171 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  %172 = load i32, i32* %3, align 4
  %173 = shl i32 %172, 1
  %174 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.19 to i8*), i32 %173, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %160
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @kull_m_dpapi_blob_quick_descr(i32 %186, i64 %189)
  br label %191

191:                                              ; preds = %184, %179, %160
  %192 = load i32, i32* %3, align 4
  %193 = shl i32 %192, 1
  %194 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.20 to i8*), i32 %193, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %191
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @kull_m_dpapi_blob_quick_descr(i32 %206, i64 %209)
  br label %211

211:                                              ; preds = %204, %199, %191
  br label %212

212:                                              ; preds = %211, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @kull_m_dpapi_blob_quick_descr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
