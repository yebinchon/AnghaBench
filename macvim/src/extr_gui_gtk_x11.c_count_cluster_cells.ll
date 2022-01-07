; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_count_cluster_cells.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_count_cluster_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32*)* @count_cluster_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_cluster_cells(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %74, %6
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %77

50:                                               ; preds = %38
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %62, %50
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %32

77:                                               ; preds = %49, %32
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %80, %87
  store i32 %88, i32* %15, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %77
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  br label %109

105:                                              ; preds = %77
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  br label %109

109:                                              ; preds = %105, %97
  %110 = phi i32 [ %104, %97 ], [ %108, %105 ]
  %111 = add nsw i32 %91, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32* %115, i32** %13, align 8
  br label %116

116:                                              ; preds = %144, %109
  %117 = load i32*, i32** %13, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = icmp ult i32* %117, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %116
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @utf_ptr2char(i32* %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp slt i32 %126, 128
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %143

131:                                              ; preds = %123
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @utf_iscomposing(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %18, align 4
  %137 = call i64 @utf_char2cells(i32 %136)
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %135, %131
  br label %143

143:                                              ; preds = %142, %128
  br label %144

144:                                              ; preds = %143
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @utf_byte2len(i32 %146)
  %148 = load i32*, i32** %13, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %13, align 8
  br label %116

151:                                              ; preds = %116
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %185

154:                                              ; preds = %151
  %155 = load i32, i32* %19, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %157
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @pango_font_get_glyph_extents(i32 %167, i32 %175, i32* %20, i32* null)
  %177 = load i32, i32* %20, align 4
  %178 = call i32 @PANGO_RBEARING(i32 %177)
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %163
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @PANGO_RBEARING(i32 %181)
  %183 = load i32*, i32** %12, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %180, %163
  br label %185

185:                                              ; preds = %184, %157, %154, %151
  %186 = load i32, i32* %19, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* %17, align 4
  %190 = load i32*, i32** %11, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* %19, align 4
  ret i32 %192
}

declare dso_local i32 @utf_ptr2char(i32*) #1

declare dso_local i32 @utf_iscomposing(i32) #1

declare dso_local i64 @utf_char2cells(i32) #1

declare dso_local i32 @utf_byte2len(i32) #1

declare dso_local i32 @pango_font_get_glyph_extents(i32, i32, i32*, i32*) #1

declare dso_local i32 @PANGO_RBEARING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
