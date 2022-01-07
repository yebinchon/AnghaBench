; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_partition_bounds_equal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_partition_bounds_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i64*, i64**, i64** }

@PARTITION_STRATEGY_HASH = common dso_local global i64 0, align 8
@PARTITION_RANGE_DATUM_VALUE = common dso_local global i64 0, align 8
@PARTITION_STRATEGY_RANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition_bounds_equal(i32 %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %235

23:                                               ; preds = %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %235

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %235

41:                                               ; preds = %32
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %235

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PARTITION_STRATEGY_HASH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = call i32 @get_hash_partition_greatest_modulus(%struct.TYPE_5__* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = call i32 @get_hash_partition_greatest_modulus(%struct.TYPE_5__* %60)
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %235

64:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %235

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %65

90:                                               ; preds = %65
  br label %234

91:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %207, %91
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %210

98:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %186, %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %189

103:                                              ; preds = %99
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = load i64**, i64*** %105, align 8
  %107 = icmp ne i64** %106, null
  br i1 %107, label %108, label %149

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 6
  %111 = load i64**, i64*** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64*, i64** %111, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  %122 = load i64**, i64*** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64*, i64** %122, i64 %124
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %119, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %235

133:                                              ; preds = %108
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 6
  %136 = load i64**, i64*** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64*, i64** %136, i64 %138
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PARTITION_RANGE_DATUM_VALUE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  br label %186

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148, %103
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 5
  %152 = load i64**, i64*** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64*, i64** %152, i64 %154
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load i64**, i64*** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64*, i64** %163, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @datumIsEqual(i64 %160, i64 %171, i32 %176, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %149
  store i32 0, i32* %6, align 4
  br label %235

185:                                              ; preds = %149
  br label %186

186:                                              ; preds = %185, %147
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %99

189:                                              ; preds = %99
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 4
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 4
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %196, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %235

206:                                              ; preds = %189
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %92

210:                                              ; preds = %92
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @PARTITION_STRATEGY_RANGE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %233

216:                                              ; preds = %210
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 4
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %223, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %216
  store i32 0, i32* %6, align 4
  br label %235

233:                                              ; preds = %216, %210
  br label %234

234:                                              ; preds = %233, %90
  store i32 1, i32* %6, align 4
  br label %235

235:                                              ; preds = %234, %232, %205, %184, %132, %85, %63, %49, %40, %31, %22
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local i32 @get_hash_partition_greatest_modulus(%struct.TYPE_5__*) #1

declare dso_local i32 @datumIsEqual(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
