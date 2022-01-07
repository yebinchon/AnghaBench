; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_findSecLabels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_findSecLabels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@findSecLabels.labels = internal global %struct.TYPE_4__* null, align 8
@findSecLabels.nlabels = internal global i32 -1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.TYPE_4__**)* @findSecLabels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findSecLabels(i32* %0, i64 %1, i64 %2, %struct.TYPE_4__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_4__** %3, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* @findSecLabels.nlabels, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @collectSecLabels(i32* %17, %struct.TYPE_4__** @findSecLabels.labels)
  store i32 %18, i32* @findSecLabels.nlabels, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @findSecLabels.nlabels, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %23, align 8
  store i32 0, i32* %5, align 4
  br label %148

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @findSecLabels.labels, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %11, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @findSecLabels.labels, align 8
  %28 = load i32, i32* @findSecLabels.nlabels, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %30
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %12, align 8
  br label %32

32:                                               ; preds = %85, %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %35 = icmp ule %struct.TYPE_4__* %33, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = ptrtoint %struct.TYPE_4__* %38 to i64
  %41 = ptrtoint %struct.TYPE_4__* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 16
  %44 = sdiv i64 %43, 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %44
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 -1
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %12, align 8
  br label %85

54:                                               ; preds = %36
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 1
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %11, align 8
  br label %84

63:                                               ; preds = %54
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 -1
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %12, align 8
  br label %83

72:                                               ; preds = %63
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 1
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %11, align 8
  br label %82

81:                                               ; preds = %72
  br label %86

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %51
  br label %32

86:                                               ; preds = %81, %32
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = icmp ugt %struct.TYPE_4__* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %91, align 8
  store i32 0, i32* %5, align 4
  br label %148

92:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %96 = icmp ugt %struct.TYPE_4__* %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 -1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %98, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 -1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104, %97
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 -1
  store %struct.TYPE_4__* %114, %struct.TYPE_4__** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %93

117:                                              ; preds = %111, %93
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %119, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %122
  store %struct.TYPE_4__* %123, %struct.TYPE_4__** %10, align 8
  br label %124

124:                                              ; preds = %141, %117
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %127 = icmp ule %struct.TYPE_4__* %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %128
  br label %146

141:                                              ; preds = %134
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 1
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %10, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %124

146:                                              ; preds = %140, %124
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %90, %22
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @collectSecLabels(i32*, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
