; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_newhicolorcols.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_newhicolorcols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i32, i32, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.colormap*)* @newhicolorcols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newhicolorcols(%struct.colormap* %0) #0 {
  %2 = alloca %struct.colormap*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.colormap* %0, %struct.colormap** %2, align 8
  %10 = load %struct.colormap*, %struct.colormap** %2, align 8
  %11 = getelementptr inbounds %struct.colormap, %struct.colormap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INT_MAX, align 4
  %14 = load %struct.colormap*, %struct.colormap** %2, align 8
  %15 = getelementptr inbounds %struct.colormap, %struct.colormap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sdiv i32 %13, %17
  %19 = icmp sge i32 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @REG_ESPACE, align 4
  %22 = call i32 @CERR(i32 %21)
  br label %121

23:                                               ; preds = %1
  %24 = load %struct.colormap*, %struct.colormap** %2, align 8
  %25 = getelementptr inbounds %struct.colormap, %struct.colormap* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.colormap*, %struct.colormap** %2, align 8
  %28 = getelementptr inbounds %struct.colormap, %struct.colormap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.colormap*, %struct.colormap** %2, align 8
  %31 = getelementptr inbounds %struct.colormap, %struct.colormap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @REALLOC(i64* %26, i32 %37)
  %39 = inttoptr i64 %38 to i64*
  store i64* %39, i64** %3, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = icmp eq i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* @REG_ESPACE, align 4
  %44 = call i32 @CERR(i32 %43)
  br label %121

45:                                               ; preds = %23
  %46 = load i64*, i64** %3, align 8
  %47 = load %struct.colormap*, %struct.colormap** %2, align 8
  %48 = getelementptr inbounds %struct.colormap, %struct.colormap* %47, i32 0, i32 2
  store i64* %46, i64** %48, align 8
  %49 = load %struct.colormap*, %struct.colormap** %2, align 8
  %50 = getelementptr inbounds %struct.colormap, %struct.colormap* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %113, %45
  %54 = load i32, i32* %4, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %116

56:                                               ; preds = %53
  %57 = load i64*, i64** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.colormap*, %struct.colormap** %2, align 8
  %60 = getelementptr inbounds %struct.colormap, %struct.colormap* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %57, i64 %63
  store i64* %64, i64** %6, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.colormap*, %struct.colormap** %2, align 8
  %68 = getelementptr inbounds %struct.colormap, %struct.colormap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = mul nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %65, i64 %72
  store i64* %73, i64** %7, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load %struct.colormap*, %struct.colormap** %2, align 8
  %76 = getelementptr inbounds %struct.colormap, %struct.colormap* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  store i64* %79, i64** %8, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %109, %56
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.colormap*, %struct.colormap** %2, align 8
  %83 = getelementptr inbounds %struct.colormap, %struct.colormap* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load i64*, i64** %6, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %92, i64* %96, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %92, i64* %100, align 8
  %101 = load %struct.colormap*, %struct.colormap** %2, align 8
  %102 = getelementptr inbounds %struct.colormap, %struct.colormap* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %86
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %80

112:                                              ; preds = %80
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %4, align 4
  br label %53

116:                                              ; preds = %53
  %117 = load %struct.colormap*, %struct.colormap** %2, align 8
  %118 = getelementptr inbounds %struct.colormap, %struct.colormap* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 2
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %116, %42, %20
  ret void
}

declare dso_local i32 @CERR(i32) #1

declare dso_local i64 @REALLOC(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
