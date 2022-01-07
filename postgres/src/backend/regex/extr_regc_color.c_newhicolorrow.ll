; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_newhicolorrow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_newhicolorrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i32, i32, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.colormap*, i32)* @newhicolorrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newhicolorrow(%struct.colormap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.colormap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.colormap* %0, %struct.colormap** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.colormap*, %struct.colormap** %4, align 8
  %11 = getelementptr inbounds %struct.colormap, %struct.colormap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.colormap*, %struct.colormap** %4, align 8
  %15 = getelementptr inbounds %struct.colormap, %struct.colormap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %2
  %19 = load %struct.colormap*, %struct.colormap** %4, align 8
  %20 = getelementptr inbounds %struct.colormap, %struct.colormap* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = load %struct.colormap*, %struct.colormap** %4, align 8
  %24 = getelementptr inbounds %struct.colormap, %struct.colormap* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  %27 = sdiv i32 %22, %26
  %28 = icmp sge i32 %21, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @REG_ESPACE, align 4
  %31 = call i32 @CERR(i32 %30)
  store i32 0, i32* %3, align 4
  br label %119

32:                                               ; preds = %18
  %33 = load %struct.colormap*, %struct.colormap** %4, align 8
  %34 = getelementptr inbounds %struct.colormap, %struct.colormap* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.colormap*, %struct.colormap** %4, align 8
  %37 = getelementptr inbounds %struct.colormap, %struct.colormap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load %struct.colormap*, %struct.colormap** %4, align 8
  %41 = getelementptr inbounds %struct.colormap, %struct.colormap* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @REALLOC(i64* %35, i32 %46)
  %48 = inttoptr i64 %47 to i64*
  store i64* %48, i64** %9, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = icmp eq i64* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load i32, i32* @REG_ESPACE, align 4
  %53 = call i32 @CERR(i32 %52)
  store i32 0, i32* %3, align 4
  br label %119

54:                                               ; preds = %32
  %55 = load i64*, i64** %9, align 8
  %56 = load %struct.colormap*, %struct.colormap** %4, align 8
  %57 = getelementptr inbounds %struct.colormap, %struct.colormap* %56, i32 0, i32 3
  store i64* %55, i64** %57, align 8
  %58 = load %struct.colormap*, %struct.colormap** %4, align 8
  %59 = getelementptr inbounds %struct.colormap, %struct.colormap* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %2
  %63 = load %struct.colormap*, %struct.colormap** %4, align 8
  %64 = getelementptr inbounds %struct.colormap, %struct.colormap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.colormap*, %struct.colormap** %4, align 8
  %68 = getelementptr inbounds %struct.colormap, %struct.colormap* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.colormap*, %struct.colormap** %4, align 8
  %72 = getelementptr inbounds %struct.colormap, %struct.colormap* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %69, i64 %75
  store i64* %76, i64** %7, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load %struct.colormap*, %struct.colormap** %4, align 8
  %79 = getelementptr inbounds %struct.colormap, %struct.colormap* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.colormap*, %struct.colormap** %4, align 8
  %83 = getelementptr inbounds %struct.colormap, %struct.colormap* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %80, i64 %86
  %88 = load %struct.colormap*, %struct.colormap** %4, align 8
  %89 = getelementptr inbounds %struct.colormap, %struct.colormap* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i64* %77, i64* %87, i32 %93)
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %114, %62
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.colormap*, %struct.colormap** %4, align 8
  %98 = getelementptr inbounds %struct.colormap, %struct.colormap* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load %struct.colormap*, %struct.colormap** %4, align 8
  %103 = getelementptr inbounds %struct.colormap, %struct.colormap* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %51, %29
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @CERR(i32) #1

declare dso_local i64 @REALLOC(i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
