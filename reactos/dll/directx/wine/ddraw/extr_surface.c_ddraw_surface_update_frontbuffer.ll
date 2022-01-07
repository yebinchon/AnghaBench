; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_surface.c_ddraw_surface_update_frontbuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_surface.c_ddraw_surface_update_frontbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddraw_surface = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.ddraw* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ddraw = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@DD_OK = common dso_local global i32 0, align 4
@DDRAW_GDI_FLIP = common dso_local global i32 0, align 4
@WINED3D_TEXF_POINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to get surface DC, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get screen DC.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to blit to/from screen.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddraw_surface_update_frontbuffer(%struct.ddraw_surface* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddraw_surface*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ddraw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__, align 4
  store %struct.ddraw_surface* %0, %struct.ddraw_surface** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %19 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %18, i32 0, i32 4
  %20 = load %struct.ddraw*, %struct.ddraw** %19, align 8
  store %struct.ddraw* %20, %struct.ddraw** %8, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %25 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %29 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SetRect(%struct.TYPE_10__* %17, i32 0, i32 0, i32 %27, i32 %31)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  br label %33

33:                                               ; preds = %23, %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %33
  %60 = load i32, i32* @DD_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %176

61:                                               ; preds = %56
  %62 = load %struct.ddraw*, %struct.ddraw** %8, align 8
  %63 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load %struct.ddraw*, %struct.ddraw** %8, align 8
  %68 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DDRAW_GDI_FLIP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @DD_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %176

78:                                               ; preds = %73
  %79 = load %struct.ddraw*, %struct.ddraw** %8, align 8
  %80 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %84 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %87 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = load i32, i32* @WINED3D_TEXF_POINT, align 4
  %91 = call i32 @wined3d_texture_blt(i32 %81, i32 0, %struct.TYPE_10__* %82, i32 %85, i32 %88, %struct.TYPE_10__* %89, i32 0, i32* null, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %176

92:                                               ; preds = %66, %61
  %93 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %94 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %97 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @wined3d_texture_get_dc(i32 %95, i32 %98, i32* %9)
  store i32 %99, i32* %15, align 4
  %100 = call i64 @FAILED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %4, align 4
  br label %176

106:                                              ; preds = %92
  %107 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %108 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %113 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @wined3d_palette_apply_to_dc(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %106
  %120 = call i32 @GetDC(i32* null)
  store i32 %120, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %124 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %127 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @wined3d_texture_release_dc(i32 %125, i32 %128, i32 %129)
  %131 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @E_FAIL, align 4
  store i32 %132, i32* %4, align 4
  br label %176

133:                                              ; preds = %119
  %134 = load i64, i64* %7, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @SRCCOPY, align 4
  %146 = call i64 @BitBlt(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  store i64 %146, i64* %16, align 8
  br label %158

147:                                              ; preds = %133
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @SRCCOPY, align 4
  %157 = call i64 @BitBlt(i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  store i64 %157, i64* %16, align 8
  br label %158

158:                                              ; preds = %147, %136
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @ReleaseDC(i32* null, i32 %159)
  %161 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %162 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ddraw_surface*, %struct.ddraw_surface** %5, align 8
  %165 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @wined3d_texture_release_dc(i32 %163, i32 %166, i32 %167)
  %169 = load i64, i64* %16, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %158
  %172 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @E_FAIL, align 4
  store i32 %173, i32* %4, align 4
  br label %176

174:                                              ; preds = %158
  %175 = load i32, i32* @DD_OK, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %171, %122, %102, %78, %76, %59
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @SetRect(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @wined3d_texture_blt(i32, i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_texture_get_dc(i32, i32, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @wined3d_palette_apply_to_dc(i32, i32) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @wined3d_texture_release_dc(i32, i32, i32) #1

declare dso_local i64 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
