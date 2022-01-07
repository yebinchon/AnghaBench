; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_sqr.c_BN_sqr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_sqr.c_BN_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_sqr(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca [8 x i64], align 16
  %14 = alloca [16 x i64], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i32 @bn_check_top(%struct.TYPE_9__* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  store i32 1, i32* %4, align 4
  br label %132

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @BN_CTX_start(i32* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = icmp ne %struct.TYPE_9__* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.TYPE_9__* @BN_CTX_get(i32* %34)
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi %struct.TYPE_9__* [ %32, %31 ], [ %35, %33 ]
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %12, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call %struct.TYPE_9__* @BN_CTX_get(i32* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %11, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %128

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32* @bn_wexpand(%struct.TYPE_9__* %47, i32 %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %128

53:                                               ; preds = %43
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %66 = call i32 @bn_sqr_normal(i64* %61, i64* %64, i32 4, i64* %65)
  br label %98

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %78 = call i32 @bn_sqr_normal(i64* %73, i64* %76, i32 8, i64* %77)
  br label %97

79:                                               ; preds = %67
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32* @bn_wexpand(%struct.TYPE_9__* %80, i32 %81)
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %128

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = call i32 @bn_sqr_normal(i64* %88, i64* %91, i32 %92, i64* %95)
  br label %97

97:                                               ; preds = %85, %70
  br label %98

98:                                               ; preds = %97, %58
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %104, %98
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = icmp ne %struct.TYPE_9__* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = call i32 @BN_copy(%struct.TYPE_9__* %124, %struct.TYPE_9__* %125)
  br label %127

127:                                              ; preds = %123, %119
  store i32 1, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %84, %52, %42
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @BN_CTX_end(i32* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @bn_check_top(%struct.TYPE_9__*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local %struct.TYPE_9__* @BN_CTX_get(i32*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bn_sqr_normal(i64*, i64*, i32, i64*) #1

declare dso_local i32 @BN_copy(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
