; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_credhist_entry_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_credhist_entry_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 67, i32 82, i32 69, i32 68, i32 72, i32 73, i32 83, i32 84, i32 32, i32 69, i32 78, i32 84, i32 82, i32 89, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [18 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 103, i32 117, i32 105, i32 100, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 78, i32 101, i32 120, i32 116, i32 76, i32 101, i32 110, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 97, i32 108, i32 103, i32 72, i32 97, i32 115, i32 104, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 40, i32 37, i32 115, i32 41, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 114, i32 111, i32 117, i32 110, i32 100, i32 115, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 115, i32 105, i32 100, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [33 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 97, i32 108, i32 103, i32 67, i32 114, i32 121, i32 112, i32 116, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 40, i32 37, i32 115, i32 41, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 115, i32 104, i32 97, i32 49, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 109, i32 100, i32 52, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [18 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 83, i32 97, i32 108, i32 116, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.14 = private unnamed_addr constant [18 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 83, i32 105, i32 100, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.15 = private unnamed_addr constant [18 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 112, i32 83, i32 101, i32 99, i32 114, i32 101, i32 116, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.16 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_dpapi_credhist_entry_descr(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %139

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 1
  %24 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.3 to i8*), i32 %23, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @kull_m_string_displayGUID(i32* %27)
  %29 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.5 to i8*), i32 %31, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = shl i32 %41, 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.6 to i8*), i32 %42, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = shl i32 %50, 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @kull_m_crypto_algid_to_name(i32 %60)
  %62 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.7 to i8*), i32 %51, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = shl i32 %63, 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.8 to i8*), i32 %64, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = shl i32 %72, 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.9 to i8*), i32 %73, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = shl i32 %81, 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @kull_m_crypto_algid_to_name(i32 %91)
  %93 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.10 to i8*), i32 %82, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %85, i32 %88, i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = shl i32 %94, 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.11 to i8*), i32 %95, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = shl i32 %103, 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.12 to i8*), i32 %104, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = shl i32 %112, 1
  %114 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.13 to i8*), i32 %113, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @kull_m_string_wprintf_hex(i32 %117, i32 4, i32 0)
  %119 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %120 = load i32, i32* %3, align 4
  %121 = shl i32 %120, 1
  %122 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.14 to i8*), i32 %121, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @kull_m_string_displaySID(i32 %125)
  %127 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %128 = load i32, i32* %3, align 4
  %129 = shl i32 %128, 1
  %130 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.15 to i8*), i32 %129, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @kull_m_string_wprintf_hex(i32 %133, i32 %136, i32 0)
  %138 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.16 to i8*))
  br label %139

139:                                              ; preds = %10, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @kull_m_crypto_algid_to_name(i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @kull_m_string_displaySID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
