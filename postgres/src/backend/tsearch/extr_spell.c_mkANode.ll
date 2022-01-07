; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_mkANode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_mkANode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }

@ANHRDSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_11__*, i32, i32, i32, i32)* @mkANode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @mkANode(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %64, %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %26
  %38 = load i8, i8* %14, align 1
  %39 = sext i8 %38 to i32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call signext i8 @GETCHAR(%struct.TYPE_14__* %45, i32 %46, i32 %47)
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %39, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call signext i8 @GETCHAR(%struct.TYPE_14__* %59, i32 %60, i32 %61)
  store i8 %62, i8* %14, align 1
  br label %63

63:                                               ; preds = %51, %37, %26
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %22

67:                                               ; preds = %22
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %251

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = call i64 @tmpalloc(i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_14__**
  store %struct.TYPE_14__** %80, %struct.TYPE_14__*** %19, align 8
  store i32 0, i32* %18, align 4
  %81 = load i64, i64* @ANHRDSZ, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 24
  %85 = add i64 %81, %84
  %86 = call i64 @cpalloc0(i64 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %15, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %16, align 8
  store i8 0, i8* %14, align 1
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %211, %71
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %214

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %210

110:                                              ; preds = %99
  %111 = load i8, i8* %14, align 1
  %112 = sext i8 %111 to i32
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %117
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call signext i8 @GETCHAR(%struct.TYPE_14__* %118, i32 %119, i32 %120)
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %112, %122
  br i1 %123, label %124, label %174

124:                                              ; preds = %110
  %125 = load i8, i8* %14, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %124
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* %11, align 4
  %134 = call %struct.TYPE_13__* @mkANode(%struct.TYPE_11__* %128, i32 %129, i32 %130, i32 %132, i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %136, align 8
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %127
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 8, %144
  %146 = trunc i64 %145 to i32
  %147 = call i64 @cpalloc(i32 %146)
  %148 = inttoptr i64 %147 to %struct.TYPE_14__**
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  store %struct.TYPE_14__** %148, %struct.TYPE_14__*** %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %152, align 8
  %154 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 8, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @memcpy(%struct.TYPE_14__** %153, %struct.TYPE_14__** %154, i32 %158)
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %139, %127
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 1
  store %struct.TYPE_12__* %162, %struct.TYPE_12__** %16, align 8
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %160, %124
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call signext i8 @GETCHAR(%struct.TYPE_14__* %170, i32 %171, i32 %172)
  store i8 %173, i8* %14, align 1
  br label %174

174:                                              ; preds = %164, %110
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 %179
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call signext i8 @GETCHAR(%struct.TYPE_14__* %180, i32 %181, i32 %182)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i8 %183, i8* %185, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %174
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i64 %202
  %204 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %205 = load i32, i32* %18, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %18, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %204, i64 %207
  store %struct.TYPE_14__* %203, %struct.TYPE_14__** %208, align 8
  br label %209

209:                                              ; preds = %197, %174
  br label %210

210:                                              ; preds = %209, %99
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %95

214:                                              ; preds = %95
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  %220 = load i32, i32* %11, align 4
  %221 = call %struct.TYPE_13__* @mkANode(%struct.TYPE_11__* %215, i32 %216, i32 %217, i32 %219, i32 %220)
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  store %struct.TYPE_13__* %221, %struct.TYPE_13__** %223, align 8
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %247

226:                                              ; preds = %214
  %227 = load i32, i32* %18, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 8, %231
  %233 = trunc i64 %232 to i32
  %234 = call i64 @cpalloc(i32 %233)
  %235 = inttoptr i64 %234 to %struct.TYPE_14__**
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 2
  store %struct.TYPE_14__** %235, %struct.TYPE_14__*** %237, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %239, align 8
  %241 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 8, %243
  %245 = trunc i64 %244 to i32
  %246 = call i32 @memcpy(%struct.TYPE_14__** %240, %struct.TYPE_14__** %241, i32 %245)
  store i32 0, i32* %18, align 4
  br label %247

247:                                              ; preds = %226, %214
  %248 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %249 = call i32 @pfree(%struct.TYPE_14__** %248)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %250, %struct.TYPE_13__** %6, align 8
  br label %251

251:                                              ; preds = %247, %70
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %252
}

declare dso_local signext i8 @GETCHAR(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @tmpalloc(i32) #1

declare dso_local i64 @cpalloc0(i64) #1

declare dso_local i64 @cpalloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__**, %struct.TYPE_14__**, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
