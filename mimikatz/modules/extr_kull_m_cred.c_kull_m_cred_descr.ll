; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 67, i32 82, i32 69, i32 68, i32 69, i32 78, i32 84, i32 73, i32 65, i32 76, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 99, i32 114, i32 101, i32 100, i32 70, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 99, i32 114, i32 101, i32 100, i32 83, i32 105, i32 122, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [34 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 99, i32 114, i32 101, i32 100, i32 85, i32 110, i32 107, i32 48, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 70, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [23 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 76, i32 97, i32 115, i32 116, i32 87, i32 114, i32 105, i32 116, i32 116, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 70, i32 108, i32 97, i32 103, i32 115, i32 79, i32 114, i32 83, i32 105, i32 122, i32 101, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 80, i32 101, i32 114, i32 115, i32 105, i32 115, i32 116, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 67, i32 111, i32 117, i32 110, i32 116, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 48, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 49, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 85, i32 110, i32 107, i32 68, i32 97, i32 116, i32 97, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 67, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.17 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 65, i32 108, i32 105, i32 97, i32 115, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.18 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 85, i32 115, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.19 = private unnamed_addr constant [23 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 66, i32 108, i32 111, i32 98, i32 32, i32 58, i32 32, i32 0], align 4
@.str.20 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_cred_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %172

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 18
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 18
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.3 to i8*), i32 %21, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.4 to i8*), i32 %30, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = shl i32 %38, 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 15
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kull_m_cred_CredType(i32 %48)
  %50 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.5 to i8*), i32 %39, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %51, 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.6 to i8*), i32 %52, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = shl i32 %60, 1
  %62 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.7 to i8*), i32 %61, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 13
  %65 = call i32 @kull_m_string_displayFileTime(i32* %64)
  %66 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  %67 = load i32, i32* %3, align 4
  %68 = shl i32 %67, 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.9 to i8*), i32 %68, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = shl i32 %76, 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kull_m_cred_CredPersist(i32 %86)
  %88 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.10 to i8*), i32 %77, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = shl i32 %89, 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.11 to i8*), i32 %90, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32, i32* %3, align 4
  %99 = shl i32 %98, 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.12 to i8*), i32 %99, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = shl i32 %107, 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.13 to i8*), i32 %108, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = shl i32 %116, 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.14 to i8*), i32 %117, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = shl i32 %122, 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.15 to i8*), i32 %123, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = shl i32 %128, 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.16 to i8*), i32 %129, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = shl i32 %134, 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.17 to i8*), i32 %135, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = shl i32 %140, 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.18 to i8*), i32 %141, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %3, align 4
  %147 = shl i32 %146, 1
  %148 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.19 to i8*), i32 %147, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @kull_m_string_printSuspectUnicodeString(i32 %151, i32 %154)
  %156 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  %157 = load i32, i32* %3, align 4
  %158 = shl i32 %157, 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.20 to i8*), i32 %158, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @kull_m_cred_attributes_descr(i32 %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %10, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_cred_CredType(i32) #1

declare dso_local i32 @kull_m_string_displayFileTime(i32*) #1

declare dso_local i32 @kull_m_cred_CredPersist(i32) #1

declare dso_local i32 @kull_m_string_printSuspectUnicodeString(i32, i32) #1

declare dso_local i32 @kull_m_cred_attributes_descr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
