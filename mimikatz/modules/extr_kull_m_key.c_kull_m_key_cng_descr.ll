; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_cng_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_cng_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 75, i32 69, i32 89, i32 32, i32 40, i32 99, i32 110, i32 103, i32 41, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 78, i32 97, i32 109, i32 101, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 116, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 80, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 105, i32 101, i32 115, i32 76, i32 101, i32 110, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 80, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 105, i32 101, i32 115, i32 76, i32 101, i32 110, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [40 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [30 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 65, i32 114, i32 114, i32 97, i32 121, i32 91, i32 49, i32 54, i32 93, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.10 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [30 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.12 = private unnamed_addr constant [6 x i32] [i32 37, i32 46, i32 42, i32 115, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [30 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 80, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 105, i32 101, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.14 = private unnamed_addr constant [30 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 80, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 105, i32 101, i32 115, i32 32, i32 32, i32 32, i32 32, i32 58, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [30 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_key_cng_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %146

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.3 to i8*), i32 %21, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.4 to i8*), i32 %30, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = shl i32 %38, 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.5 to i8*), i32 %39, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 %47, 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.6 to i8*), i32 %48, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = shl i32 %56, 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.7 to i8*), i32 %57, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i64 %60, i64 %63)
  %65 = load i32, i32* %3, align 4
  %66 = shl i32 %65, 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([40 x i32]* @.str.8 to i8*), i32 %66, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i64 %69, i64 %72)
  %74 = load i32, i32* %3, align 4
  %75 = shl i32 %74, 1
  %76 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.9 to i8*), i32 %75, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @kull_m_string_wprintf_hex(i32 %79, i32 4, i32 0)
  %81 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  %82 = load i32, i32* %3, align 4
  %83 = shl i32 %82, 1
  %84 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.11 to i8*), i32 %83, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %88, 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.12 to i8*), i64 %89, i8* %92)
  %94 = load i32, i32* %3, align 4
  %95 = shl i32 %94, 1
  %96 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.13 to i8*), i32 %95, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @kull_m_key_cng_properties_descr(i32 %98, i32 %101, i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = shl i32 %106, 1
  %108 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.14 to i8*), i32 %107, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %10
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @kull_m_dpapi_blob_quick_descr(i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %118, %113, %10
  %126 = load i32, i32* %3, align 4
  %127 = shl i32 %126, 1
  %128 = call i32 (i8*, ...) @kprintf(i8* bitcast ([30 x i32]* @.str.15 to i8*), i32 %127, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %125
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @kull_m_dpapi_blob_quick_descr(i32 %140, i64 %143)
  br label %145

145:                                              ; preds = %138, %133, %125
  br label %146

146:                                              ; preds = %145, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @kull_m_key_cng_properties_descr(i32, i32, i32) #1

declare dso_local i32 @kull_m_dpapi_blob_quick_descr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
