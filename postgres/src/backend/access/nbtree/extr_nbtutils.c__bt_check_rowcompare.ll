; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_check_rowcompare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_check_rowcompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@SK_ROW_MEMBER = common dso_local global i32 0, align 4
@SK_ROW_END = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@SK_BT_REQFWD = common dso_local global i32 0, align 4
@SK_BT_REQBKWD = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_BT_DESC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized RowCompareType: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32, i32*)* @_bt_check_rowcompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_check_rowcompare(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @DatumGetPointer(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %14, align 8
  store i64 0, i64* %15, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  br label %33

33:                                               ; preds = %187, %56, %6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SK_ROW_MEMBER, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ScanDirectionIsForward(i32 %46)
  %48 = call i32 @Assert(i32 %47)
  store i64 0, i64* %15, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SK_ROW_END, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %190

56:                                               ; preds = %45
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 1
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %14, align 8
  br label %33

59:                                               ; preds = %33
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @index_getattr(i32 %60, i32 %63, i32 %64, i32* %18)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %59
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SK_BT_REQFWD, align 4
  %80 = load i32, i32* @SK_BT_REQBKWD, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @ScanDirectionIsBackward(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32*, i32** %13, align 8
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %84, %75
  br label %107

91:                                               ; preds = %68
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SK_BT_REQFWD, align 4
  %96 = load i32, i32* @SK_BT_REQBKWD, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ScanDirectionIsForward(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32*, i32** %13, align 8
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %104, %100, %91
  br label %107

107:                                              ; preds = %106, %90
  store i32 0, i32* %7, align 4
  br label %249

108:                                              ; preds = %59
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SK_ISNULL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %108
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @DatumGetPointer(i32 %119)
  %121 = inttoptr i64 %120 to %struct.TYPE_3__*
  %122 = icmp ne %struct.TYPE_3__* %116, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 -1
  store %struct.TYPE_3__* %125, %struct.TYPE_3__** %14, align 8
  br label %126

126:                                              ; preds = %123, %115
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SK_BT_REQFWD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @ScanDirectionIsForward(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32*, i32** %13, align 8
  store i32 0, i32* %138, align 4
  br label %153

139:                                              ; preds = %133, %126
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SK_BT_REQBKWD, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* %12, align 4
  %148 = call i64 @ScanDirectionIsBackward(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32*, i32** %13, align 8
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %150, %146, %139
  br label %153

153:                                              ; preds = %152, %137
  store i32 0, i32* %7, align 4
  br label %249

154:                                              ; preds = %108
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @FunctionCall2Coll(i32* %156, i32 %159, i32 %160, i32 %163)
  %165 = call i64 @DatumGetInt32(i32 %164)
  store i64 %165, i64* %15, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SK_BT_DESC, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %154
  %173 = load i64, i64* %15, align 8
  %174 = call i32 @INVERT_COMPARE_RESULT(i64 %173)
  br label %175

175:                                              ; preds = %172, %154
  %176 = load i64, i64* %15, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %190

179:                                              ; preds = %175
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SK_ROW_END, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %190

187:                                              ; preds = %179
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 1
  store %struct.TYPE_3__* %189, %struct.TYPE_3__** %14, align 8
  br label %33

190:                                              ; preds = %186, %178, %55
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  switch i32 %193, label %210 [
    i32 128, label %194
    i32 129, label %198
    i32 131, label %202
    i32 130, label %206
  ]

194:                                              ; preds = %190
  %195 = load i64, i64* %15, align 8
  %196 = icmp slt i64 %195, 0
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %16, align 4
  br label %216

198:                                              ; preds = %190
  %199 = load i64, i64* %15, align 8
  %200 = icmp sle i64 %199, 0
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %16, align 4
  br label %216

202:                                              ; preds = %190
  %203 = load i64, i64* %15, align 8
  %204 = icmp sge i64 %203, 0
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %16, align 4
  br label %216

206:                                              ; preds = %190
  %207 = load i64, i64* %15, align 8
  %208 = icmp sgt i64 %207, 0
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %16, align 4
  br label %216

210:                                              ; preds = %190
  %211 = load i32, i32* @ERROR, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @elog(i32 %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %214)
  store i32 0, i32* %16, align 4
  br label %216

216:                                              ; preds = %210, %206, %202, %198, %194
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %247, label %219

219:                                              ; preds = %216
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SK_BT_REQFWD, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @ScanDirectionIsForward(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i32*, i32** %13, align 8
  store i32 0, i32* %231, align 4
  br label %246

232:                                              ; preds = %226, %219
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @SK_BT_REQBKWD, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  %240 = load i32, i32* %12, align 4
  %241 = call i64 @ScanDirectionIsBackward(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32*, i32** %13, align 8
  store i32 0, i32* %244, align 4
  br label %245

245:                                              ; preds = %243, %239, %232
  br label %246

246:                                              ; preds = %245, %230
  br label %247

247:                                              ; preds = %246, %216
  %248 = load i32, i32* %16, align 4
  store i32 %248, i32* %7, align 4
  br label %249

249:                                              ; preds = %247, %153, %107
  %250 = load i32, i32* %7, align 4
  ret i32 %250
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @index_getattr(i32, i32, i32, i32*) #1

declare dso_local i64 @ScanDirectionIsBackward(i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @INVERT_COMPARE_RESULT(i64) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
