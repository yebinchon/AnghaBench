; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Ppmd7.c_RestartModel.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Ppmd7.c_RestartModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__**, i64**, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i64, %struct.TYPE_8__*, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@UNIT_SIZE = common dso_local global i32 0, align 4
@PPMD_BIN_SCALE = common dso_local global i64 0, align 8
@kInitBinEsc = common dso_local global i32* null, align 8
@PPMD_PERIOD_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @RestartModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RestartModel(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 17
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 16
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 15
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 15
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 10
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 8
  %40 = load i32, i32* @UNIT_SIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = mul nsw i32 %41, 7
  %43 = load i32, i32* @UNIT_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %35, %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 14
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 9
  store i64 %46, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 13
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  br label %67

66:                                               ; preds = %1
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ 12, %66 ]
  %69 = sub nsw i32 0, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @UNIT_SIZE, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 10
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_8__*
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 11
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 256, i32* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 257, i32* %99, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_9__*
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 7
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %105, align 8
  %106 = call i64 @U2B(i32 128)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 7
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = call i32 @REF(%struct.TYPE_9__* %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 %114, i32* %118, align 8
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %137, %67
  %120 = load i32, i32* %3, align 4
  %121 = icmp ult i32 %120, 256
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %6, align 8
  %129 = load i32, i32* %3, align 4
  %130 = zext i32 %129 to i64
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = call i32 @SetSuccessor(%struct.TYPE_9__* %135, i32 0)
  br label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %3, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %119

140:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %187, %140
  %142 = load i32, i32* %3, align 4
  %143 = icmp ult i32 %142, 128
  br i1 %143, label %144, label %190

144:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %183, %144
  %146 = load i32, i32* %4, align 4
  %147 = icmp ult i32 %146, 8
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 6
  %151 = load i64**, i64*** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64*, i64** %151, i64 %153
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64* %158, i64** %7, align 8
  %159 = load i64, i64* @PPMD_BIN_SCALE, align 8
  %160 = load i32*, i32** @kInitBinEsc, align 8
  %161 = load i32, i32* %4, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %3, align 4
  %166 = add i32 %165, 2
  %167 = udiv i32 %164, %166
  %168 = zext i32 %167 to i64
  %169 = sub nsw i64 %159, %168
  store i64 %169, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %179, %148
  %171 = load i32, i32* %5, align 4
  %172 = icmp ult i32 %171, 64
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i64, i64* %8, align 8
  %175 = load i64*, i64** %7, align 8
  %176 = load i32, i32* %5, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  store i64 %174, i64* %178, align 8
  br label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %5, align 4
  %181 = add i32 %180, 8
  store i32 %181, i32* %5, align 4
  br label %170

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %4, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %145

186:                                              ; preds = %145
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %3, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %3, align 4
  br label %141

190:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %226, %190
  %192 = load i32, i32* %3, align 4
  %193 = icmp ult i32 %192, 25
  br i1 %193, label %194, label %229

194:                                              ; preds = %191
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %222, %194
  %196 = load i32, i32* %4, align 4
  %197 = icmp ult i32 %196, 16
  br i1 %197, label %198, label %225

198:                                              ; preds = %195
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %201, i64 %203
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 %207
  store %struct.TYPE_10__* %208, %struct.TYPE_10__** %9, align 8
  %209 = load i32, i32* %3, align 4
  %210 = mul i32 5, %209
  %211 = add i32 %210, 10
  %212 = load i32, i32* @PPMD_PERIOD_BITS, align 4
  %213 = sub nsw i32 %212, 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = shl i32 %211, %213
  %217 = zext i32 %216 to i64
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  store i32 4, i32* %221, align 4
  br label %222

222:                                              ; preds = %198
  %223 = load i32, i32* %4, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %195

225:                                              ; preds = %195
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %3, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %191

229:                                              ; preds = %191
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @U2B(i32) #1

declare dso_local i32 @REF(%struct.TYPE_9__*) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
