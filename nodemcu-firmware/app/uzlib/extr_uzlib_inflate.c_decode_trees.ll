; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_inflate.c_decode_trees.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_inflate.c_decode_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@UZLIB_DATA_ERROR = common dso_local global i32 0, align 4
@UZLIB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @decode_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_trees(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [320 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 @read_bits(%struct.TYPE_5__* %21, i32 5, i32 257)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = call i32 @read_bits(%struct.TYPE_5__* %23, i32 5, i32 1)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = call i32 @read_bits(%struct.TYPE_5__* %25, i32 4, i32 4)
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %34, %3
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 19
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 %32
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  br label %27

37:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i32 @read_bits(%struct.TYPE_5__* %43, i32 3, i32 0)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 %52
  store i32 %45, i32* %53, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %38

57:                                               ; preds = %38
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 0
  %60 = call i32 @build_tree(i32* %58, i32* %59, i32 19)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %117, %86, %57
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %118

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @decode_symbol(%struct.TYPE_5__* %69, i32* %70)
  store i32 %71, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 3, i32* %20, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %4, align 4
  br label %131

76:                                               ; preds = %68
  %77 = load i32, i32* %17, align 4
  switch i32 %77, label %86 [
    i32 16, label %78
    i32 17, label %84
    i32 18, label %85
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %18, align 4
  store i32 2, i32* %19, align 4
  br label %92

84:                                               ; preds = %76
  store i32 3, i32* %19, align 4
  br label %92

85:                                               ; preds = %76
  store i32 7, i32* %19, align 4
  store i32 11, i32* %20, align 4
  br label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 %90
  store i32 %87, i32* %91, align 4
  br label %64

92:                                               ; preds = %85, %84, %78
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @read_bits(%struct.TYPE_5__* %93, i32 %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @UZLIB_DATA_ERROR, align 4
  store i32 %103, i32* %4, align 4
  br label %131

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %114, %104
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %15, align 4
  br label %105

117:                                              ; preds = %105
  br label %64

118:                                              ; preds = %64
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 0
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @build_tree(i32* %119, i32* %120, i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 0
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @build_tree(i32* %123, i32* %127, i32 %128)
  %130 = load i32, i32* @UZLIB_OK, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %118, %102, %74
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @read_bits(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @build_tree(i32*, i32*, i32) #1

declare dso_local i32 @decode_symbol(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
