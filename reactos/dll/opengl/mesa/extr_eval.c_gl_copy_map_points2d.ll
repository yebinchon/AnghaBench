; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_copy_map_points2d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_copy_map_points2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @gl_copy_map_points2d(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @components(i32 %23)
  store i32 %24, i32* %19, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* %19, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %6
  store i64* null, i64** %7, align 8
  br label %139

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %42

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul nsw i32 %39, %40
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ 0, %37 ], [ %41, %38 ]
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %19, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %19, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %20, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i64 @malloc(i32 %68)
  %70 = inttoptr i64 %69 to i64*
  store i64* %70, i64** %14, align 8
  br label %84

71:                                               ; preds = %51
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %19, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @malloc(i32 %81)
  %83 = inttoptr i64 %82 to i64*
  store i64* %83, i64** %14, align 8
  br label %84

84:                                               ; preds = %71, %58
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %22, align 4
  %90 = load i64*, i64** %14, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %137

92:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  %93 = load i64*, i64** %14, align 8
  store i64* %93, i64** %15, align 8
  br label %94

94:                                               ; preds = %129, %92
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %136

98:                                               ; preds = %94
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  store i32 0, i32* %18, align 4
  br label %104

104:                                              ; preds = %117, %103
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %15, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %15, align 8
  store i64 %114, i64* %115, align 8
  br label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %104

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %13, align 8
  br label %99

128:                                              ; preds = %99
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %13, align 8
  br label %94

136:                                              ; preds = %94
  br label %137

137:                                              ; preds = %136, %84
  %138 = load i64*, i64** %14, align 8
  store i64* %138, i64** %7, align 8
  br label %139

139:                                              ; preds = %137, %30
  %140 = load i64*, i64** %7, align 8
  ret i64* %140
}

declare dso_local i32 @components(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
