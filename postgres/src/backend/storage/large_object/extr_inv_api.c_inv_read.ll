; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@LOBLKSIZE = common dso_local global i32 0, align 4
@IFS_RDLOCK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"permission denied for large object %u\00", align 1
@Anum_pg_largeobject_loid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_largeobject_pageno = common dso_local global i32 0, align 4
@BTGreaterEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4GE = common dso_local global i32 0, align 4
@lo_heap_r = common dso_local global i32 0, align 4
@lo_index_r = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"null field found in pg_largeobject\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inv_read(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LOBLKSIZE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = call i32 @PointerIsValid(%struct.TYPE_6__* %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFS_RDLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @ereport(i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %38, %3
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %220

51:                                               ; preds = %47
  %52 = call i32 (...) @open_lo_relation()
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %54 = load i32, i32* @Anum_pg_largeobject_loid, align 4
  %55 = load i32, i32* @BTEqualStrategyNumber, align 4
  %56 = load i32, i32* @F_OIDEQ, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ObjectIdGetDatum(i32 %59)
  %61 = call i32 @ScanKeyInit(i32* %53, i32 %54, i32 %55, i32 %56, i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %63 = load i32, i32* @Anum_pg_largeobject_pageno, align 4
  %64 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %65 = load i32, i32* @F_INT4GE, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @Int32GetDatum(i32 %66)
  %68 = call i32 @ScanKeyInit(i32* %62, i32 %63, i32 %64, i32 %65, i32 %67)
  %69 = load i32, i32* @lo_heap_r, align 4
  %70 = load i32, i32* @lo_index_r, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %75 = call i32 @systable_beginscan_ordered(i32 %69, i32 %70, i32 %73, i32 2, i32* %74)
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %215, %51
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @ForwardScanDirection, align 4
  %79 = call i32* @systable_getnext_ordered(i32 %77, i32 %78)
  store i32* %79, i32** %16, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %216

81:                                               ; preds = %76
  %82 = load i32*, i32** %16, align 8
  %83 = call i64 @HeapTupleHasNulls(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @ERROR, align 4
  %87 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32*, i32** %16, align 8
  %90 = call i64 @GETSTRUCT(i32* %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %17, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @LOBLKSIZE, align 4
  %97 = mul nsw i32 %95, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %88
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %9, align 4
  br label %120

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %117, %118
  br label %120

120:                                              ; preds = %116, %114
  %121 = phi i32 [ %115, %114 ], [ %119, %116 ]
  store i32 %121, i32* %9, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @MemSet(i8* %125, i32 0, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %120, %88
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %210

140:                                              ; preds = %136
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp sge i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @Assert(i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %140
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @LOBLKSIZE, align 4
  %158 = icmp slt i32 %156, %157
  br label %159

159:                                              ; preds = %155, %140
  %160 = phi i1 [ false, %140 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @Assert(i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %164 = call i32 @getdatafield(%struct.TYPE_7__* %163, i32** %18, i32* %11, i32* %19)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %203

168:                                              ; preds = %159
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %10, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %173, %174
  %176 = icmp sle i32 %172, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i32, i32* %9, align 4
  br label %183

179:                                              ; preds = %168
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %180, %181
  br label %183

183:                                              ; preds = %179, %177
  %184 = phi i32 [ %178, %177 ], [ %182, %179 ]
  store i32 %184, i32* %9, align 4
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32*, i32** %18, align 8
  %190 = call i32 @VARDATA(i32* %189)
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @memcpy(i8* %188, i32 %192, i32 %193)
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %183, %159
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @pfree(i32* %207)
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %136
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp sge i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %216

215:                                              ; preds = %210
  br label %76

216:                                              ; preds = %214, %76
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @systable_endscan_ordered(i32 %217)
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %216, %50
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PointerIsValid(%struct.TYPE_6__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @open_lo_relation(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan_ordered(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @systable_getnext_ordered(i32, i32) #1

declare dso_local i64 @HeapTupleHasNulls(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i32 @getdatafield(%struct.TYPE_7__*, i32**, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
