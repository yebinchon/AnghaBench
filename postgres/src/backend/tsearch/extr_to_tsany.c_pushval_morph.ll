; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_to_tsany.c_pushval_morph.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_to_tsany.c_pushval_morph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@TSL_PREFIX = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32, i32, i32)* @pushval_morph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushval_morph(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @DatumGetPointer(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 40, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @palloc(i32 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_9__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @parsetext(i32 %37, %struct.TYPE_10__* %14, i8* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %226

44:                                               ; preds = %6
  br label %45

45:                                               ; preds = %219, %44
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %222

50:                                               ; preds = %45
  %51 = load i64, i64* %16, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %50
  %54 = load i64, i64* %16, align 8
  %55 = add nsw i64 %54, 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %55, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %67, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @pushStop(i32 %77)
  %79 = load i64, i64* %18, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pushOperator(i32 %82, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i64, i64* %18, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %16, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %53, %50
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %101

101:                                              ; preds = %207, %93
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i64, i64* %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %107, %114
  br label %116

116:                                              ; preds = %106, %101
  %117 = phi i1 [ false, %101 ], [ %115, %106 ]
  br i1 %117, label %118, label %210

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %15, align 8
  store i64 0, i64* %19, align 8
  br label %125

125:                                              ; preds = %195, %118
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %131, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %130
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %141, %147
  br label %149

149:                                              ; preds = %140, %130, %125
  %150 = phi i1 [ false, %130 ], [ false, %125 ], [ %148, %140 ]
  br i1 %150, label %151, label %200

151:                                              ; preds = %149
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TSL_PREFIX, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %151
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %175, %151
  %179 = phi i1 [ true, %151 ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @pushValue(i32 %152, %struct.TYPE_9__* %158, i32 %164, i32 %165, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = call i32 @pfree(%struct.TYPE_9__* %187)
  %189 = load i64, i64* %19, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %178
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @OP_AND, align 4
  %194 = call i32 @pushOperator(i32 %192, i32 %193, i32 0)
  br label %195

195:                                              ; preds = %191, %178
  %196 = load i64, i64* %19, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %19, align 8
  %198 = load i64, i64* %13, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %13, align 8
  br label %125

200:                                              ; preds = %149
  %201 = load i64, i64* %17, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @OP_OR, align 4
  %206 = call i32 @pushOperator(i32 %204, i32 %205, i32 0)
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i64, i64* %17, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %17, align 8
  br label %101

210:                                              ; preds = %116
  %211 = load i64, i64* %18, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32, i32* %8, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @pushOperator(i32 %214, i32 %217, i32 1)
  br label %219

219:                                              ; preds = %213, %210
  %220 = load i64, i64* %18, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %18, align 8
  br label %45

222:                                              ; preds = %45
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = call i32 @pfree(%struct.TYPE_9__* %224)
  br label %229

226:                                              ; preds = %6
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @pushStop(i32 %227)
  br label %229

229:                                              ; preds = %226, %222
  ret void
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @parsetext(i32, %struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @pushStop(i32) #1

declare dso_local i32 @pushOperator(i32, i32, i32) #1

declare dso_local i32 @pushValue(i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
