; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginscan.c_ginFillScanEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginscan.c_ginFillScanEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__**, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i64, i64, i64, i32, i32, i32, i32*)* @ginFillScanEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ginFillScanEntry(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i32* %23, i32** %18, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %88

26:                                               ; preds = %8
  store i64 0, i64* %20, align 8
  br label %27

27:                                               ; preds = %84, %26
  %28 = load i64, i64* %20, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %35, align 8
  %37 = load i64, i64* %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %21, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 14
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %83

44:                                               ; preds = %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32*, i32** %18, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 16
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i64 @ginCompareEntries(i32* %69, i64 %70, i32 %73, i32 %76, i32 %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %9, align 8
  br label %173

83:                                               ; preds = %68, %62, %56, %50, %44, %33
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %20, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %20, align 8
  br label %27

87:                                               ; preds = %27
  br label %88

88:                                               ; preds = %87, %8
  %89 = call i32 @palloc(i32 4)
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %19, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 16
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 15
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 14
  store i32* %101, i32** %103, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @InvalidBuffer, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 12
  %118 = call i32 @ItemPointerSetMin(i32* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 11
  store i32* null, i32** %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 10
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 9
  store i32* null, i32** %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 8
  store i32* null, i32** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 7
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @InvalidOffsetNumber, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  store i32 0, i32* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 5
  store i32 0, i32* %135, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = icmp uge i64 %138, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %88
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %147, 2
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = trunc i64 %156 to i32
  %158 = call i64 @repalloc(%struct.TYPE_7__** %151, i32 %157)
  %159 = inttoptr i64 %158 to %struct.TYPE_7__**
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  store %struct.TYPE_7__** %159, %struct.TYPE_7__*** %161, align 8
  br label %162

162:                                              ; preds = %144, %88
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %166, i64 %169
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %171, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %172, %struct.TYPE_7__** %9, align 8
  br label %173

173:                                              ; preds = %162, %81
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  ret %struct.TYPE_7__* %174
}

declare dso_local i64 @ginCompareEntries(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @palloc(i32) #1

declare dso_local i32 @ItemPointerSetMin(i32*) #1

declare dso_local i64 @repalloc(%struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
