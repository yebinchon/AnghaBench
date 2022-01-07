; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecConstraints.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecConstraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i64 }

@TTSOpsVirtual = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NOT_NULL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"null value in column \22%s\22 violates not-null constraint\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failing row contains %s.\00", align 1
@ERRCODE_CHECK_VIOLATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"new row for relation \22%s\22 violates check constraint \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecConstraints(%struct.TYPE_18__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.TYPE_16__* @RelationGetDescr(i64 %28)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %8, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %9, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %3
  %41 = phi i1 [ true, %3 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %140

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %140

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %136, %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %139

59:                                               ; preds = %55
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call %struct.TYPE_19__* @TupleDescAttr(%struct.TYPE_16__* %60, i32 %62)
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %15, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %135

68:                                               ; preds = %59
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @slot_attisnull(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %68
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call %struct.TYPE_16__* @RelationGetDescr(i64 %75)
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %18, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %73
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call %struct.TYPE_16__* @RelationGetDescr(i64 %85)
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %8, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = call i32* @convert_tuples_by_name_map_if_req(%struct.TYPE_16__* %87, %struct.TYPE_16__* %88)
  store i32* %89, i32** %19, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = load i32*, i32** %19, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = call i32 @MakeTupleTableSlot(%struct.TYPE_16__* %95, i32* @TTSOpsVirtual)
  %97 = call i32* @execute_attr_map_slot(i32* %93, i32* %94, i32 %96)
  store i32* %97, i32** %5, align 8
  br label %98

98:                                               ; preds = %92, %81
  br label %99

99:                                               ; preds = %98, %73
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32* @GetInsertedColumns(%struct.TYPE_18__* %100, i32* %101)
  store i32* %102, i32** %11, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32* @GetUpdatedColumns(%struct.TYPE_18__* %103, i32* %104)
  store i32* %105, i32** %12, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32* @bms_union(i32* %106, i32* %107)
  store i32* %108, i32** %10, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @RelationGetRelid(i64 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i8* @ExecBuildSlotValueDescription(i32 %110, i32* %111, %struct.TYPE_16__* %112, i32* %113, i32 64)
  store i8* %114, i8** %16, align 8
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_NOT_NULL_VIOLATION, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @NameStr(i32 %120)
  %122 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i8*, i8** %16, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %99
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  br label %129

128:                                              ; preds = %99
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i32 [ %127, %125 ], [ 0, %128 ]
  %131 = load i64, i64* %17, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @errtablecol(i64 %131, i32 %132)
  %134 = call i32 @ereport(i32 %115, i32 %133)
  br label %135

135:                                              ; preds = %129, %68, %59
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %55

139:                                              ; preds = %55
  br label %140

140:                                              ; preds = %139, %46, %40
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %142 = icmp ne %struct.TYPE_17__* %141, null
  br i1 %142, label %143, label %216

143:                                              ; preds = %140
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %216

148:                                              ; preds = %143
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = call i8* @ExecRelCheck(%struct.TYPE_18__* %149, i32* %150, i32* %151)
  store i8* %152, i8** %20, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %215

154:                                              ; preds = %148
  %155 = load i64, i64* %7, align 8
  store i64 %155, i64* %22, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %154
  %161 = load i64, i64* %7, align 8
  %162 = call %struct.TYPE_16__* @RelationGetDescr(i64 %161)
  store %struct.TYPE_16__* %162, %struct.TYPE_16__** %23, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %7, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call %struct.TYPE_16__* @RelationGetDescr(i64 %166)
  store %struct.TYPE_16__* %167, %struct.TYPE_16__** %8, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = call i32* @convert_tuples_by_name_map_if_req(%struct.TYPE_16__* %168, %struct.TYPE_16__* %169)
  store i32* %170, i32** %24, align 8
  %171 = load i32*, i32** %24, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %160
  %174 = load i32*, i32** %24, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = call i32 @MakeTupleTableSlot(%struct.TYPE_16__* %176, i32* @TTSOpsVirtual)
  %178 = call i32* @execute_attr_map_slot(i32* %174, i32* %175, i32 %177)
  store i32* %178, i32** %5, align 8
  br label %179

179:                                              ; preds = %173, %160
  br label %180

180:                                              ; preds = %179, %154
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = call i32* @GetInsertedColumns(%struct.TYPE_18__* %181, i32* %182)
  store i32* %183, i32** %11, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = call i32* @GetUpdatedColumns(%struct.TYPE_18__* %184, i32* %185)
  store i32* %186, i32** %12, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = call i32* @bms_union(i32* %187, i32* %188)
  store i32* %189, i32** %10, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @RelationGetRelid(i64 %190)
  %192 = load i32*, i32** %5, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = call i8* @ExecBuildSlotValueDescription(i32 %191, i32* %192, %struct.TYPE_16__* %193, i32* %194, i32 64)
  store i8* %195, i8** %21, align 8
  %196 = load i32, i32* @ERROR, align 4
  %197 = load i32, i32* @ERRCODE_CHECK_VIOLATION, align 4
  %198 = call i32 @errcode(i32 %197)
  %199 = load i64, i64* %22, align 8
  %200 = call i32 @RelationGetRelationName(i64 %199)
  %201 = load i8*, i8** %20, align 8
  %202 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %200, i8* %201)
  %203 = load i8*, i8** %21, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %180
  %206 = load i8*, i8** %21, align 8
  %207 = call i32 @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %206)
  br label %209

208:                                              ; preds = %180
  br label %209

209:                                              ; preds = %208, %205
  %210 = phi i32 [ %207, %205 ], [ 0, %208 ]
  %211 = load i64, i64* %22, align 8
  %212 = load i8*, i8** %20, align 8
  %213 = call i32 @errtableconstraint(i64 %211, i8* %212)
  %214 = call i32 @ereport(i32 %196, i32 %213)
  br label %215

215:                                              ; preds = %209, %148
  br label %216

216:                                              ; preds = %215, %143, %140
  ret void
}

declare dso_local %struct.TYPE_16__* @RelationGetDescr(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_19__* @TupleDescAttr(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @slot_attisnull(i32*, i32) #1

declare dso_local i32* @convert_tuples_by_name_map_if_req(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32* @execute_attr_map_slot(i32*, i32*, i32) #1

declare dso_local i32 @MakeTupleTableSlot(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @GetInsertedColumns(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @GetUpdatedColumns(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @bms_union(i32*, i32*) #1

declare dso_local i8* @ExecBuildSlotValueDescription(i32, i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @RelationGetRelid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @errtablecol(i64, i32) #1

declare dso_local i8* @ExecRelCheck(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @RelationGetRelationName(i64) #1

declare dso_local i32 @errtableconstraint(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
