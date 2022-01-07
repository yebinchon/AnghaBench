; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execExpr.c_ExecComputeSlotInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execExpr.c_ExecComputeSlotInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32*, i32*, i32*, i64, i32, i32*, i64, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32*, i32* }

@EEOP_INNER_FETCHSOME = common dso_local global i64 0, align 8
@EEOP_OUTER_FETCHSOME = common dso_local global i64 0, align 8
@EEOP_SCAN_FETCHSOME = common dso_local global i64 0, align 8
@TTSOpsVirtual = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* @ExecComputeSlotInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecComputeSlotInfo(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @EEOP_INNER_FETCHSOME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @EEOP_OUTER_FETCHSOME, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @EEOP_SCAN_FETCHSOME, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22, %2
  %31 = phi i1 [ true, %22 ], [ true, %2 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %7, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %8, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %183

58:                                               ; preds = %30
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = icmp ne %struct.TYPE_16__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %182

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @EEOP_INNER_FETCHSOME, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = call %struct.TYPE_16__* @innerPlanState(%struct.TYPE_16__* %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %11, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %105

79:                                               ; preds = %73, %66
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  store i32 1, i32* %9, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %8, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = call i32* @ExecGetResultType(%struct.TYPE_16__* %93)
  store i32* %94, i32** %7, align 8
  br label %104

95:                                               ; preds = %84, %79
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %97 = icmp ne %struct.TYPE_16__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = call i32* @ExecGetResultSlotOps(%struct.TYPE_16__* %99, i32* %9)
  store i32* %100, i32** %8, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %102 = call i32* @ExecGetResultType(%struct.TYPE_16__* %101)
  store i32* %102, i32** %7, align 8
  br label %103

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %103, %89
  br label %105

105:                                              ; preds = %104, %78
  br label %181

106:                                              ; preds = %62
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @EEOP_OUTER_FETCHSOME, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %106
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = call %struct.TYPE_16__* @outerPlanState(%struct.TYPE_16__* %111)
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %12, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %149

123:                                              ; preds = %117, %110
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  store i32 1, i32* %9, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %8, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %138 = call i32* @ExecGetResultType(%struct.TYPE_16__* %137)
  store i32* %138, i32** %7, align 8
  br label %148

139:                                              ; preds = %128, %123
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %141 = icmp ne %struct.TYPE_16__* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %144 = call i32* @ExecGetResultSlotOps(%struct.TYPE_16__* %143, i32* %9)
  store i32* %144, i32** %8, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %146 = call i32* @ExecGetResultType(%struct.TYPE_16__* %145)
  store i32* %146, i32** %7, align 8
  br label %147

147:                                              ; preds = %142, %139
  br label %148

148:                                              ; preds = %147, %133
  br label %149

149:                                              ; preds = %148, %122
  br label %180

150:                                              ; preds = %106
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @EEOP_SCAN_FETCHSOME, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %150
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %7, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = icmp ne %struct.TYPE_16__* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %154
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %8, align 8
  br label %169

169:                                              ; preds = %165, %160, %154
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178, %150
  br label %180

180:                                              ; preds = %179, %149
  br label %181

181:                                              ; preds = %180, %105
  br label %182

182:                                              ; preds = %181, %61
  br label %183

183:                                              ; preds = %182, %40
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %183
  %187 = load i32*, i32** %7, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load i32*, i32** %8, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  store i32* %197, i32** %201, align 8
  %202 = load i32*, i32** %7, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  store i32* %202, i32** %206, align 8
  br label %220

207:                                              ; preds = %189, %186, %183
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  store i32* null, i32** %215, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %207, %192
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, @TTSOpsVirtual
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  store i32 0, i32* %3, align 4
  br label %236

235:                                              ; preds = %227, %220
  store i32 1, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %234
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_16__* @innerPlanState(%struct.TYPE_16__*) #1

declare dso_local i32* @ExecGetResultType(%struct.TYPE_16__*) #1

declare dso_local i32* @ExecGetResultSlotOps(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_16__* @outerPlanState(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
