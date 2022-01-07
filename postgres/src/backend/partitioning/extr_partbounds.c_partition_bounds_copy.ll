; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_partition_bounds_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_partition_bounds_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, i32*, i32, i32, i32**, i32 }
%struct.TYPE_7__ = type { i32, i64, i32*, i32* }

@PARTITION_STRATEGY_LIST = common dso_local global i64 0, align 8
@PARTITION_STRATEGY_HASH = common dso_local global i64 0, align 8
@PARTITION_RANGE_DATUM_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @partition_bounds_copy(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %15 = call i64 @palloc(i32 4)
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 %24, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = call i32 @get_partition_bound_num_indexes(%struct.TYPE_8__* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PARTITION_STRATEGY_LIST, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 1
  br label %40

40:                                               ; preds = %37, %2
  %41 = phi i1 [ true, %2 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @palloc(i32 %47)
  %49 = inttoptr i64 %48 to i32**
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  store i32** %49, i32*** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %107

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @palloc(i32 %60)
  %62 = inttoptr i64 %61 to i32**
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32** %62, i32*** %64, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %103, %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i64 @palloc(i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  store i32* %75, i32** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(i32* %88, i32* %95, i32 %101)
  br label %103

103:                                              ; preds = %69
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %65

106:                                              ; preds = %65
  br label %110

107:                                              ; preds = %40
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32** null, i32*** %109, align 8
  br label %110

110:                                              ; preds = %107, %106
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %214, %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %217

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PARTITION_STRATEGY_HASH, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %127

125:                                              ; preds = %115
  %126 = load i32, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %124
  %128 = phi i32 [ 2, %124 ], [ %126, %125 ]
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 4, %130
  %132 = trunc i64 %131 to i32
  %133 = call i64 @palloc(i32 %132)
  %134 = inttoptr i64 %133 to i32*
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  store i32* %134, i32** %140, align 8
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %210, %127
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %213

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 4, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %164

149:                                              ; preds = %145
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %13, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %149, %148
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32**, i32*** %166, align 8
  %168 = icmp eq i32** %167, null
  br i1 %168, label %184, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* @PARTITION_RANGE_DATUM_VALUE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %209

184:                                              ; preds = %169, %164
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @datumCopy(i32 %195, i32 %196, i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 5
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %198, i32* %208, align 4
  br label %209

209:                                              ; preds = %184, %169
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %141

213:                                              ; preds = %141
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %111

217:                                              ; preds = %111
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 4, %219
  %221 = trunc i64 %220 to i32
  %222 = call i64 @palloc(i32 %221)
  %223 = inttoptr i64 %222 to i32*
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  store i32* %223, i32** %225, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 4, %233
  %235 = trunc i64 %234 to i32
  %236 = call i32 @memcpy(i32* %228, i32* %231, i32 %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 4
  store i32 %239, i32* %241, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %247
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @get_partition_bound_num_indexes(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
