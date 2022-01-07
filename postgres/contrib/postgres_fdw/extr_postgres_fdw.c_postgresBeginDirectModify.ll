; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresBeginDirectModify.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresBeginDirectModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_23__, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32*, i8*, i32, i8*, i32*, i32, i32*, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_27__ = type { i32 }

@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@FdwDirectModifyPrivateUpdateSql = common dso_local global i32 0, align 4
@FdwDirectModifyPrivateHasReturning = common dso_local global i32 0, align 4
@FdwDirectModifyPrivateRetrievedAttrs = common dso_local global i32 0, align 4
@FdwDirectModifyPrivateSetProcessed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"postgres_fdw temporary data\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i32)* @postgresBeginDirectModify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postgresBeginDirectModify(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %5, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %211

31:                                               ; preds = %2
  %32 = call i64 @palloc0(i32 88)
  %33 = inttoptr i64 %32 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %7, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = bitcast %struct.TYPE_26__* %34 to i8*
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = call %struct.TYPE_25__* @exec_rt_fetch(i32 %43, %struct.TYPE_19__* %44)
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %9, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %31
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  br label %56

54:                                               ; preds = %31
  %55 = call i64 (...) @GetUserId()
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i64 [ %53, %50 ], [ %55, %54 ]
  store i64 %57, i64* %10, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32* @ExecOpenScanRelation(%struct.TYPE_19__* %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 6
  store i32* %67, i32** %69, align 8
  br label %77

70:                                               ; preds = %56
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @RelationGetRelid(i32* %80)
  %82 = call %struct.TYPE_27__* @GetForeignTable(i32 %81)
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @GetUserMapping(i64 %83, i32 %86)
  store i32* %87, i32** %12, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @GetConnection(i32* %88, i32 0)
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 13
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %77
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 12
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 6
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %97, %77
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FdwDirectModifyPrivateUpdateSql, align 4
  %112 = call i64 @list_nth(i32 %110, i32 %111)
  %113 = call i32 @strVal(i64 %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @FdwDirectModifyPrivateHasReturning, align 4
  %120 = call i64 @list_nth(i32 %118, i32 %119)
  %121 = call i8* @intVal(i64 %120)
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @FdwDirectModifyPrivateRetrievedAttrs, align 4
  %128 = call i64 @list_nth(i32 %126, i32 %127)
  %129 = inttoptr i64 %128 to i32*
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 10
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @FdwDirectModifyPrivateSetProcessed, align 4
  %136 = call i64 @list_nth(i32 %134, i32 %135)
  %137 = call i8* @intVal(i64 %136)
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 9
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %144 = call i32 @AllocSetContextCreate(i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 7
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %187

151:                                              ; preds = %105
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %14, align 4
  br label %169

164:                                              ; preds = %151
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @RelationGetDescr(i32* %167)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %164, %157
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @TupleDescGetAttInMetadata(i32 %170)
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %169
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @init_returning_filter(%struct.TYPE_26__* %180, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %169
  br label %187

187:                                              ; preds = %186, %105
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @list_length(i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %187
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %199 = bitcast %struct.TYPE_28__* %198 to i32*
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 2
  %210 = call i32 @prepare_query_params(i32* %199, i32 %202, i32 %203, i32* %205, i32* %207, i32* %209)
  br label %211

211:                                              ; preds = %30, %197, %187
  ret void
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local %struct.TYPE_25__* @exec_rt_fetch(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @GetUserId(...) #1

declare dso_local i32* @ExecOpenScanRelation(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_27__* @GetForeignTable(i32) #1

declare dso_local i32 @RelationGetRelid(i32*) #1

declare dso_local i32* @GetUserMapping(i64, i32) #1

declare dso_local i32 @GetConnection(i32*, i32) #1

declare dso_local i32 @strVal(i64) #1

declare dso_local i64 @list_nth(i32, i32) #1

declare dso_local i8* @intVal(i64) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @RelationGetDescr(i32*) #1

declare dso_local i32 @TupleDescGetAttInMetadata(i32) #1

declare dso_local i32 @init_returning_filter(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @prepare_query_params(i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
