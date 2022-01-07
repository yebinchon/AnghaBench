; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_checkcondition_str.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_checkcondition_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }

@compareWordEntryPos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @checkcondition_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkcondition_str(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %8, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %77, %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = icmp ult %struct.TYPE_11__* %26, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = ptrtoint %struct.TYPE_11__* %31 to i64
  %34 = ptrtoint %struct.TYPE_11__* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 16
  %37 = sdiv i64 %36, 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %37
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %10, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tsCompareString(i64 %45, i32 %48, i64 %55, i32 %58, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %29
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = call i32 @checkclass_str(%struct.TYPE_14__* %63, %struct.TYPE_11__* %64, %struct.TYPE_12__* %65, %struct.TYPE_13__* %66)
  store i32 %67, i32* %12, align 4
  br label %78

68:                                               ; preds = %29
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 1
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %8, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %9, align 8
  br label %76

76:                                               ; preds = %74, %71
  br label %77

77:                                               ; preds = %76
  br label %25

78:                                               ; preds = %62, %25
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = icmp ne %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %228

84:                                               ; preds = %81, %78
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %228

89:                                               ; preds = %84
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = icmp uge %struct.TYPE_11__* %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %10, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %198, %95
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = icmp ne %struct.TYPE_13__* %100, null
  br i1 %101, label %102, label %131

102:                                              ; preds = %99, %96
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = icmp ult %struct.TYPE_11__* %103, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @tsCompareString(i64 %115, i32 %118, i64 %125, i32 %128, i32 1)
  %130 = icmp eq i32 %129, 0
  br label %131

131:                                              ; preds = %108, %102, %99
  %132 = phi i1 [ false, %102 ], [ false, %99 ], [ %130, %108 ]
  br i1 %132, label %133, label %201

133:                                              ; preds = %131
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = icmp ne %struct.TYPE_13__* %134, null
  br i1 %135, label %136, label %193

136:                                              ; preds = %133
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = call i32 @checkclass_str(%struct.TYPE_14__* %137, %struct.TYPE_11__* %138, %struct.TYPE_12__* %139, %struct.TYPE_13__* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %192

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %171, %144
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %146, %149
  %151 = load i32, i32* %15, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %145
  %154 = load i32, i32* %15, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  store i32 256, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 4, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32* @palloc(i32 %160)
  store i32* %161, i32** %13, align 8
  br label %171

162:                                              ; preds = %153
  %163 = load i32, i32* %15, align 4
  %164 = mul nsw i32 %163, 2
  store i32 %164, i32* %15, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 4, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32* @repalloc(i32* %165, i32 %169)
  store i32* %170, i32** %13, align 8
  br label %171

171:                                              ; preds = %162, %156
  br label %145

172:                                              ; preds = %145
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = mul i64 4, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memcpy(i32* %176, i32* %179, i32 %185)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %172, %136
  br label %198

193:                                              ; preds = %133
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = call i32 @checkclass_str(%struct.TYPE_14__* %194, %struct.TYPE_11__* %195, %struct.TYPE_12__* %196, %struct.TYPE_13__* null)
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %193, %192
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 1
  store %struct.TYPE_11__* %200, %struct.TYPE_11__** %10, align 8
  br label %96

201:                                              ; preds = %131
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %201
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = icmp ne %struct.TYPE_13__* %205, null
  br i1 %206, label %207, label %227

207:                                              ; preds = %204
  %208 = load i32*, i32** %13, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  store i32* %208, i32** %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @compareWordEntryPos, align 4
  %216 = call i32 @qsort(i32* %213, i32 %214, i32 4, i32 %215)
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* @compareWordEntryPos, align 4
  %222 = call i32 @qunique(i32* %219, i32 %220, i32 4, i32 %221)
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  store i32 1, i32* %226, align 4
  br label %227

227:                                              ; preds = %207, %204, %201
  br label %228

228:                                              ; preds = %227, %84, %81
  %229 = load i32, i32* %12, align 4
  ret i32 %229
}

declare dso_local i32 @tsCompareString(i64, i32, i64, i32, i32) #1

declare dso_local i32 @checkclass_str(%struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32* @repalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @qunique(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
