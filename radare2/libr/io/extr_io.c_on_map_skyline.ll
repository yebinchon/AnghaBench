; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/extr_io.c_on_map_skyline.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/extr_io.c_on_map_skyline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i64, i32*, i32, i32, i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)*, i32)* @on_map_skyline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @on_map_skyline(%struct.TYPE_12__* %0, i64 %1, i32* %2, i32 %3, i32 %4, i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)* %5, i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i32* %25, i32** %16, align 8
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %17, align 8
  store i32 1, i32* %19, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %7
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %33, %34
  br label %36

36:                                               ; preds = %29, %7
  %37 = phi i1 [ false, %7 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %16, align 8
  %43 = call i64 @r_pvector_len(i32* %42)
  store i64 %43, i64* %18, align 8
  br label %59

44:                                               ; preds = %36
  %45 = load i32*, i32** %16, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i32, i32* @CMP, align 4
  %49 = call i32 @r_pvector_lower_bound(i32* %45, i64 %46, i64 %47, i32 %48)
  %50 = load i64, i64* %18, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = call i64 @r_pvector_len(i32* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %20, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %58

58:                                               ; preds = %57, %54, %44
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %229, %89, %59
  %61 = load i64, i64* %18, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i64 @r_pvector_len(i32* %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %230

65:                                               ; preds = %60
  %66 = load i32*, i32** %16, align 8
  %67 = load i64, i64* %18, align 8
  %68 = call %struct.TYPE_14__* @r_pvector_at(i32* %66, i64 %67)
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %21, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @r_itv_end(i64 %72)
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %17, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %65
  %79 = load i64, i64* %18, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %18, align 8
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i64, i64* %18, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i64 @r_pvector_len(i32* %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %20, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %89

89:                                               ; preds = %88, %83, %78
  br label %60

90:                                               ; preds = %65
  %91 = load i64, i64* %17, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %90
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = sub nsw i64 %106, %107
  %109 = icmp sle i64 %102, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100, %97
  br label %230

111:                                              ; preds = %100
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %17, align 8
  br label %116

116:                                              ; preds = %111, %90
  %117 = load i64, i64* %10, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load i64, i64* %17, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @r_itv_end(i64 %126)
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %17, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i64 @R_MIN(i64 %122, i64 %130)
  store i64 %131, i64* %22, align 8
  %132 = load i64, i64* %22, align 8
  %133 = icmp slt i64 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %230

135:                                              ; preds = %116
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %150, label %145

145:                                              ; preds = %135
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %208

150:                                              ; preds = %145, %135
  %151 = load i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)*, i64 (%struct.TYPE_12__*, i32, i64, i32*, i64, %struct.TYPE_13__*, i32*)** %14, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %17, align 8
  %164 = add nsw i64 %162, %163
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %164, %170
  %172 = load i32*, i32** %11, align 8
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %10, align 8
  %175 = sub nsw i64 %173, %174
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i64, i64* %22, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = call i64 %151(%struct.TYPE_12__* %152, i32 %157, i64 %171, i32* %176, i64 %177, %struct.TYPE_13__* %180, i32* null)
  store i64 %181, i64* %23, align 8
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %150
  %185 = load i64, i64* %23, align 8
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i64, i64* %23, align 8
  store i64 %188, i64* %8, align 8
  br label %242

189:                                              ; preds = %184
  %190 = load i64, i64* %23, align 8
  %191 = load i64, i64* %17, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %17, align 8
  %193 = load i64, i64* %23, align 8
  %194 = load i64, i64* %22, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %230

197:                                              ; preds = %189
  br label %207

198:                                              ; preds = %150
  %199 = load i64, i64* %23, align 8
  %200 = load i64, i64* %22, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 0, i32* %19, align 4
  br label %203

203:                                              ; preds = %202, %198
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* %17, align 8
  %206 = add nsw i64 %205, %204
  store i64 %206, i64* %17, align 8
  br label %207

207:                                              ; preds = %203, %197
  br label %217

208:                                              ; preds = %145
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %230

212:                                              ; preds = %208
  %213 = load i64, i64* %22, align 8
  %214 = load i64, i64* %17, align 8
  %215 = add nsw i64 %214, %213
  store i64 %215, i64* %17, align 8
  store i32 0, i32* %19, align 4
  br label %216

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %207
  %218 = load i64, i64* %17, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = icmp eq i64 %218, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %230

225:                                              ; preds = %217
  %226 = load i64, i64* %17, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  store i64 0, i64* %18, align 8
  br label %229

229:                                              ; preds = %228, %225
  br label %60

230:                                              ; preds = %224, %211, %196, %134, %110, %60
  %231 = load i32, i32* %15, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i64, i64* %17, align 8
  %235 = load i64, i64* %10, align 8
  %236 = sub nsw i64 %234, %235
  br label %240

237:                                              ; preds = %230
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  br label %240

240:                                              ; preds = %237, %233
  %241 = phi i64 [ %236, %233 ], [ %239, %237 ]
  store i64 %241, i64* %8, align 8
  br label %242

242:                                              ; preds = %240, %187
  %243 = load i64, i64* %8, align 8
  ret i64 %243
}

declare dso_local i64 @r_pvector_len(i32*) #1

declare dso_local i32 @r_pvector_lower_bound(i32*, i64, i64, i32) #1

declare dso_local %struct.TYPE_14__* @r_pvector_at(i32*, i64) #1

declare dso_local i32 @r_itv_end(i64) #1

declare dso_local i64 @R_MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
