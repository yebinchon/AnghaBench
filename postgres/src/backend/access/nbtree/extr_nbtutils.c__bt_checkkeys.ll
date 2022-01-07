; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_checkkeys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_checkkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@SK_ROW_HEADER = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@SK_BT_REQFWD = common dso_local global i32 0, align 4
@SK_BT_REQBKWD = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_checkkeys(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BTreeTupleGetNAtts(i32 %20, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32*, i32** %11, align 8
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @RelationGetDescr(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %13, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %16, align 8
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %226, %5
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %231

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ScanDirectionIsForward(i32 %55)
  %57 = call i32 @Assert(i32 %56)
  br label %226

58:                                               ; preds = %48
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SK_ROW_HEADER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i64 @_bt_check_rowcompare(%struct.TYPE_6__* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %226

75:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %232

76:                                               ; preds = %58
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @index_getattr(i32 %77, i32 %80, i32 %81, i32* %18)
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SK_ISNULL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %140

89:                                               ; preds = %76
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SK_SEARCHNULL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %226

100:                                              ; preds = %96
  br label %112

101:                                              ; preds = %89
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @Assert(i32 %106)
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %226

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SK_BT_REQFWD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ScanDirectionIsForward(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32*, i32** %11, align 8
  store i32 0, i32* %124, align 4
  br label %139

125:                                              ; preds = %119, %112
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SK_BT_REQBKWD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @ScanDirectionIsBackward(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32*, i32** %11, align 8
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %136, %132, %125
  br label %139

139:                                              ; preds = %138, %123
  store i32 0, i32* %6, align 4
  br label %232

140:                                              ; preds = %76
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %183

143:                                              ; preds = %140
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %143
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @SK_BT_REQFWD, align 4
  %155 = load i32, i32* @SK_BT_REQBKWD, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %153, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %150
  %160 = load i32, i32* %10, align 4
  %161 = call i64 @ScanDirectionIsBackward(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32*, i32** %11, align 8
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %163, %159, %150
  br label %182

166:                                              ; preds = %143
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SK_BT_REQFWD, align 4
  %171 = load i32, i32* @SK_BT_REQBKWD, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %166
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @ScanDirectionIsForward(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32*, i32** %11, align 8
  store i32 0, i32* %180, align 4
  br label %181

181:                                              ; preds = %179, %175, %166
  br label %182

182:                                              ; preds = %181, %165
  store i32 0, i32* %6, align 4
  br label %232

183:                                              ; preds = %140
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @FunctionCall2Coll(i32* %185, i32 %188, i32 %189, i32 %192)
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = call i32 @DatumGetBool(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %225, label %197

197:                                              ; preds = %183
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @SK_BT_REQFWD, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @ScanDirectionIsForward(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32*, i32** %11, align 8
  store i32 0, i32* %209, align 4
  br label %224

210:                                              ; preds = %204, %197
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @SK_BT_REQBKWD, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %210
  %218 = load i32, i32* %10, align 4
  %219 = call i64 @ScanDirectionIsBackward(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32*, i32** %11, align 8
  store i32 0, i32* %222, align 4
  br label %223

223:                                              ; preds = %221, %217, %210
  br label %224

224:                                              ; preds = %223, %208
  store i32 0, i32* %6, align 4
  br label %232

225:                                              ; preds = %183
  br label %226

226:                                              ; preds = %225, %110, %99, %74, %54
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 1
  store %struct.TYPE_6__* %228, %struct.TYPE_6__** %16, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %44

231:                                              ; preds = %44
  store i32 1, i32* %6, align 4
  br label %232

232:                                              ; preds = %231, %224, %182, %139, %75
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BTreeTupleGetNAtts(i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ScanDirectionIsForward(i32) #1

declare dso_local i64 @_bt_check_rowcompare(%struct.TYPE_6__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @index_getattr(i32, i32, i32, i32*) #1

declare dso_local i64 @ScanDirectionIsBackward(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
