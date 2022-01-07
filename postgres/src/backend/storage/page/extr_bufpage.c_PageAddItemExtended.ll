; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageAddItemExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageAddItemExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }

@SizeOfPageHeaderData = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@PAI_OVERWRITE = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"will not overwrite a used ItemId\00", align 1
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"specified item offset is too large\00", align 1
@PAI_IS_HEAP = common dso_local global i32 0, align 4
@MaxHeapTuplesPerPage = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"can't put more than MaxHeapTuplesPerPage items in a heap page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PageAddItemExtended(i64 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %12, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SizeOfPageHeaderData, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %49, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %49, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BLCKSZ, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43, %34, %26, %5
  %50 = load i32, i32* @PANIC, align 4
  %51 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %59, i64 %62)
  %64 = call i32 @ereport(i32 %50, i32 %63)
  br label %65

65:                                               ; preds = %49, %43
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @PageGetMaxOffsetNumber(i64 %66)
  %68 = call i64 @OffsetNumberNext(i32 %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @OffsetNumberIsValid(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @PAI_OVERWRITE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @PageGetItemId(%struct.TYPE_5__* %82, i64 %83)
  store i64 %84, i64* %16, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @ItemIdIsUsed(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @ItemIdHasStorage(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %81
  %93 = load i32, i32* @WARNING, align 4
  %94 = call i32 @elog(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %95, i64* %6, align 8
  br label %238

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %77
  br label %104

98:                                               ; preds = %72
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %17, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 1, i32* %18, align 4
  br label %103

103:                                              ; preds = %102, %98
  br label %104

104:                                              ; preds = %103, %97
  br label %141

105:                                              ; preds = %65
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %107 = call i64 @PageHasFreeLinePointers(%struct.TYPE_5__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %105
  store i64 1, i64* %10, align 8
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %17, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @PageGetItemId(%struct.TYPE_5__* %115, i64 %116)
  store i64 %117, i64* %16, align 8
  %118 = load i64, i64* %16, align 8
  %119 = call i64 @ItemIdIsUsed(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load i64, i64* %16, align 8
  %123 = call i64 @ItemIdHasStorage(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %130

126:                                              ; preds = %121, %114
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %110

130:                                              ; preds = %125, %110
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %136 = call i32 @PageClearHasFreeLinePointers(%struct.TYPE_5__* %135)
  br label %137

137:                                              ; preds = %134, %130
  br label %140

138:                                              ; preds = %105
  %139 = load i64, i64* %17, align 8
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %138, %137
  br label %141

141:                                              ; preds = %140, %104
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %17, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @WARNING, align 4
  %147 = call i32 @elog(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %148, i64* %6, align 8
  br label %238

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @PAI_IS_HEAP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @MaxHeapTuplesPerPage, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* @WARNING, align 4
  %160 = call i32 @elog(i32 %159, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %161, i64* %6, align 8
  br label %238

162:                                              ; preds = %154, %149
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %17, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %18, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166, %162
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, 4
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %14, align 4
  br label %180

176:                                              ; preds = %166
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %176, %169
  %181 = load i64, i64* %9, align 8
  %182 = call i64 @MAXALIGN(i64 %181)
  store i64 %182, i64* %13, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* %13, align 8
  %187 = trunc i64 %186 to i32
  %188 = sub nsw i32 %185, %187
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %180
  %193 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %193, i64* %6, align 8
  br label %238

194:                                              ; preds = %180
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i64 @PageGetItemId(%struct.TYPE_5__* %195, i64 %196)
  store i64 %197, i64* %16, align 8
  %198 = load i32, i32* %18, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load i64, i64* %16, align 8
  %202 = add nsw i64 %201, 1
  %203 = load i64, i64* %16, align 8
  %204 = load i64, i64* %17, align 8
  %205 = load i64, i64* %10, align 8
  %206 = sub nsw i64 %204, %205
  %207 = mul i64 %206, 4
  %208 = call i32 @memmove(i64 %202, i64 %203, i64 %207)
  br label %209

209:                                              ; preds = %200, %194
  %210 = load i64, i64* %16, align 8
  %211 = load i32, i32* %15, align 4
  %212 = load i64, i64* %9, align 8
  %213 = call i32 @ItemIdSetNormal(i64 %210, i32 %211, i64 %212)
  %214 = load i32, i32* %8, align 4
  %215 = load i64, i64* %9, align 8
  %216 = call i32 @VALGRIND_CHECK_MEM_IS_DEFINED(i32 %214, i64 %215)
  %217 = load i64, i64* %7, align 8
  %218 = inttoptr i64 %217 to i8*
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i32, i32* %8, align 4
  %223 = load i64, i64* %9, align 8
  %224 = call i32 @memcpy(i8* %221, i32 %222, i64 %223)
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i64, i64* %10, align 8
  store i64 %237, i64* %6, align 8
  br label %238

238:                                              ; preds = %209, %192, %158, %145, %92
  %239 = load i64, i64* %6, align 8
  ret i64 %239
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i64, i64) #1

declare dso_local i64 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i64 @OffsetNumberIsValid(i64) #1

declare dso_local i64 @PageGetItemId(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @ItemIdIsUsed(i64) #1

declare dso_local i64 @ItemIdHasStorage(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageHasFreeLinePointers(%struct.TYPE_5__*) #1

declare dso_local i32 @PageClearHasFreeLinePointers(%struct.TYPE_5__*) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @ItemIdSetNormal(i64, i32, i64) #1

declare dso_local i32 @VALGRIND_CHECK_MEM_IS_DEFINED(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
