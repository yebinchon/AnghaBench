; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_parse_sval.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_parse_sval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@ut16 = common dso_local global i32 0, align 4
@st64 = common dso_local global i32 0, align 4
@st8 = common dso_local global i32 0, align 4
@st32 = common dso_local global i32 0, align 4
@ut32 = common dso_local global i32 0, align 4
@st16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"parse_sval: Skipping unsupported type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, i32)* @parse_sval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sval(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @ut16, align 4
  %28 = call i32 @READ2(i32 %21, i32 %22, i32 %25, i8* %26, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 134
  br i1 %32, label %33, label %48

33:                                               ; preds = %4
  %34 = call i8* @malloc(i32 4)
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %257

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @parse_sctring(i32* %40, i8* %41, i32* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  br label %256

48:                                               ; preds = %4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %250 [
    i32 129, label %52
    i32 132, label %80
    i32 134, label %108
    i32 133, label %136
    i32 130, label %165
    i32 131, label %194
    i32 128, label %222
  ]

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @st64, align 4
  %60 = call i32 @READ8(i32 %54, i32 %55, i32 %57, i8* %58, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %62 = load i8*, i8** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @parse_sctring(i32* %61, i8* %62, i32* %63, i32 %64)
  %66 = call i8* @malloc(i32 8)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %52
  br label %255

75:                                               ; preds = %52
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @memcpy(i32* %78, %struct.TYPE_11__* %11, i32 8)
  br label %255

80:                                               ; preds = %48
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @st64, align 4
  %88 = call i32 @READ8(i32 %82, i32 %83, i32 %85, i8* %86, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %90 = load i8*, i8** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @parse_sctring(i32* %89, i8* %90, i32* %91, i32 %92)
  %94 = call i8* @malloc(i32 8)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %80
  br label %255

103:                                              ; preds = %80
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @memcpy(i32* %106, %struct.TYPE_11__* %12, i32 8)
  br label %255

108:                                              ; preds = %48
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* @st8, align 4
  %116 = call i32 @READ1(i32 %110, i32 %111, i32 %113, i8* %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %118 = load i8*, i8** %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @parse_sctring(i32* %117, i8* %118, i32* %119, i32 %120)
  %122 = call i8* @malloc(i32 8)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %108
  br label %255

131:                                              ; preds = %108
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @memcpy(i32* %134, %struct.TYPE_11__* %13, i32 8)
  br label %255

136:                                              ; preds = %48
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 0, i32* %137, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %9, align 4
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* @st32, align 4
  %145 = call i32 @READ4(i32 %139, i32 %140, i32 %142, i8* %143, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %147 = load i8*, i8** %7, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @parse_sctring(i32* %146, i8* %147, i32* %148, i32 %149)
  %151 = call i8* @malloc(i32 8)
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %136
  br label %255

160:                                              ; preds = %136
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @memcpy(i32* %163, %struct.TYPE_11__* %14, i32 8)
  br label %255

165:                                              ; preds = %48
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 0, i32* %166, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* @ut32, align 4
  %174 = call i32 @READ4(i32 %168, i32 %169, i32 %171, i8* %172, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %176 = load i8*, i8** %7, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @parse_sctring(i32* %175, i8* %176, i32* %177, i32 %178)
  %180 = call i8* @malloc(i32 8)
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i32* %181, i32** %183, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %165
  br label %255

189:                                              ; preds = %165
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @memcpy(i32* %192, %struct.TYPE_11__* %15, i32 8)
  br label %255

194:                                              ; preds = %48
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %9, align 4
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = load i32, i32* @st16, align 4
  %202 = call i32 @READ2(i32 %196, i32 %197, i32 %199, i8* %200, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %204 = load i8*, i8** %7, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @parse_sctring(i32* %203, i8* %204, i32* %205, i32 %206)
  %208 = call i8* @malloc(i32 8)
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  store i32* %209, i32** %211, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %194
  br label %255

217:                                              ; preds = %194
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @memcpy(i32* %220, %struct.TYPE_11__* %16, i32 8)
  br label %255

222:                                              ; preds = %48
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %9, align 4
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i8*, i8** %7, align 8
  %229 = load i32, i32* @ut16, align 4
  %230 = call i32 @READ2(i32 %224, i32 %225, i32 %227, i8* %228, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %232 = load i8*, i8** %7, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @parse_sctring(i32* %231, i8* %232, i32* %233, i32 %234)
  %236 = call i8* @malloc(i32 8)
  %237 = bitcast i8* %236 to i32*
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  store i32* %237, i32** %239, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %222
  br label %255

245:                                              ; preds = %222
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @memcpy(i32* %248, %struct.TYPE_11__* %17, i32 8)
  br label %255

250:                                              ; preds = %48
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %253)
  store i32 0, i32* %5, align 4
  br label %257

255:                                              ; preds = %245, %244, %217, %216, %189, %188, %160, %159, %131, %130, %103, %102, %75, %74
  br label %256

256:                                              ; preds = %255, %39
  store i32 1, i32* %5, align 4
  br label %257

257:                                              ; preds = %256, %250, %38
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @READ2(i32, i32, i32, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @parse_sctring(i32*, i8*, i32*, i32) #1

declare dso_local i32 @READ8(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @READ1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @READ4(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
