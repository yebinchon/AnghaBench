; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_remove_predecessor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_remove_predecessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64*, i32, %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ssa_remove_predecessor(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i64 %18
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i64 %24
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %8, align 8
  store i32 -1, i32* %11, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %51, %3
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %34

54:                                               ; preds = %48, %34
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %143

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %9, align 8
  br label %62

62:                                               ; preds = %105, %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %109

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @zend_ssa_remove_uses_of_var(%struct.TYPE_15__* %77, i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = call i32 @zend_ssa_remove_phi(%struct.TYPE_15__* %82, %struct.TYPE_13__* %83)
  br label %85

85:                                               ; preds = %76, %70
  br label %104

86:                                               ; preds = %65
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ZEND_ASSERT(i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @zend_ssa_remove_phi_source(%struct.TYPE_15__* %97, %struct.TYPE_13__* %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %86, %85
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %9, align 8
  br label %62

109:                                              ; preds = %62
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %109
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 %126, %128
  %130 = getelementptr inbounds i32, i32* %123, i64 %129
  store i32* %130, i32** %12, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memmove(i32* %131, i32* %133, i32 %141)
  br label %143

143:                                              ; preds = %57, %119, %109
  ret void
}

declare dso_local i32 @zend_ssa_remove_uses_of_var(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @zend_ssa_remove_phi(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @zend_ssa_remove_phi_source(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
