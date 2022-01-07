; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_compare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@SK_ISNULL = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@SK_BT_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_compare(i32 %0, %struct.TYPE_5__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @RelationGetDescr(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @PageGetSpecialPointer(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @_bt_check_natts(i32 %25, i64 %28, i32 %29, i64 %30)
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %36)
  %38 = icmp sle i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br label %50

50:                                               ; preds = %45, %4
  %51 = phi i1 [ true, %4 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @P_ISLEAF(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @P_FIRSTDATAKEY(i32 %59)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %232

63:                                               ; preds = %57, %50
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @PageGetItemId(i32 %65, i64 %66)
  %68 = call i64 @PageGetItem(i32 %64, i32 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BTreeTupleGetNAtts(i64 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @Min(i32 %72, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br label %87

87:                                               ; preds = %81, %63
  %88 = phi i1 [ true, %63 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %14, align 8
  store i32 1, i32* %17, align 4
  br label %94

94:                                               ; preds = %170, %87
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %173

98:                                               ; preds = %94
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @index_getattr(i64 %99, i32 %102, i32 %103, i32* %19)
  store i32 %104, i32* %18, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SK_ISNULL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %98
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 0, i32* %20, align 4
  br label %125

115:                                              ; preds = %111
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 -1, i32* %20, align 4
  br label %124

123:                                              ; preds = %115
  store i32 1, i32* %20, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %114
  br label %162

126:                                              ; preds = %98
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store i32 1, i32* %20, align 4
  br label %138

137:                                              ; preds = %129
  store i32 -1, i32* %20, align 4
  br label %138

138:                                              ; preds = %137, %136
  br label %161

139:                                              ; preds = %126
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @FunctionCall2Coll(i32* %141, i32 %144, i32 %145, i32 %148)
  %150 = call i32 @DatumGetInt32(i32 %149)
  store i32 %150, i32* %20, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @SK_BT_DESC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %139
  %158 = load i32, i32* %20, align 4
  %159 = call i32 @INVERT_COMPARE_RESULT(i32 %158)
  br label %160

160:                                              ; preds = %157, %139
  br label %161

161:                                              ; preds = %160, %138
  br label %162

162:                                              ; preds = %161, %125
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* %20, align 4
  store i32 %166, i32* %5, align 4
  br label %232

167:                                              ; preds = %162
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 1
  store %struct.TYPE_4__* %169, %struct.TYPE_4__** %14, align 8
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  br label %94

173:                                              ; preds = %94
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 1, i32* %5, align 4
  br label %232

180:                                              ; preds = %173
  %181 = load i64, i64* %12, align 8
  %182 = call i32* @BTreeTupleGetHeapTID(i64 %181)
  store i32* %182, i32** %13, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %208

187:                                              ; preds = %180
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %187
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32*, i32** %13, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 1, i32* %5, align 4
  br label %232

207:                                              ; preds = %203, %197, %192, %187
  store i32 0, i32* %5, align 4
  br label %232

208:                                              ; preds = %180
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %212)
  %214 = icmp eq i32 %211, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @Assert(i32 %215)
  %217 = load i32*, i32** %13, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  store i32 1, i32* %5, align 4
  br label %232

220:                                              ; preds = %208
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %222)
  %224 = icmp sge i32 %221, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @Assert(i32 %225)
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = call i32 @ItemPointerCompare(i32* %229, i32* %230)
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %220, %219, %207, %206, %179, %165, %62
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @_bt_check_natts(i32, i64, i32, i64) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @P_ISLEAF(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @BTreeTupleGetNAtts(i64, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @index_getattr(i64, i32, i32, i32*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @INVERT_COMPARE_RESULT(i32) #1

declare dso_local i32* @BTreeTupleGetHeapTID(i64) #1

declare dso_local i32 @ItemPointerCompare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
