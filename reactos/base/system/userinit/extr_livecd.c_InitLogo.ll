; ModuleID = '/home/carl/AnghaBench/reactos/base/system/userinit/extr_livecd.c_InitLogo.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/userinit/extr_livecd.c_InitLogo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@hInstance = common dso_local global i32 0, align 4
@IDB_ROSLOGO = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@IDB_ROSMASK = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @InitLogo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitLogo(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @GetDC(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %25, i32* %10, align 4
  %26 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %26, i32* %11, align 4
  store i32* null, i32** %14, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @ZeroMemory(%struct.TYPE_10__* %27, i32 56)
  %29 = call i32 @ZeroMemory(%struct.TYPE_10__* %8, i32 56)
  %30 = load i32, i32* @hInstance, align 4
  %31 = load i32, i32* @IDB_ROSLOGO, align 4
  %32 = call i32 @MAKEINTRESOURCEW(i32 %31)
  %33 = load i32, i32* @IMAGE_BITMAP, align 4
  %34 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %35 = call i64 @LoadImageW(i32 %30, i32 %32, i32 %33, i32 0, i32 0, i32 %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %13, align 8
  %37 = load i32, i32* @hInstance, align 4
  %38 = load i32, i32* @IDB_ROSMASK, align 4
  %39 = call i32 @MAKEINTRESOURCEW(i32 %38)
  %40 = load i32, i32* @IMAGE_BITMAP, align 4
  %41 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %42 = call i64 @LoadImageW(i32 %37, i32 %39, i32 %40, i32 0, i32 0, i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %182

46:                                               ; preds = %2
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %182

49:                                               ; preds = %46
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @GetObject(i32* %50, i32 16, %struct.TYPE_11__* %6)
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @GetObject(i32* %52, i32 16, %struct.TYPE_11__* %7)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %49
  br label %183

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 56, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  store i32 32, i32* %80, align 8
  %81 = load i32, i32* @BI_RGB, align 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 4, %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %86, %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @DIB_RGB_COLORS, align 4
  %94 = bitcast i32** %15 to i32*
  %95 = call i32* @CreateDIBSection(i32 %92, %struct.TYPE_10__* %8, i32 %93, i32* %94, i32 0, i32 0)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %66
  br label %183

99:                                               ; preds = %66
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @SelectObject(i32 %100, i32* %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @SelectObject(i32 %103, i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %159, %99
  %110 = load i32, i32* %16, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %162

112:                                              ; preds = %109
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %155, %112
  %114 = load i32, i32* %17, align 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %158

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @GetPixel(i32 %119, i32 %120, i32 %121)
  %123 = and i32 %122, 255
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @GetPixel(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @GetRValue(i32 %128)
  %130 = load i32, i32* %18, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sdiv i32 %131, 255
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @GetGValue(i32 %133)
  %135 = load i32, i32* %18, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sdiv i32 %136, 255
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %19, align 4
  %139 = call i32 @GetBValue(i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sdiv i32 %141, 255
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %21, align 4
  %145 = shl i32 %144, 8
  %146 = or i32 %143, %145
  %147 = load i32, i32* %20, align 4
  %148 = shl i32 %147, 16
  %149 = or i32 %146, %148
  %150 = load i32, i32* %18, align 4
  %151 = shl i32 %150, 24
  %152 = or i32 %149, %151
  %153 = load i32*, i32** %15, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %15, align 8
  store i32 %152, i32* %153, align 4
  br label %155

155:                                              ; preds = %118
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %113

158:                                              ; preds = %113
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %16, align 4
  br label %109

162:                                              ; preds = %109
  %163 = load i32*, i32** %14, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 4
  store i32* %163, i32** %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %162, %46, %2
  br label %183

183:                                              ; preds = %182, %98, %65
  %184 = load i32*, i32** %12, align 8
  %185 = call i32 @DeleteObject(i32* %184)
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @DeleteObject(i32* %186)
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @DeleteDC(i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @DeleteDC(i32 %190)
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @GetObject(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32* @CreateDIBSection(i32, %struct.TYPE_10__*, i32, i32*, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
