; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawCaptionTemp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawCaptionTemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i32, i64 }

@DC_GRADIENT = common dso_local global i32 0, align 4
@__const.MyDrawCaptionTemp.gcap = private unnamed_addr constant %struct.TYPE_13__ { i32 0, i32 1 }, align 4
@DC_ACTIVE = common dso_local global i32 0, align 4
@COLOR_ACTIVECAPTION = common dso_local global i64 0, align 8
@COLOR_INACTIVECAPTION = common dso_local global i64 0, align 8
@COLOR_GRADIENTACTIVECAPTION = common dso_local global i64 0, align 8
@COLOR_GRADIENTINACTIVECAPTION = common dso_local global i64 0, align 8
@GRADIENT_FILL_RECT_H = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i32 0, align 4
@COLOR_CAPTIONTEXT = common dso_local global i64 0, align 8
@COLOR_INACTIVECAPTIONTEXT = common dso_local global i64 0, align 8
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MyDrawCaptionTemp(i32 %0, i32 %1, %struct.TYPE_12__* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_14__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca %struct.TYPE_13__, align 4
  %21 = alloca [2 x %struct.TYPE_11__], align 16
  %22 = alloca [2 x i32], align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %16, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @DC_GRADIENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %121

27:                                               ; preds = %8
  %28 = bitcast %struct.TYPE_13__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.TYPE_13__* @__const.MyDrawCaptionTemp.gcap to i8*), i64 8, i1 false)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @DC_ACTIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i64, i64* @COLOR_ACTIVECAPTION, align 8
  br label %40

38:                                               ; preds = %27
  %39 = load i64, i64* @COLOR_INACTIVECAPTION, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds i32, i32* %31, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @DC_ACTIVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* @COLOR_GRADIENTACTIVECAPTION, align 8
  br label %56

54:                                               ; preds = %40
  %55 = load i64, i64* @COLOR_GRADIENTINACTIVECAPTION, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds i32, i32* %47, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 16
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 16
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65280
  %79 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 65280
  %85 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 16
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 8
  %102 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 65280
  %107 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 65280
  %113 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %119 = load i32, i32* @GRADIENT_FILL_RECT_H, align 4
  %120 = call i32 @GdiGradientFill(i32 %117, %struct.TYPE_11__* %118, i32 2, %struct.TYPE_13__* %20, i32 1, i32 %119)
  br label %149

121:                                              ; preds = %8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @DC_ACTIVE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @COLOR_ACTIVECAPTION, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @CreateSolidBrush(i32 %132)
  store i32 %133, i32* %17, align 4
  br label %142

134:                                              ; preds = %121
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @COLOR_INACTIVECAPTION, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @CreateSolidBrush(i32 %140)
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %134, %126
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @FillRect(i32 %143, %struct.TYPE_12__* %144, i32 %145)
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @DeleteObject(i32 %147)
  br label %149

149:                                              ; preds = %142, %56
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @SelectObject(i32 %150, i32 %151)
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @TRANSPARENT, align 4
  %155 = call i32 @SetBkMode(i32 %153, i32 %154)
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* @DC_ACTIVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %149
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @COLOR_CAPTIONTEXT, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @SetTextColor(i32 %161, i32 %167)
  br label %178

169:                                              ; preds = %149
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @COLOR_INACTIVECAPTIONTEXT, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @SetTextColor(i32 %170, i32 %176)
  br label %178

178:                                              ; preds = %169, %160
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  store i64 %182, i64* %183, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  store i32 %186, i32* %187, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store i64 %190, i64* %191, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 %194, i32* %195, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* @DT_SINGLELINE, align 4
  %199 = load i32, i32* @DT_VCENTER, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @DrawTextW(i32 %196, i32 %197, i32 -1, %struct.TYPE_12__* %19, i32 %200)
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @SelectObject(i32 %202, i32 %203)
  %205 = load i32, i32* @TRUE, align 4
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdiGradientFill(i32, %struct.TYPE_11__*, i32, %struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @CreateSolidBrush(i32) #2

declare dso_local i32 @FillRect(i32, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @SetBkMode(i32, i32) #2

declare dso_local i32 @SetTextColor(i32, i32) #2

declare dso_local i32 @DrawTextW(i32, i32, i32, %struct.TYPE_12__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
