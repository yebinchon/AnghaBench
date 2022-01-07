; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_userclip_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_userclip_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64**, i64*, i32 }

@GL_FALSE = common dso_local global i64 0, align 8
@MAX_CLIP_PLANES = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i64 0, align 8
@MAGIC_NUMBER = common dso_local global i64 0, align 8
@CLIP_USER_BIT = common dso_local global i32 0, align 4
@CLIP_ALL = common dso_local global i64 0, align 8
@CLIP_SOME = common dso_local global i64 0, align 8
@CLIP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, [4 x i64]*, i32*)* @userclip_vertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @userclip_vertices(%struct.TYPE_5__* %0, i64 %1, [4 x i64]* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store [4 x i64]* %2, [4 x i64]** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i64, i64* @GL_FALSE, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ASSERT(i32 %23)
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %134, %4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @MAX_CLIP_PLANES, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %137

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %133

38:                                               ; preds = %29
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64**, i64*** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i64*, i64** %42, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64**, i64*** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i64*, i64** %51, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64**, i64*** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i64*, i64** %60, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64**, i64*** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i64*, i64** %69, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 3
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* @GL_TRUE, align 8
  store i64 %75, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %76

76:                                               ; preds = %124, %38
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %127

80:                                               ; preds = %76
  %81 = load [4 x i64]*, [4 x i64]** %8, align 8
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %81, i64 %82
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %83, i64 0, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = mul nsw i64 %85, %86
  %88 = load [4 x i64]*, [4 x i64]** %8, align 8
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %88, i64 %89
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %90, i64 0, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = mul nsw i64 %92, %93
  %95 = add nsw i64 %87, %94
  %96 = load [4 x i64]*, [4 x i64]** %8, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 %97
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %98, i64 0, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = mul nsw i64 %100, %101
  %103 = add nsw i64 %95, %102
  %104 = load [4 x i64]*, [4 x i64]** %8, align 8
  %105 = load i64, i64* %17, align 8
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 %105
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %106, i64 0, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = mul nsw i64 %108, %109
  %111 = add nsw i64 %103, %110
  store i64 %111, i64* %18, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* @MAGIC_NUMBER, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %80
  %116 = load i32, i32* @CLIP_USER_BIT, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i64, i64* %17, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %116, i32* %119, align 4
  %120 = load i64, i64* @GL_TRUE, align 8
  store i64 %120, i64* %10, align 8
  br label %123

121:                                              ; preds = %80
  %122 = load i64, i64* @GL_FALSE, align 8
  store i64 %122, i64* %16, align 8
  br label %123

123:                                              ; preds = %121, %115
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %17, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %17, align 8
  br label %76

127:                                              ; preds = %76
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i64, i64* @CLIP_ALL, align 8
  store i64 %131, i64* %5, align 8
  br label %146

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %29
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %11, align 8
  br label %25

137:                                              ; preds = %25
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i64, i64* @CLIP_SOME, align 8
  br label %144

142:                                              ; preds = %137
  %143 = load i64, i64* @CLIP_NONE, align 8
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i64 [ %141, %140 ], [ %143, %142 ]
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %144, %130
  %147 = load i64, i64* %5, align 8
  ret i64 %147
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
