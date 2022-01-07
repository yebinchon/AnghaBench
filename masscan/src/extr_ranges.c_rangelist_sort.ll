; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_sort.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"[+] range:sort: sorting...\0A\00", align 1
@range_compare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"[+] range:sort: combining...\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"[+] range:sort: combined from %u elements to %u elements\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"[+] range:sort: done...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rangelist_sort(%struct.RangeList* %0) #0 {
  %2 = alloca %struct.RangeList*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.RangeList, align 8
  %5 = alloca i32, align 4
  store %struct.RangeList* %0, %struct.RangeList** %2, align 8
  %6 = bitcast %struct.RangeList* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %8 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %11 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %16 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %19 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %81

23:                                               ; preds = %17
  %24 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %26 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %29 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @range_compare, align 4
  %32 = call i32 @qsort(%struct.TYPE_3__* %27, i32 %30, i32 8, i32 %31)
  %33 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %57, %23
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %37 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %43 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %50 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rangelist_add_range(%struct.RangeList* %4, i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %41
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %34

60:                                               ; preds = %34
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %66 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @free(%struct.TYPE_3__* %67)
  %69 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %4, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %72 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %71, i32 0, i32 2
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %72, align 8
  %73 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %76 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %4, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %77, align 8
  %78 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %80 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %60, %22, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LOG(i32, i8*, ...) #2

declare dso_local i32 @qsort(%struct.TYPE_3__*, i32, i32, i32) #2

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
