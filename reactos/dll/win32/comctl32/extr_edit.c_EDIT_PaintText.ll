; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_PaintText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_PaintText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@OPAQUE = common dso_local global i64 0, align 8
@OBJ_FONT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, i64, i64, i64, i64, i64, i64)* @EDIT_PaintText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EDIT_PaintText(%struct.TYPE_13__* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_12__, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_11__, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %28 = load i64, i64* %16, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store i64 0, i64* %9, align 8
  br label %168

31:                                               ; preds = %8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @GetBkMode(i32 %32)
  store i64 %33, i64* %25, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @GetBkColor(i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @GetTextColor(i32 %36)
  store i32 %37, i32* %19, align 4
  %38 = load i64, i64* %17, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %31
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %48 = call i32 @GetSysColor(i32 %47)
  %49 = call i32 @SetBkColor(i32 %46, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %52 = call i32 @GetSysColor(i32 %51)
  %53 = call i32 @SetTextColor(i32 %50, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i64, i64* @OPAQUE, align 8
  %56 = call i32 @SetBkMode(i32 %54, i64 %55)
  br label %69

57:                                               ; preds = %40
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @OBJ_FONT, align 4
  %60 = call i64 @GetCurrentObject(i32 %58, i32 %59)
  store i64 %60, i64* %27, align 8
  %61 = load i64, i64* %27, align 8
  %62 = call i32 @GetObjectW(i64 %61, i32 4, %struct.TYPE_12__* %20)
  %63 = load i32, i32* @TRUE, align 4
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = call i64 @CreateFontIndirectW(%struct.TYPE_12__* %20)
  store i64 %65, i64* %21, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i64, i64* %21, align 8
  %68 = call i64 @SelectObject(i32 %66, i64 %67)
  store i64 %68, i64* %22, align 8
  br label %69

69:                                               ; preds = %57, %45
  br label %70

70:                                               ; preds = %69, %31
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_13__* %71, i64 %72)
  store i64 %73, i64* %24, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ES_MULTILINE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %24, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %15, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* %16, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = call i32 @TabbedTextOutW(i32 %81, i64 %82, i64 %83, i64 %90, i64 %91, i32 %94, i32 %97, i64 %105)
  %107 = call i64 @LOWORD(i32 %106)
  store i64 %107, i64* %23, align 8
  br label %133

108:                                              ; preds = %70
  %109 = load i32, i32* %11, align 4
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %24, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64, i64* %15, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i64, i64* %16, align 8
  %120 = call i32 @TextOutW(i32 %109, i64 %110, i64 %111, i64 %118, i64 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %24, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i64, i64* %15, align 8
  %128 = add nsw i64 %126, %127
  %129 = load i64, i64* %16, align 8
  %130 = call i32 @GetTextExtentPoint32W(i32 %121, i64 %128, i64 %129, %struct.TYPE_11__* %26)
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %23, align 8
  br label %133

133:                                              ; preds = %108, %80
  %134 = load i64, i64* %17, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %133
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @SetBkColor(i32 %142, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @SetTextColor(i32 %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load i64, i64* %25, align 8
  %150 = call i32 @SetBkMode(i32 %148, i64 %149)
  br label %165

151:                                              ; preds = %136
  %152 = load i64, i64* %22, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = load i64, i64* %22, align 8
  %157 = call i64 @SelectObject(i32 %155, i64 %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i64, i64* %21, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i64, i64* %21, align 8
  %163 = call i32 @DeleteObject(i64 %162)
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %164, %141
  br label %166

166:                                              ; preds = %165, %133
  %167 = load i64, i64* %23, align 8
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %166, %30
  %169 = load i64, i64* %9, align 8
  ret i64 %169
}

declare dso_local i64 @GetBkMode(i32) #1

declare dso_local i32 @GetBkColor(i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i64) #1

declare dso_local i64 @GetCurrentObject(i32, i32) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @CreateFontIndirectW(%struct.TYPE_12__*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @TabbedTextOutW(i32, i64, i64, i64, i64, i32, i32, i64) #1

declare dso_local i32 @TextOutW(i32, i64, i64, i64, i64) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i64, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
