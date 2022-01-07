; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_attempt_line_merge.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_attempt_line_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outline = type { i32, %struct.point2d* }
%struct.point2d = type { i64, i32 }
%struct.cos_table = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@POINTTYPE_CORNER = common dso_local global i64 0, align 8
@POINTTYPE_CURVE_MIDDLE = common dso_local global i8* null, align 8
@POINTTYPE_CURVE_START = common dso_local global i8* null, align 8
@POINTTYPE_CURVE_END = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.outline*, i32, i32*, i64, %struct.cos_table*)* @attempt_line_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @attempt_line_merge(%struct.outline* %0, i32 %1, i32* %2, i64 %3, %struct.cos_table* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.outline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cos_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.point2d*, align 8
  %15 = alloca %struct.point2d*, align 8
  %16 = alloca i64, align 8
  store %struct.outline* %0, %struct.outline** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.cos_table* %4, %struct.cos_table** %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load %struct.outline*, %struct.outline** %7, align 8
  %19 = getelementptr inbounds %struct.outline, %struct.outline* %18, i32 0, i32 1
  %20 = load %struct.point2d*, %struct.point2d** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.point2d, %struct.point2d* %20, i64 %22
  store %struct.point2d* %23, %struct.point2d** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.outline*, %struct.outline** %7, align 8
  %27 = getelementptr inbounds %struct.outline, %struct.outline* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  %30 = load %struct.outline*, %struct.outline** %7, align 8
  %31 = getelementptr inbounds %struct.outline, %struct.outline* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.outline*, %struct.outline** %7, align 8
  %35 = getelementptr inbounds %struct.outline, %struct.outline* %34, i32 0, i32 1
  %36 = load %struct.point2d*, %struct.point2d** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.point2d, %struct.point2d* %36, i64 %38
  store %struct.point2d* %39, %struct.point2d** %14, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %5
  %43 = load %struct.point2d*, %struct.point2d** %15, align 8
  %44 = getelementptr inbounds %struct.point2d, %struct.point2d* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @POINTTYPE_CORNER, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i8*, i8** @POINTTYPE_CURVE_MIDDLE, align 8
  br label %52

50:                                               ; preds = %42
  %51 = load i8*, i8** @POINTTYPE_CURVE_START, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.point2d*, %struct.point2d** %15, align 8
  %56 = getelementptr inbounds %struct.point2d, %struct.point2d* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %5
  %58 = load %struct.outline*, %struct.outline** %7, align 8
  %59 = getelementptr inbounds %struct.outline, %struct.outline* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %6, align 8
  br label %146

64:                                               ; preds = %57
  %65 = load %struct.point2d*, %struct.point2d** %14, align 8
  %66 = getelementptr inbounds %struct.point2d, %struct.point2d* %65, i32 0, i32 1
  %67 = load %struct.point2d*, %struct.point2d** %15, align 8
  %68 = getelementptr inbounds %struct.point2d, %struct.point2d* %67, i32 0, i32 1
  %69 = call i32 @unit_vec2(i32* %13, i32* %66, i32* %68)
  %70 = load %struct.point2d*, %struct.point2d** %15, align 8
  %71 = getelementptr inbounds %struct.point2d, %struct.point2d* %70, i32 0, i32 1
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @unit_vec2(i32* %12, i32* %71, i32* %72)
  %74 = load %struct.cos_table*, %struct.cos_table** %11, align 8
  %75 = getelementptr inbounds %struct.cos_table, %struct.cos_table* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @is_direction_similar(i32* %13, i32* %12, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %64
  %80 = load %struct.outline*, %struct.outline** %7, align 8
  %81 = getelementptr inbounds %struct.outline, %struct.outline* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.point2d*, %struct.point2d** %15, align 8
  %85 = getelementptr inbounds %struct.point2d, %struct.point2d* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @POINTTYPE_CURVE_END, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.point2d*, %struct.point2d** %15, align 8
  %91 = getelementptr inbounds %struct.point2d, %struct.point2d* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.point2d*, %struct.point2d** %14, align 8
  %94 = getelementptr inbounds %struct.point2d, %struct.point2d* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %79
  %96 = load %struct.point2d*, %struct.point2d** %14, align 8
  %97 = getelementptr inbounds %struct.point2d, %struct.point2d* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @POINTTYPE_CURVE_END, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** @POINTTYPE_CURVE_MIDDLE, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.point2d*, %struct.point2d** %14, align 8
  %108 = getelementptr inbounds %struct.point2d, %struct.point2d* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %101, %95
  %110 = load %struct.point2d*, %struct.point2d** %14, align 8
  store %struct.point2d* %110, %struct.point2d** %15, align 8
  %111 = load i64, i64* @TRUE, align 8
  store i64 %111, i64* %16, align 8
  %112 = load %struct.outline*, %struct.outline** %7, align 8
  %113 = getelementptr inbounds %struct.outline, %struct.outline* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i64, i64* %16, align 8
  store i64 %117, i64* %6, align 8
  br label %146

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.outline*, %struct.outline** %7, align 8
  %122 = getelementptr inbounds %struct.outline, %struct.outline* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  %125 = load %struct.outline*, %struct.outline** %7, align 8
  %126 = getelementptr inbounds %struct.outline, %struct.outline* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = srem i32 %124, %127
  store i32 %128, i32* %8, align 4
  %129 = load %struct.outline*, %struct.outline** %7, align 8
  %130 = getelementptr inbounds %struct.outline, %struct.outline* %129, i32 0, i32 1
  %131 = load %struct.point2d*, %struct.point2d** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.point2d, %struct.point2d* %131, i64 %133
  store %struct.point2d* %134, %struct.point2d** %14, align 8
  %135 = load %struct.point2d*, %struct.point2d** %14, align 8
  %136 = getelementptr inbounds %struct.point2d, %struct.point2d* %135, i32 0, i32 1
  %137 = load %struct.point2d*, %struct.point2d** %15, align 8
  %138 = getelementptr inbounds %struct.point2d, %struct.point2d* %137, i32 0, i32 1
  %139 = call i32 @unit_vec2(i32* %13, i32* %136, i32* %138)
  %140 = load %struct.point2d*, %struct.point2d** %15, align 8
  %141 = getelementptr inbounds %struct.point2d, %struct.point2d* %140, i32 0, i32 1
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @unit_vec2(i32* %12, i32* %141, i32* %142)
  br label %144

144:                                              ; preds = %118, %64
  %145 = load i64, i64* %16, align 8
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %144, %116, %62
  %147 = load i64, i64* %6, align 8
  ret i64 %147
}

declare dso_local i32 @unit_vec2(i32*, i32*, i32*) #1

declare dso_local i64 @is_direction_similar(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
