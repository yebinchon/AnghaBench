; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_misc.c_clear_color_buffer_with_masking.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_misc.c_clear_color_buffer_with_masking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*, i64, i64, i64, i32*, i32*)*, i32 (%struct.TYPE_18__*, i64, i64, i64, i32*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@ALPHABUF_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @clear_color_buffer_with_masking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_color_buffer_with_masking(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %42, %47
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %5, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %54, %59
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %73

62:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %5, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %62, %27
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %193

80:                                               ; preds = %73
  %81 = load i32, i32* @MAX_WIDTH, align 4
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %7, align 8
  %84 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %8, align 8
  %85 = load i32, i32* @MAX_WIDTH, align 4
  %86 = zext i32 %85 to i64
  %87 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %9, align 8
  %88 = load i32, i32* @MAX_WIDTH, align 4
  %89 = zext i32 %88 to i64
  %90 = alloca i32, i64 %89, align 16
  store i64 %89, i64* %10, align 8
  %91 = load i32, i32* @MAX_WIDTH, align 4
  %92 = zext i32 %91 to i64
  %93 = alloca i32, i64 %92, align 16
  store i64 %92, i64* %11, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %99, %104
  store i32 %105, i32* %12, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %111, %116
  store i32 %117, i32* %13, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %123, %128
  store i32 %129, i32* %14, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %135, %140
  store i32 %141, i32* %15, align 4
  store i64 0, i64* %16, align 8
  br label %142

142:                                              ; preds = %186, %80
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %5, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %191

146:                                              ; preds = %142
  %147 = load i32, i32* %12, align 4
  %148 = load i64, i64* %6, align 8
  %149 = call i32 @MEMSET(i32* %84, i32 %147, i64 %148)
  %150 = load i32, i32* %13, align 4
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @MEMSET(i32* %87, i32 %150, i64 %151)
  %153 = load i32, i32* %14, align 4
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @MEMSET(i32* %90, i32 %153, i64 %154)
  %156 = load i32, i32* %15, align 4
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @MEMSET(i32* %93, i32 %156, i64 %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %3, align 8
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @gl_mask_color_span(%struct.TYPE_18__* %159, i64 %160, i64 %161, i64 %162, i32* %84, i32* %87, i32* %90, i32* %93)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32 (%struct.TYPE_18__*, i64, i64, i64, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i64, i64, i64, i32*, i32*, i32*, i32*, i32*)** %166, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* %4, align 8
  %172 = call i32 %167(%struct.TYPE_18__* %168, i64 %169, i64 %170, i64 %171, i32* %84, i32* %87, i32* %90, i32* %93, i32* null)
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ALPHABUF_BIT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %146
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %3, align 8
  %183 = load i64, i64* %4, align 8
  %184 = call i32 @gl_write_alpha_span(%struct.TYPE_18__* %180, i64 %181, i64 %182, i64 %183, i32* %93, i32* null)
  br label %185

185:                                              ; preds = %179, %146
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %16, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %16, align 8
  %189 = load i64, i64* %4, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %4, align 8
  br label %142

191:                                              ; preds = %142
  %192 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %192)
  br label %244

193:                                              ; preds = %73
  %194 = load i32, i32* @MAX_WIDTH, align 4
  %195 = zext i32 %194 to i64
  %196 = call i8* @llvm.stacksave()
  store i8* %196, i8** %17, align 8
  %197 = alloca i32, i64 %195, align 16
  store i64 %195, i64* %18, align 8
  %198 = load i32, i32* @MAX_WIDTH, align 4
  %199 = zext i32 %198 to i64
  %200 = alloca i32, i64 %199, align 16
  store i64 %199, i64* %19, align 8
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @MEMSET(i32* %200, i32 1, i64 %201)
  store i64 0, i64* %20, align 8
  br label %203

203:                                              ; preds = %237, %193
  %204 = load i64, i64* %20, align 8
  %205 = load i64, i64* %5, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %207, label %242

207:                                              ; preds = %203
  store i64 0, i64* %21, align 8
  br label %208

208:                                              ; preds = %219, %207
  %209 = load i64, i64* %21, align 8
  %210 = load i64, i64* %6, align 8
  %211 = icmp slt i64 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i64, i64* %21, align 8
  %218 = getelementptr inbounds i32, i32* %197, i64 %217
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %212
  %220 = load i64, i64* %21, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %21, align 8
  br label %208

222:                                              ; preds = %208
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %224 = load i64, i64* %6, align 8
  %225 = load i64, i64* %3, align 8
  %226 = load i64, i64* %4, align 8
  %227 = call i32 @gl_mask_index_span(%struct.TYPE_18__* %223, i64 %224, i64 %225, i64 %226, i32* %197)
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i32 (%struct.TYPE_18__*, i64, i64, i64, i32*, i32*)*, i32 (%struct.TYPE_18__*, i64, i64, i64, i32*, i32*)** %230, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %233 = load i64, i64* %6, align 8
  %234 = load i64, i64* %3, align 8
  %235 = load i64, i64* %4, align 8
  %236 = call i32 %231(%struct.TYPE_18__* %232, i64 %233, i64 %234, i64 %235, i32* %197, i32* %200)
  br label %237

237:                                              ; preds = %222
  %238 = load i64, i64* %20, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %20, align 8
  %240 = load i64, i64* %4, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %4, align 8
  br label %203

242:                                              ; preds = %203
  %243 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %243)
  br label %244

244:                                              ; preds = %242, %191
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i32*, i32, i64) #2

declare dso_local i32 @gl_mask_color_span(%struct.TYPE_18__*, i64, i64, i64, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_write_alpha_span(%struct.TYPE_18__*, i64, i64, i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @gl_mask_index_span(%struct.TYPE_18__*, i64, i64, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
