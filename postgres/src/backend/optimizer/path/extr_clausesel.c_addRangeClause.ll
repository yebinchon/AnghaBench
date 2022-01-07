; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_clausesel.c_addRangeClause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_clausesel.c_addRangeClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, %struct.TYPE_3__*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__**, i32*, i32, i32, i64)* @addRangeClause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addRangeClause(%struct.TYPE_3__** %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @get_leftop(i32* %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %13, align 4
  br label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @get_rightop(i32* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %11, align 8
  br label %30

30:                                               ; preds = %91, %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = load i32*, i32** %12, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @equal(i32* %34, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %91

41:                                               ; preds = %33
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %66

55:                                               ; preds = %44
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %49
  br label %90

67:                                               ; preds = %41
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  br label %89

78:                                               ; preds = %67
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %66
  br label %126

91:                                               ; preds = %40
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  store %struct.TYPE_3__* %94, %struct.TYPE_3__** %11, align 8
  br label %30

95:                                               ; preds = %30
  %96 = call i64 @palloc(i32 48)
  %97 = inttoptr i64 %96 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %97, %struct.TYPE_3__** %11, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 5
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %119

111:                                              ; preds = %95
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %111, %103
  %120 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %123, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %125 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  store %struct.TYPE_3__* %124, %struct.TYPE_3__** %125, align 8
  br label %126

126:                                              ; preds = %119, %90
  ret void
}

declare dso_local i32* @get_leftop(i32*) #1

declare dso_local i32* @get_rightop(i32*) #1

declare dso_local i32 @equal(i32*, i32*) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
