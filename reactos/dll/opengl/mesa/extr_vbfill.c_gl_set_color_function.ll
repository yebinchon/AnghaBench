; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_set_color_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_set_color_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@gl_ColorMat3f = common dso_local global i32 0, align 4
@gl_ColorMat3fv = common dso_local global i32 0, align 4
@gl_ColorMat4f = common dso_local global i32 0, align 4
@gl_ColorMat4fv = common dso_local global i32 0, align 4
@gl_ColorMat4ub = common dso_local global i32 0, align 4
@gl_ColorMat4ubv = common dso_local global i32 0, align 4
@gl_Color3f8bit = common dso_local global i32 0, align 4
@gl_Color3fv8bit = common dso_local global i32 0, align 4
@gl_Color4f8bit = common dso_local global i32 0, align 4
@gl_Color4fv8bit = common dso_local global i32 0, align 4
@gl_Color4ub8bit = common dso_local global i32 0, align 4
@gl_Color4ubv8bit = common dso_local global i32 0, align 4
@gl_Color3f = common dso_local global i32 0, align 4
@gl_Color3fv = common dso_local global i32 0, align 4
@gl_Color4f = common dso_local global i32 0, align 4
@gl_Color4fv = common dso_local global i32 0, align 4
@gl_Color4ub = common dso_local global i32 0, align 4
@gl_Color4ubv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_color_function(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = call i32 @INSIDE_BEGIN_END(%struct.TYPE_12__* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load i32, i32* @gl_ColorMat3f, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @gl_ColorMat3fv, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @gl_ColorMat4f, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @gl_ColorMat4fv, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @gl_ColorMat4ub, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @gl_ColorMat4ubv, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %97

39:                                               ; preds = %1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load i32, i32* @gl_Color3f8bit, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @gl_Color3fv8bit, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @gl_Color4f8bit, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @gl_Color4fv8bit, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @gl_Color4ub8bit, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @gl_Color4ubv8bit, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %96

71:                                               ; preds = %39
  %72 = load i32, i32* @gl_Color3f, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @gl_Color3fv, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @gl_Color4f, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @gl_Color4fv, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @gl_Color4ub, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @gl_Color4ubv, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %71, %46
  br label %97

97:                                               ; preds = %96, %14
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %145, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 5
  store i32 %106, i32* %109, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %102, %97
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @INSIDE_BEGIN_END(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
