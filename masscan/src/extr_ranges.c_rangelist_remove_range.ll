; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_remove_range.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_remove_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.Range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RangeList*, i32, i32)* @rangelist_remove_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rangelist_remove_range(%struct.RangeList* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Range, align 4
  %9 = alloca %struct.Range, align 4
  store %struct.RangeList* %0, %struct.RangeList** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %179, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %17 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %182

20:                                               ; preds = %14
  %21 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %22 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = bitcast %struct.TYPE_2__* %26 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = bitcast %struct.Range* %8 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @range_is_overlap(i64 %28, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %179

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %37 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ule i32 %35, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %48 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %46, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @rangelist_remove_at(%struct.RangeList* %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %7, align 4
  br label %179

62:                                               ; preds = %45, %34
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %65 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ugt i32 %63, %71
  br i1 %72, label %73, label %114

73:                                               ; preds = %62
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %76 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %74, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  %87 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %89 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub i32 %97, 1
  %99 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %100 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %98, i32* %105, align 4
  %106 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %107 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rangelist_add_range(%struct.RangeList* %106, i32 %108, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, -1
  store i32 %113, i32* %7, align 4
  br label %179

114:                                              ; preds = %73, %62
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %117 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp uge i32 %115, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %114
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %128 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ult i32 %126, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %125
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  %139 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %140 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 4
  br label %146

146:                                              ; preds = %136, %125, %114
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %149 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ugt i32 %147, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %146
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %160 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ule i32 %158, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %157
  %169 = load i32, i32* %5, align 4
  %170 = sub i32 %169, 1
  %171 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %172 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  store i32 %170, i32* %177, align 4
  br label %178

178:                                              ; preds = %168, %157, %146
  br label %179

179:                                              ; preds = %178, %84, %56, %33
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %14

182:                                              ; preds = %14
  ret void
}

declare dso_local i32 @range_is_overlap(i64, i64) #1

declare dso_local i32 @rangelist_remove_at(%struct.RangeList*, i32) #1

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
