; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_legacy_cred_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_legacy_cred_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 76, i32 69, i32 71, i32 65, i32 67, i32 89, i32 32, i32 67, i32 82, i32 69, i32 68, i32 69, i32 78, i32 84, i32 73, i32 65, i32 76, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [34 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 99, i32 114, i32 101, i32 100, i32 83, i32 105, i32 122, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 70, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [23 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 76, i32 97, i32 115, i32 116, i32 87, i32 114, i32 105, i32 116, i32 116, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 70, i32 108, i32 97, i32 103, i32 115, i32 79, i32 114, i32 83, i32 105, i32 122, i32 101, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 80, i32 101, i32 114, i32 115, i32 105, i32 115, i32 116, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 67, i32 111, i32 117, i32 110, i32 116, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 48, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 49, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 67, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 65, i32 108, i32 105, i32 97, i32 115, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 85, i32 115, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [23 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 66, i32 108, i32 111, i32 98, i32 32, i32 58, i32 32, i32 0], align 4
@.str.17 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_cred_legacy_cred_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %148

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 15
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.3 to i8*), i32 %21, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kull_m_cred_CredType(i32 %39)
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.4 to i8*), i32 %30, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %42, 1
  %44 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.5 to i8*), i32 %43, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 12
  %47 = call i32 @kull_m_string_displayFileTime(i32* %46)
  %48 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  %49 = load i32, i32* %3, align 4
  %50 = shl i32 %49, 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.7 to i8*), i32 %50, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 %58, 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kull_m_cred_CredPersist(i32 %68)
  %70 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.8 to i8*), i32 %59, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 %71, 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.9 to i8*), i32 %72, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = shl i32 %80, 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.10 to i8*), i32 %81, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = shl i32 %89, 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.11 to i8*), i32 %90, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32, i32* %3, align 4
  %99 = shl i32 %98, 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.12 to i8*), i32 %99, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = shl i32 %104, 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.13 to i8*), i32 %105, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = shl i32 %110, 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.14 to i8*), i32 %111, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = shl i32 %116, 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.15 to i8*), i32 %117, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = shl i32 %122, 1
  %124 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.16 to i8*), i32 %123, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @kull_m_string_printSuspectUnicodeString(i32 %127, i32 %130)
  %132 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  %133 = load i32, i32* %3, align 4
  %134 = shl i32 %133, 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.17 to i8*), i32 %134, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @kull_m_cred_attributes_descr(i32 %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %10, %2
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
