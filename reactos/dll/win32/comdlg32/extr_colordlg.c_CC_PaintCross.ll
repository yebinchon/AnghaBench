; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintCross.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintCross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@MAXHORI = common dso_local global i64 0, align 8
@MAXVERT = common dso_local global i64 0, align 8
@SRCCOPY = common dso_local global i32 0, align 4
@PS_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CC_PaintCross to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_PaintCross(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %17 = call i32 @GetDlgItem(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @IsWindowVisible(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %251

21:                                               ; preds = %1
  %22 = call i32 (...) @GetDialogBaseUnits()
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = call i32 (...) @GetDialogBaseUnits()
  %25 = mul nsw i32 %24, 3
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @GetClientRect(i32 %33, %struct.TYPE_10__* %7)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @GetDC(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @CreateRectRgnIndirect(%struct.TYPE_10__* %7)
  %39 = call i32 @SelectClipRgn(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %41, %43
  %45 = load i64, i64* @MAXHORI, align 8
  %46 = sdiv i64 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %51, %53
  %55 = load i64, i64* @MAXVERT, align 8
  %56 = sdiv i64 %54, %55
  %57 = sub nsw i64 %49, %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %21
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %81, %85
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %90, %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SRCCOPY, align 4
  %108 = call i32 @BitBlt(i32 %69, i32 %73, i32 %77, i32 %86, i32 %95, i32 %98, i32 %102, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %68, %21
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %111, %113
  %115 = sub nsw i64 %114, 1
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = add nsw i64 %124, 1
  %126 = trunc i64 %125 to i32
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %131, %133
  %135 = sub nsw i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = add nsw i64 %144, 1
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* @PS_SOLID, align 4
  %151 = call i32 @RGB(i32 0, i32 0, i32 0)
  %152 = call i32 @CreatePen(i32 %150, i32 3, i32 %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @SelectObject(i32 %153, i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %4, align 4
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %158, %160
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @MoveToEx(i32 %156, i32 %162, i32 %165, %struct.TYPE_11__* %9)
  %167 = load i32, i32* %4, align 4
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %169, %171
  %173 = trunc i64 %172 to i32
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 @LineTo(i32 %167, i32 %173, i32 %176)
  %178 = load i32, i32* %4, align 4
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = trunc i64 %183 to i32
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @MoveToEx(i32 %178, i32 %184, i32 %187, %struct.TYPE_11__* %9)
  %189 = load i32, i32* %4, align 4
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %191, %193
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @LineTo(i32 %189, i32 %195, i32 %198)
  %200 = load i32, i32* %4, align 4
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %205, %207
  %209 = trunc i64 %208 to i32
  %210 = call i32 @MoveToEx(i32 %200, i32 %203, i32 %209, %struct.TYPE_11__* %9)
  %211 = load i32, i32* %4, align 4
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = sub nsw i64 %216, %218
  %220 = trunc i64 %219 to i32
  %221 = call i32 @LineTo(i32 %211, i32 %214, i32 %220)
  %222 = load i32, i32* %4, align 4
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %227, %229
  %231 = trunc i64 %230 to i32
  %232 = call i32 @MoveToEx(i32 %222, i32 %225, i32 %231, %struct.TYPE_11__* %9)
  %233 = load i32, i32* %4, align 4
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = trunc i64 %241 to i32
  %243 = call i32 @LineTo(i32 %233, i32 %236, i32 %242)
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @SelectObject(i32 %244, i32 %245)
  %247 = call i32 @DeleteObject(i32 %246)
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @ReleaseDC(i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %109, %1
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @GetDialogBaseUnits(...) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectClipRgn(i32, i32) #1

declare dso_local i32 @CreateRectRgnIndirect(%struct.TYPE_10__*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
