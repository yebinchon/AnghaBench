; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_mul.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32*, i32*, i64 }

@NUMERIC_POS = common dso_local global i32 0, align 4
@NUMERIC_NEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPESnumeric_mul(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i64 0, i64* %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @NUMERIC_POS, align 4
  store i32 %50, i32* %12, align 4
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @NUMERIC_NEG, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32, i32* %10, align 4
  %55 = call i32* @digitbuf_alloc(i32 %54)
  store i32* %55, i32** %8, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %248

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @memset(i32* %60, i32 0, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %14, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %126, %58
  %69 = load i32, i32* %15, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %129

71:                                               ; preds = %68
  store i64 0, i64* %17, align 8
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %14, align 4
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %116, %71
  %79 = load i32, i32* %16, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %93, %100
  %102 = add nsw i32 %86, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %17, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %17, align 8
  %106 = load i64, i64* %17, align 8
  %107 = srem i64 %106, 10
  %108 = trunc i64 %107 to i32
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %13, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i64, i64* %17, align 8
  %115 = sdiv i64 %114, 10
  store i64 %115, i64* %17, align 8
  br label %116

116:                                              ; preds = %81
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %16, align 4
  br label %78

119:                                              ; preds = %78
  %120 = load i64, i64* %17, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %15, align 4
  br label %68

129:                                              ; preds = %68
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %130, %131
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %129
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %176

140:                                              ; preds = %136
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 4
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 1, i32 0
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %17, align 8
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %156, %140
  %154 = load i64, i64* %17, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %17, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %17, align 8
  %165 = load i64, i64* %17, align 8
  %166 = srem i64 %165, 10
  %167 = trunc i64 %166 to i32
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %13, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load i64, i64* %17, align 8
  %174 = sdiv i64 %173, 10
  store i64 %174, i64* %17, align 8
  br label %153

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %175, %136, %129
  br label %177

177:                                              ; preds = %186, %176
  %178 = load i32, i32* %10, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 0
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i1 [ false, %177 ], [ %183, %180 ]
  br i1 %185, label %186, label %193

186:                                              ; preds = %184
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %9, align 8
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %10, align 4
  br label %177

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %207, %193
  %195 = load i32, i32* %10, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 0
  br label %205

205:                                              ; preds = %197, %194
  %206 = phi i1 [ false, %194 ], [ %204, %197 ]
  br i1 %206, label %207, label %210

207:                                              ; preds = %205
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %10, align 4
  br label %194

210:                                              ; preds = %205
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32, i32* @NUMERIC_POS, align 4
  store i32 %214, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %215

215:                                              ; preds = %213, %210
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @digitbuf_free(i32* %218)
  %220 = load i32*, i32** %8, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 5
  store i32* %220, i32** %222, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 4
  store i32* %223, i32** %225, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 6
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 6
  store i64 %245, i64* %247, align 8
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %215, %57
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32* @digitbuf_alloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @digitbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
