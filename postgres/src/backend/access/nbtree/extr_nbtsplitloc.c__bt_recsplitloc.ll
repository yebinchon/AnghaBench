; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_recsplitloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_recsplitloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i64, i64, %struct.TYPE_4__*, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i32, i32, i64)* @_bt_recsplitloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_recsplitloc(%struct.TYPE_5__* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ false, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  store i64 %41, i64* %11, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sub nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %12, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %35
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @MAXALIGN(i32 4)
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %11, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %11, align 8
  br label %66

62:                                               ; preds = %35
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %81

75:                                               ; preds = %66
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 9
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @MAXALIGN(i32 4)
  %89 = add i64 %88, 4
  %90 = sub nsw i64 %87, %89
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i64, i64* %11, align 8
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %164

96:                                               ; preds = %93
  %97 = load i64, i64* %12, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %164

99:                                               ; preds = %96
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @Assert(i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @Min(i32 %111, i64 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i64 %124, i64* %132, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i64 %133, i64* %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i64 %142, i64* %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 %151, i32* %159, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %161, align 8
  br label %164

164:                                              ; preds = %99, %96, %93
  ret void
}

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @Min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
