; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_GinFormTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_GinFormTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32*, i64 }

@GIN_CAT_NORM_KEY = common dso_local global i32 0, align 4
@GinMaxItemSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"index row size %zu exceeds maximum %zu for index \22%s\22\00", align 1
@INDEX_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @GinFormTuple(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %8
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @GIN_CAT_NORM_KEY, align 4
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %34, i32* %35, align 4
  br label %48

36:                                               ; preds = %8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @UInt16GetDatum(i32 %37)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @GIN_CAT_NORM_KEY, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %36, %28
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %59 = call %struct.TYPE_18__* @index_form_tuple(i32 %56, i32* %57, i32* %58)
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %20, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %61 = call i32 @IndexTupleSize(%struct.TYPE_18__* %60)
  store i32 %61, i32* %21, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %63 = call i32 @IndexTupleHasNulls(%struct.TYPE_18__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @GIN_CAT_NORM_KEY, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = call i32 @GinCategoryOffset(%struct.TYPE_18__* %71, %struct.TYPE_19__* %72)
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @Max(i32 %77, i32 %78)
  store i32 %79, i32* %21, align 4
  br label %80

80:                                               ; preds = %65, %48
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @SHORTALIGN(i32 %81)
  store i32 %82, i32* %21, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @GinSetPostingOffset(%struct.TYPE_18__* %83, i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @GinSetNPosting(%struct.TYPE_18__* %86, i32 %87)
  %89 = load i64, i64* %15, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @MAXALIGN(i32 %94)
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* @GinMaxItemSize, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %80
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %105 = call i32 @errcode(i32 %104)
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* @GinMaxItemSize, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @RelationGetRelationName(i32 %112)
  %114 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %107, i64 %109, i32 %113)
  %115 = call i32 @ereport(i32 %103, i32 %114)
  br label %116

116:                                              ; preds = %102, %99
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %118 = call i32 @pfree(%struct.TYPE_18__* %117)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  br label %174

119:                                              ; preds = %80
  %120 = load i32, i32* %21, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %122 = call i32 @IndexTupleSize(%struct.TYPE_18__* %121)
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %150

124:                                              ; preds = %119
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call %struct.TYPE_18__* @repalloc(%struct.TYPE_18__* %125, i32 %126)
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %20, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %129 = bitcast %struct.TYPE_18__* %128 to i8*
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %131 = call i32 @IndexTupleSize(%struct.TYPE_18__* %130)
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i32, i32* %21, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %136 = call i32 @IndexTupleSize(%struct.TYPE_18__* %135)
  %137 = sub nsw i32 %134, %136
  %138 = call i32 @memset(i8* %133, i32 0, i32 %137)
  %139 = load i32, i32* @INDEX_SIZE_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %124, %119
  %151 = load i64, i64* %14, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %155 = call i8* @GinGetPosting(%struct.TYPE_18__* %154)
  store i8* %155, i8** %23, align 8
  %156 = load i8*, i8** %23, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i64, i64* %15, align 8
  %159 = call i32 @memcpy(i8* %156, i64 %157, i64 %158)
  br label %160

160:                                              ; preds = %153, %150
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @GIN_CAT_NORM_KEY, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %166 = call i32 @IndexTupleHasNulls(%struct.TYPE_18__* %165)
  %167 = call i32 @Assert(i32 %166)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @GinSetNullCategory(%struct.TYPE_18__* %168, %struct.TYPE_19__* %169, i32 %170)
  br label %172

172:                                              ; preds = %164, %160
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %9, align 8
  br label %174

174:                                              ; preds = %172, %116
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %175
}

declare dso_local i32 @UInt16GetDatum(i32) #1

declare dso_local %struct.TYPE_18__* @index_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_18__*) #1

declare dso_local i32 @IndexTupleHasNulls(%struct.TYPE_18__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinCategoryOffset(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @SHORTALIGN(i32) #1

declare dso_local i32 @GinSetPostingOffset(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @GinSetNPosting(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @repalloc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @GinGetPosting(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @GinSetNullCategory(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
