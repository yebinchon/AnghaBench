; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_draw_text.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@g_width = common dso_local global i32 0, align 4
@MIX_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"this shouldn't be happening\0A\00", align 1
@TEXT2_IMPLICIT_X = common dso_local global i32 0, align 4
@TEXT2_VERTICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_text(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32* %14, i32 %15, i32 %16, i32* %17, i32 %18) #0 {
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_3__*, align 8
  %43 = alloca i32*, align 8
  store i32 %0, i32* %20, align 4
  store i32 %1, i32* %21, align 4
  store i32 %2, i32* %22, align 4
  store i32 %3, i32* %23, align 4
  store i32 %4, i32* %24, align 4
  store i32 %5, i32* %25, align 4
  store i32 %6, i32* %26, align 4
  store i32 %7, i32* %27, align 4
  store i32 %8, i32* %28, align 4
  store i32 %9, i32* %29, align 4
  store i32 %10, i32* %30, align 4
  store i32 %11, i32* %31, align 4
  store i32 %12, i32* %32, align 4
  store i32 %13, i32* %33, align 4
  store i32* %14, i32** %34, align 8
  store i32 %15, i32* %35, align 4
  store i32 %16, i32* %36, align 4
  store i32* %17, i32** %37, align 8
  store i32 %18, i32* %38, align 4
  %44 = load i32, i32* %30, align 4
  %45 = load i32, i32* %32, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @g_width, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %19
  %50 = load i32, i32* @g_width, align 4
  %51 = load i32, i32* %30, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %32, align 4
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i32, i32* %32, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %30, align 4
  %58 = load i32, i32* %31, align 4
  %59 = load i32, i32* %32, align 4
  %60 = load i32, i32* %33, align 4
  %61 = load i32, i32* %35, align 4
  %62 = call i32 @bs_rect(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 12)
  br label %75

63:                                               ; preds = %53
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* @MIX_OPAQUE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %26, align 4
  %69 = load i32, i32* %27, align 4
  %70 = load i32, i32* %28, align 4
  %71 = load i32, i32* %29, align 4
  %72 = load i32, i32* %35, align 4
  %73 = call i32 @bs_rect(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 12)
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74, %56
  store i32 0, i32* %39, align 4
  br label %76

76:                                               ; preds = %209, %75
  %77 = load i32, i32* %39, align 4
  %78 = load i32, i32* %38, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %210

80:                                               ; preds = %76
  %81 = load i32*, i32** %37, align 8
  %82 = load i32, i32* %39, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %203 [
    i32 255, label %86
    i32 254, label %119
  ]

86:                                               ; preds = %80
  %87 = load i32, i32* %39, align 4
  %88 = add nsw i32 %87, 2
  %89 = load i32, i32* %38, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i32*, i32** %37, align 8
  %93 = load i32, i32* %39, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %37, align 8
  %99 = load i32*, i32** %37, align 8
  %100 = load i32, i32* %39, align 4
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cache_put_text(i32 %97, i32* %98, i32 %104)
  br label %109

106:                                              ; preds = %86
  %107 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %91
  %110 = load i32, i32* %39, align 4
  %111 = add nsw i32 %110, 3
  %112 = load i32, i32* %38, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %38, align 4
  %114 = load i32*, i32** %37, align 8
  %115 = load i32, i32* %39, align 4
  %116 = add nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32* %118, i32** %37, align 8
  store i32 0, i32* %39, align 4
  br label %209

119:                                              ; preds = %80
  %120 = load i32*, i32** %37, align 8
  %121 = load i32, i32* %39, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.TYPE_3__* @cache_get_text(i32 %125)
  store %struct.TYPE_3__* %126, %struct.TYPE_3__** %42, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %128 = icmp ne %struct.TYPE_3__* %127, null
  br i1 %128, label %129, label %184

129:                                              ; preds = %119
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %129
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* @TEXT2_IMPLICIT_X, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* @TEXT2_VERTICAL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load i32*, i32** %37, align 8
  %149 = load i32, i32* %39, align 4
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %25, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %25, align 4
  br label %165

156:                                              ; preds = %142
  %157 = load i32*, i32** %37, align 8
  %158 = load i32, i32* %39, align 4
  %159 = add nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %24, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %24, align 4
  br label %165

165:                                              ; preds = %156, %147
  br label %166

166:                                              ; preds = %165, %137, %129
  store i32 0, i32* %40, align 4
  br label %167

167:                                              ; preds = %180, %166
  %168 = load i32, i32* %40, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i32*
  %178 = load i32, i32* %40, align 4
  %179 = call i32 @DO_GLYPH(i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %40, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %40, align 4
  br label %167

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183, %119
  %185 = load i32, i32* %39, align 4
  %186 = add nsw i32 %185, 2
  %187 = load i32, i32* %38, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* %39, align 4
  %191 = add nsw i32 %190, 3
  store i32 %191, i32* %39, align 4
  br label %195

192:                                              ; preds = %184
  %193 = load i32, i32* %39, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %39, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %39, align 4
  %197 = load i32, i32* %38, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %38, align 4
  %199 = load i32*, i32** %37, align 8
  %200 = load i32, i32* %39, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32* %202, i32** %37, align 8
  store i32 0, i32* %39, align 4
  br label %209

203:                                              ; preds = %80
  %204 = load i32*, i32** %37, align 8
  %205 = load i32, i32* %39, align 4
  %206 = call i32 @DO_GLYPH(i32* %204, i32 %205)
  %207 = load i32, i32* %39, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %39, align 4
  br label %209

209:                                              ; preds = %203, %195, %109
  br label %76

210:                                              ; preds = %76
  %211 = load i32, i32* %32, align 4
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32, i32* %30, align 4
  %215 = load i32, i32* %31, align 4
  %216 = load i32, i32* %32, align 4
  %217 = load i32, i32* %33, align 4
  %218 = call i32 @ui_invalidate(i32 %214, i32 %215, i32 %216, i32 %217)
  br label %225

219:                                              ; preds = %210
  %220 = load i32, i32* %26, align 4
  %221 = load i32, i32* %27, align 4
  %222 = load i32, i32* %28, align 4
  %223 = load i32, i32* %29, align 4
  %224 = call i32 @ui_invalidate(i32 %220, i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %219, %213
  ret void
}

declare dso_local i32 @bs_rect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cache_put_text(i32, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_3__* @cache_get_text(i32) #1

declare dso_local i32 @DO_GLYPH(i32*, i32) #1

declare dso_local i32 @ui_invalidate(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
