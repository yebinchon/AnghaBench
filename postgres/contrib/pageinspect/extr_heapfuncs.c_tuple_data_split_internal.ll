; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_heapfuncs.c_tuple_data_split_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_heapfuncs.c_tuple_data_split_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@AccessShareLock = common dso_local global i32 0, align 4
@BYTEAOID = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@HEAP_TABLE_AM_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"only heap AM is supported\00", align 1
@HEAP_NATTS_MASK = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"number of attributes in tuple header is greater than number of attributes in tuple descriptor\00", align 1
@HEAP_HASNULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"first byte of varlena attribute is incorrect for attribute %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unexpected end of tuple data\00", align 1
@VARHDRSZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"end of tuple reached without looking at all its data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32, i32*, i32)* @tuple_data_split_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuple_data_split_internal(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AccessShareLock, align 4
  %27 = call %struct.TYPE_13__* @relation_open(i32 %25, i32 %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %19, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %29 = call %struct.TYPE_12__* @RelationGetDescr(%struct.TYPE_13__* %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %20, align 8
  %30 = load i32, i32* @BYTEAOID, align 4
  %31 = load i32, i32* @CurrentMemoryContext, align 4
  %32 = call i32* @initArrayResult(i32 %30, i32 %31, i32 0)
  store i32* %32, i32** %15, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HEAP_TABLE_AM_OID, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %7
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %7
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @HEAP_NATTS_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %49
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %220, %61
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %223

66:                                               ; preds = %62
  store i32* null, i32** %23, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %67, i32 %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %21, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @HEAP_NATTS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 1, i32* %22, align 4
  br label %89

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @HEAP_HASNULL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* %17, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = call i64 @att_isnull(i32 %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %22, align 4
  br label %89

89:                                               ; preds = %86, %75
  %90 = load i32, i32* %22, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %206, label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %140

97:                                               ; preds = %92
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = call i32 @att_align_pointer(i32 %98, i32 %101, i32 -1, i8* %105)
  store i32 %106, i32* %18, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i64 @VARATT_IS_EXTERNAL(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %97
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = call i32 @VARATT_IS_EXTERNAL_ONDISK(i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %134, label %120

120:                                              ; preds = %113
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i32 @VARATT_IS_EXTERNAL_INDIRECT(i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %130 = call i32 @errcode(i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = call i32 @ereport(i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %127, %120, %113, %97
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = call i32 @VARSIZE_ANY(i8* %138)
  store i32 %139, i32* %24, align 4
  br label %149

140:                                              ; preds = %92
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @att_align_nominal(i32 %141, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %24, align 4
  br label %149

149:                                              ; preds = %140, %134
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %24, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i32, i32* @ERROR, align 4
  %157 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %158 = call i32 @errcode(i32 %157)
  %159 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %160 = call i32 @ereport(i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %149
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = call i32* @DatumGetByteaPCopy(i8* %173)
  store i32* %174, i32** %23, align 8
  br label %196

175:                                              ; preds = %166, %161
  %176 = load i32, i32* %24, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* @VARHDRSZ, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i64 @palloc(i64 %179)
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %23, align 8
  %182 = load i32*, i32** %23, align 8
  %183 = load i32, i32* %24, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @VARHDRSZ, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @SET_VARSIZE(i32* %182, i64 %186)
  %188 = load i32*, i32** %23, align 8
  %189 = call i32 @VARDATA(i32* %188)
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %24, align 4
  %195 = call i32 @memcpy(i32 %189, i8* %193, i32 %194)
  br label %196

196:                                              ; preds = %175, %169
  %197 = load i32, i32* %18, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i8*, i8** %9, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = call i32 @att_addlength_pointer(i32 %197, i32 %200, i8* %204)
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %196, %89
  %207 = load i32*, i32** %15, align 8
  %208 = load i32*, i32** %23, align 8
  %209 = call i32 @PointerGetDatum(i32* %208)
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* @BYTEAOID, align 4
  %212 = load i32, i32* @CurrentMemoryContext, align 4
  %213 = call i32* @accumArrayResult(i32* %207, i32 %209, i32 %210, i32 %211, i32 %212)
  store i32* %213, i32** %15, align 8
  %214 = load i32*, i32** %23, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %206
  %217 = load i32*, i32** %23, align 8
  %218 = call i32 @pfree(i32* %217)
  br label %219

219:                                              ; preds = %216, %206
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %17, align 4
  br label %62

223:                                              ; preds = %62
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load i32, i32* @ERROR, align 4
  %229 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %230 = call i32 @errcode(i32 %229)
  %231 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %232 = call i32 @ereport(i32 %228, i32 %231)
  br label %233

233:                                              ; preds = %227, %223
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %235 = load i32, i32* @AccessShareLock, align 4
  %236 = call i32 @relation_close(%struct.TYPE_13__* %234, i32 %235)
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* @CurrentMemoryContext, align 4
  %239 = call i32 @makeArrayResult(i32* %237, i32 %238)
  ret i32 %239
}

declare dso_local %struct.TYPE_13__* @relation_open(i32, i32) #1

declare dso_local %struct.TYPE_12__* @RelationGetDescr(%struct.TYPE_13__*) #1

declare dso_local i32* @initArrayResult(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @att_isnull(i32, i32*) #1

declare dso_local i32 @att_align_pointer(i32, i32, i32, i8*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i8*) #1

declare dso_local i32 @VARATT_IS_EXTERNAL_ONDISK(i8*) #1

declare dso_local i32 @VARATT_IS_EXTERNAL_INDIRECT(i8*) #1

declare dso_local i32 @VARSIZE_ANY(i8*) #1

declare dso_local i32 @att_align_nominal(i32, i32) #1

declare dso_local i32* @DatumGetByteaPCopy(i8*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i32 @att_addlength_pointer(i32, i32, i8*) #1

declare dso_local i32* @accumArrayResult(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @relation_close(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @makeArrayResult(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
