; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_gl_depth_stencil_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_gl_depth_stencil_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*)* }
%struct.TYPE_8__ = type { i64 }

@GL_FALSE = common dso_local global i64 0, align 8
@PB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_depth_stencil_pixels(%struct.TYPE_11__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GL_FALSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @apply_stencil_op_to_pixels(%struct.TYPE_11__* %25, i64 %26, i32* %27, i32* %28, i32 %32, i32* %33)
  br label %129

35:                                               ; preds = %6
  %36 = load i32, i32* @PB_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %13, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  %40 = load i32, i32* @PB_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %15, align 8
  %43 = load i32, i32* @PB_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %46

46:                                               ; preds = %61, %35
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i64, i64* %17, align 8
  %52 = getelementptr inbounds i32, i32* %42, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds i32, i32* %39, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %17, align 8
  %60 = getelementptr inbounds i32, i32* %45, i64 %59
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %50
  %62 = load i64, i64* %17, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %17, align 8
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*)* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i64, i32*, i32*, i32*, i32*)** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 %74(%struct.TYPE_11__* %75, i64 %76, i32* %77, i32* %78, i32* %79, i32* %80)
  br label %82

82:                                               ; preds = %70, %64
  store i64 0, i64* %17, align 8
  br label %83

83:                                               ; preds = %106, %82
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %83
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds i32, i32* %45, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* %17, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i64, i64* %17, align 8
  %100 = getelementptr inbounds i32, i32* %39, i64 %99
  store i32 1, i32* %100, align 4
  br label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %17, align 8
  %103 = getelementptr inbounds i32, i32* %42, i64 %102
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %87
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %17, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %17, align 8
  br label %83

109:                                              ; preds = %83
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @apply_stencil_op_to_pixels(%struct.TYPE_11__* %110, i64 %111, i32* %112, i32* %113, i32 %117, i32* %42)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @apply_stencil_op_to_pixels(%struct.TYPE_11__* %119, i64 %120, i32* %121, i32* %122, i32 %126, i32* %39)
  %128 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %129

129:                                              ; preds = %109, %24
  ret void
}

declare dso_local i32 @apply_stencil_op_to_pixels(%struct.TYPE_11__*, i64, i32*, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
