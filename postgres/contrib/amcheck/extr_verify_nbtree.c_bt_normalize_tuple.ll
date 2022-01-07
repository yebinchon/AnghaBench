; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_normalize_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_normalize_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"external varlena datum in tuple that references heap row (%u,%u) in index \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_19__*, %struct.TYPE_17__*)* @bt_normalize_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @bt_normalize_tuple(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_16__* @RelationGetDescr(i32 %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i32 @IndexTupleHasVarwidths(%struct.TYPE_17__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %165

35:                                               ; preds = %2
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %124, %35
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %127

42:                                               ; preds = %36
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_16__* %43, i32 %44)
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %15, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %29, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %26, i64 %55
  %57 = call i32 @index_getattr(%struct.TYPE_17__* %49, i32 %52, %struct.TYPE_16__* %53, i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %23, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %42
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %26, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %65, %42
  br label %124

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %23, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DatumGetPointer(i32 %81)
  %83 = call i64 @VARATT_IS_EXTERNAL(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = call i32 @ItemPointerGetBlockNumber(i32* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = call i32 @ItemPointerGetOffsetNumber(i32* %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @RelationGetRelationName(i32 %97)
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %98)
  %100 = call i32 @ereport(i32 %86, i32 %99)
  br label %123

101:                                              ; preds = %77
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %23, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DatumGetPointer(i32 %105)
  %107 = call i64 @VARATT_IS_COMPRESSED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %101
  store i32 1, i32* %11, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %23, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PG_DETOAST_DATUM(i32 %113)
  %115 = call i32 @PointerGetDatum(i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %23, i64 %117
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %29, i64 %120
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %109, %101
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %123, %76
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %36

127:                                              ; preds = %36
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %165

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = call %struct.TYPE_17__* @index_form_tuple(%struct.TYPE_16__* %133, i32* %23, i32* %26)
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %12, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %160, %132
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %29, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %23, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @DatumGetPointer(i32 %156)
  %158 = call i32 @pfree(i32 %157)
  br label %159

159:                                              ; preds = %152, %146
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %140

163:                                              ; preds = %140
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %164, %struct.TYPE_17__** %3, align 8
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %163, %130, %33
  %166 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %167
}

declare dso_local %struct.TYPE_16__* @RelationGetDescr(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IndexTupleHasVarwidths(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @index_getattr(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @VARATT_IS_COMPRESSED(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM(i32) #1

declare dso_local %struct.TYPE_17__* @index_form_tuple(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @pfree(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
