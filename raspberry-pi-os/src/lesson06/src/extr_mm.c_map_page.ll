; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/src/lesson06/src/extr_mm.c_map_page.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/src/lesson06/src/extr_mm.c_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64*, i64, i32, %struct.user_page* }
%struct.user_page = type { i64, i64 }

@VA_START = common dso_local global i64 0, align 8
@PGD_SHIFT = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_page(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.user_page, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %3
  %19 = call i64 (...) @get_free_page()
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  store i64 %26, i64* %36, align 8
  br label %37

37:                                               ; preds = %18, %3
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @VA_START, align 8
  %44 = add i64 %42, %43
  %45 = inttoptr i64 %44 to i64*
  %46 = load i32, i32* @PGD_SHIFT, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @map_table(i64* %45, i32 %46, i64 %47, i32* %8)
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %37
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds i64, i64* %56, i64 %61
  store i64 %52, i64* %62, align 8
  br label %63

63:                                               ; preds = %51, %37
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @VA_START, align 8
  %66 = add i64 %64, %65
  %67 = inttoptr i64 %66 to i64*
  %68 = load i32, i32* @PUD_SHIFT, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @map_table(i64* %67, i32 %68, i64 %69, i32* %8)
  store i64 %70, i64* %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %63
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds i64, i64* %78, i64 %83
  store i64 %74, i64* %84, align 8
  br label %85

85:                                               ; preds = %73, %63
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @VA_START, align 8
  %88 = add i64 %86, %87
  %89 = inttoptr i64 %88 to i64*
  %90 = load i32, i32* @PMD_SHIFT, align 4
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @map_table(i64* %89, i32 %90, i64 %91, i32* %8)
  store i64 %92, i64* %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %85
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = getelementptr inbounds i64, i64* %100, i64 %105
  store i64 %96, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %85
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @VA_START, align 8
  %110 = add i64 %108, %109
  %111 = inttoptr i64 %110 to i64*
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @map_table_entry(i64* %111, i64 %112, i64 %113)
  %115 = getelementptr inbounds %struct.user_page, %struct.user_page* %12, i32 0, i32 0
  %116 = load i64, i64* %6, align 8
  store i64 %116, i64* %115, align 8
  %117 = getelementptr inbounds %struct.user_page, %struct.user_page* %12, i32 0, i32 1
  %118 = load i64, i64* %5, align 8
  store i64 %118, i64* %117, align 8
  %119 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load %struct.user_page*, %struct.user_page** %121, align 8
  %123 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %124 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.user_page, %struct.user_page* %122, i64 %128
  %130 = bitcast %struct.user_page* %129 to i8*
  %131 = bitcast %struct.user_page* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  ret void
}

declare dso_local i64 @get_free_page(...) #1

declare dso_local i64 @map_table(i64*, i32, i64, i32*) #1

declare dso_local i32 @map_table_entry(i64*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
