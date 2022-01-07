; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_comparetup_index_btree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_comparetup_index_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNIQUE_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create unique index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Key %s is duplicated.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Duplicate keys exist.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @comparetup_index_btree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comparetup_index_btree(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %13, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = call i64 @ApplySortComparator(i32 %33, i32 %36, i32 %39, i32 %42, %struct.TYPE_14__* %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i64, i64* %15, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %221

50:                                               ; preds = %3
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %9, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RelationGetDescr(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %50
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @index_getattr(%struct.TYPE_15__* %71, i32 1, i32 %72, i32* %18)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @index_getattr(%struct.TYPE_15__* %74, i32 1, i32 %75, i32* %19)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = call i64 @ApplySortAbbrevFullComparator(i32 %77, i32 %78, i32 %79, i32 %80, %struct.TYPE_14__* %81)
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i64, i64* %15, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %221

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %50
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 1
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %8, align 8
  store i32 2, i32* %14, align 4
  br label %98

98:                                               ; preds = %127, %95
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %98
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @index_getattr(%struct.TYPE_15__* %103, i32 %104, i32 %105, i32* %18)
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @index_getattr(%struct.TYPE_15__* %107, i32 %108, i32 %109, i32* %19)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = call i64 @ApplySortComparator(i32 %111, i32 %112, i32 %113, i32 %114, %struct.TYPE_14__* %115)
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %102
  %120 = load i64, i64* %15, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  br label %221

122:                                              ; preds = %102
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %125, %122
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 1
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %8, align 8
  br label %98

132:                                              ; preds = %98
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %132
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %187, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %142 = zext i32 %141 to i64
  %143 = call i8* @llvm.stacksave()
  store i8* %143, i8** %20, align 8
  %144 = alloca i32, i64 %142, align 16
  store i64 %142, i64* %21, align 8
  %145 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %146 = zext i32 %145 to i64
  %147 = alloca i32, i64 %146, align 16
  store i64 %146, i64* %22, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %150 = icmp ne %struct.TYPE_15__* %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @Assert(i32 %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @index_deform_tuple(%struct.TYPE_15__* %153, i32 %154, i32* %144, i32* %147)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @BuildIndexValueDescription(i32 %158, i32* %144, i32* %147)
  store i8* %159, i8** %23, align 8
  %160 = load i32, i32* @ERROR, align 4
  %161 = load i32, i32* @ERRCODE_UNIQUE_VIOLATION, align 4
  %162 = call i32 @errcode(i32 %161)
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @RelationGetRelationName(i32 %165)
  %167 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i8*, i8** %23, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %140
  %171 = load i8*, i8** %23, align 8
  %172 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %171)
  br label %175

173:                                              ; preds = %140
  %174 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i32 [ %172, %170 ], [ %174, %173 ]
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @RelationGetRelationName(i32 %182)
  %184 = call i32 @errtableconstraint(i32 %179, i32 %183)
  %185 = call i32 @ereport(i32 %160, i32 %184)
  %186 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %186)
  br label %187

187:                                              ; preds = %175, %137, %132
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = call i64 @ItemPointerGetBlockNumber(i32* %189)
  store i64 %190, i64* %24, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = call i64 @ItemPointerGetBlockNumber(i32* %192)
  store i64 %193, i64* %25, align 8
  %194 = load i64, i64* %24, align 8
  %195 = load i64, i64* %25, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %187
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* %25, align 8
  %200 = icmp slt i64 %198, %199
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 -1, i32 1
  store i32 %202, i32* %4, align 4
  br label %221

203:                                              ; preds = %187
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = call i64 @ItemPointerGetOffsetNumber(i32* %205)
  store i64 %206, i64* %26, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = call i64 @ItemPointerGetOffsetNumber(i32* %208)
  store i64 %209, i64* %27, align 8
  %210 = load i64, i64* %26, align 8
  %211 = load i64, i64* %27, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %203
  %214 = load i64, i64* %26, align 8
  %215 = load i64, i64* %27, align 8
  %216 = icmp slt i64 %214, %215
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 -1, i32 1
  store i32 %218, i32* %4, align 4
  br label %221

219:                                              ; preds = %203
  %220 = call i32 @Assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %213, %197, %119, %85, %47
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i64 @ApplySortComparator(i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @index_getattr(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i64 @ApplySortAbbrevFullComparator(i32, i32, i32, i32, %struct.TYPE_14__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @index_deform_tuple(%struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i8* @BuildIndexValueDescription(i32, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @errtableconstraint(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
