; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_canvas.c___expandLine.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_canvas.c___expandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @__expandLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__expandLine(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %270

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = call i32 @__getUtf8Length2(i8* %33, i32 %34, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @R_MAX(i32 0, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %269

59:                                               ; preds = %20
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %160

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %72, %80
  br i1 %81, label %82, label %160

82:                                               ; preds = %62
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sitofp i32 %90 to double
  %92 = fmul double %91, 1.500000e+00
  %93 = fptosi double %92 to i32
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @R_MAX(i32 %93, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 1, %114
  %116 = trunc i64 %115 to i32
  %117 = call i8* @realloc(i8* %112, i32 %116)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %270

121:                                              ; preds = %82
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %122, i64 %131
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %133, %141
  %143 = call i32 @memset(i8* %132, i32 0, i32 %142)
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  store i8* %144, i8** %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %152, i32* %159, align 4
  br label %160

160:                                              ; preds = %121, %62, %59
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @R_MAX(i32 %174, i32 0)
  store i32 %175, i32* %13, align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i8**, i8*** %177, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i8*, i8** %178, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8* %191, i8** %14, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i8* @malloc(i32 %192)
  store i8* %193, i8** %15, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %270

197:                                              ; preds = %160
  %198 = load i8*, i8** %15, align 8
  %199 = load i8*, i8** %14, align 8
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @memcpy(i8* %198, i8* %199, i32 %200)
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %249

204:                                              ; preds = %197
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i8*, i8** %207, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = ptrtoint i8* %212 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = trunc i64 %219 to i32
  %221 = call i32 @R_MAX(i32 0, i32 %220)
  store i32 %221, i32* %16, align 4
  %222 = load i8*, i8** %14, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8*, i8** %15, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %16, align 4
  %235 = sub nsw i32 %233, %234
  %236 = call i32 @memcpy(i8* %228, i8* %232, i32 %235)
  %237 = load i8*, i8** %15, align 8
  %238 = call i32 @free(i8* %237)
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, %239
  store i32 %248, i32* %246, align 4
  store i32 1, i32* %4, align 4
  br label %270

249:                                              ; preds = %197
  %250 = load i8*, i8** %14, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8*, i8** %15, align 8
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @memcpy(i8* %253, i8* %254, i32 %255)
  %257 = load i8*, i8** %15, align 8
  %258 = call i32 @free(i8* %257)
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %259
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %249, %20
  store i32 1, i32* %4, align 4
  br label %270

270:                                              ; preds = %269, %204, %196, %120, %19
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local i32 @__getUtf8Length2(i8*, i32, i32) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
