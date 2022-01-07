; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_masterkeys_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_masterkeys_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 77, i32 65, i32 83, i32 84, i32 69, i32 82, i32 75, i32 69, i32 89, i32 83, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [35 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 115, i32 122, i32 71, i32 117, i32 105, i32 100, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 123, i32 37, i32 46, i32 51, i32 54, i32 115, i32 125, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 70, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 77, i32 97, i32 115, i32 116, i32 101, i32 114, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 66, i32 97, i32 99, i32 107, i32 117, i32 112, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 67, i32 114, i32 101, i32 100, i32 72, i32 105, i32 115, i32 116, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [37 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 75, i32 101, i32 121, i32 76, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [16 x i32] [i32 37, i32 42, i32 115, i32 91, i32 109, i32 97, i32 115, i32 116, i32 101, i32 114, i32 107, i32 101, i32 121, i32 93, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [16 x i32] [i32 37, i32 42, i32 115, i32 91, i32 98, i32 97, i32 99, i32 107, i32 117, i32 112, i32 107, i32 101, i32 121, i32 93, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [15 x i32] [i32 37, i32 42, i32 115, i32 91, i32 99, i32 114, i32 101, i32 100, i32 104, i32 105, i32 115, i32 116, i32 93, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [16 x i32] [i32 37, i32 42, i32 115, i32 91, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 107, i32 101, i32 121, i32 93, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_dpapi_masterkeys_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %140

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @kprintf(i8* bitcast ([35 x i32]* @.str.3 to i8*), i32 %21, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.4 to i8*), i32 %27, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 %35, 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.5 to i8*), i32 %36, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = shl i32 %46, 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.6 to i8*), i32 %47, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %51, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 %57, 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.7 to i8*), i32 %58, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %62, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = shl i32 %68, 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.8 to i8*), i32 %69, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %73, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %10
  %84 = load i32, i32* %3, align 4
  %85 = shl i32 %84, 1
  %86 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.9 to i8*), i32 %85, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @kull_m_dpapi_masterkey_descr(i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %83, %10
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = shl i32 %99, 1
  %101 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.10 to i8*), i32 %100, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @kull_m_dpapi_masterkey_descr(i32 %103, i64 %106)
  br label %108

108:                                              ; preds = %98, %93
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = shl i32 %114, 1
  %116 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.11 to i8*), i32 %115, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @kull_m_dpapi_masterkeys_credhist_descr(i32 %118, i64 %121)
  br label %123

123:                                              ; preds = %113, %108
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* %3, align 4
  %130 = shl i32 %129, 1
  %131 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.12 to i8*), i32 %130, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @kull_m_dpapi_masterkeys_domainkey_descr(i32 %133, i64 %136)
  br label %138

138:                                              ; preds = %128, %123
  %139 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.13 to i8*))
  br label %140

140:                                              ; preds = %138, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_dpapi_masterkey_descr(i32, i64) #1

declare dso_local i32 @kull_m_dpapi_masterkeys_credhist_descr(i32, i64) #1

declare dso_local i32 @kull_m_dpapi_masterkeys_domainkey_descr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
