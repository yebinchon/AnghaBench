; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_strimwidth.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_strimwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_strimwidth_data = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @collector_strimwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collector_strimwidth(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.collector_strimwidth_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.collector_strimwidth_data*
  store %struct.collector_strimwidth_data* %7, %struct.collector_strimwidth_data** %5, align 8
  %8 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %9 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %22 [
    i32 10, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %13 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %19 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 %16(i32 %17, %struct.TYPE_7__* %20)
  br label %98

22:                                               ; preds = %2
  %23 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %24 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %27 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @is_fullwidth(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 2, i32 1
  %36 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %37 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %41 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %44 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %30
  %48 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %49 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %54 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %58 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %60 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %63 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mbfl_convert_filter_copy(%struct.TYPE_7__* %61, i32 %64)
  br label %66

66:                                               ; preds = %52, %47
  %67 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %68 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %72 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %71, i32 0, i32 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %78 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %77, i32 0, i32 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 %75(i32 %76, %struct.TYPE_7__* %79)
  store i32 -1, i32* %3, align 4
  br label %92

81:                                               ; preds = %30
  %82 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %83 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %89 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %88, i32 0, i32 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = call i32 %86(i32 %87, %struct.TYPE_7__* %90)
  br label %92

92:                                               ; preds = %81, %66
  br label %93

93:                                               ; preds = %92, %22
  %94 = load %struct.collector_strimwidth_data*, %struct.collector_strimwidth_data** %5, align 8
  %95 = getelementptr inbounds %struct.collector_strimwidth_data, %struct.collector_strimwidth_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %11
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @is_fullwidth(i32) #1

declare dso_local i32 @mbfl_convert_filter_copy(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
