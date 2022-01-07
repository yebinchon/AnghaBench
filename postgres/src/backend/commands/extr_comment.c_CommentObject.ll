; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_CommentObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_CommentObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@InvalidObjectAddress = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i32 0, align 4
@RELKIND_MATVIEW = common dso_local global i32 0, align 4
@RELKIND_COMPOSITE_TYPE = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"\22%s\22 is not a table, view, materialized view, composite type, or foreign table\00", align 1
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@OBJECT_ROLE = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @CommentObject(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_16__, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca { i64, i32 }, align 8
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %10 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_16__* @InvalidObjectAddress to i8*), i64 12, i1 false)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @OBJECT_DATABASE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i8* @strVal(i32* %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @get_database_oid(i8* %22, i32 1)
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @WARNING, align 4
  %28 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %169

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %42 = call { i64, i32 } @get_object_address(i32 %37, i64 %40, %struct.TYPE_15__** %4, i32 %41, i32 0)
  store { i64, i32 } %42, { i64, i32 }* %7, align 8
  %43 = bitcast { i64, i32 }* %7 to i8*
  %44 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %43, i64 12, i1 false)
  %45 = bitcast %struct.TYPE_16__* %2 to i8*
  %46 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = call i32 (...) @GetUserId()
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = bitcast { i64, i32 }* %8 to i8*
  %56 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @check_object_ownership(i32 %47, i32 %50, i64 %58, i32 %60, i64 %53, %struct.TYPE_15__* %54)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %122 [
    i32 128, label %65
  ]

65:                                               ; preds = %34
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RELKIND_RELATION, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %121

73:                                               ; preds = %65
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RELKIND_VIEW, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %73
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RELKIND_MATVIEW, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %81
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RELKIND_COMPOSITE_TYPE, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %89
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RELKIND_FOREIGN_TABLE, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %97
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = call i8* @RelationGetRelationName(%struct.TYPE_15__* %117)
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %118)
  %120 = call i32 @ereport(i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %113, %105, %97, %89, %81, %73, %65
  br label %123

122:                                              ; preds = %34
  br label %123

123:                                              ; preds = %122, %121
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @OBJECT_DATABASE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @OBJECT_TABLESPACE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @OBJECT_ROLE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %135, %129, %123
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @CreateSharedComments(i32 %143, i32 %145, i32 %148)
  br label %161

150:                                              ; preds = %135
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @CreateComments(i32 %152, i32 %154, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %150, %141
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = icmp ne %struct.TYPE_15__* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = load i32, i32* @NoLock, align 4
  %167 = call i32 @relation_close(%struct.TYPE_15__* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %168, %26
  %170 = bitcast { i64, i32 }* %9 to i8*
  %171 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 4 %171, i64 12, i1 false)
  %172 = load { i64, i32 }, { i64, i32 }* %9, align 8
  ret { i64, i32 } %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strVal(i32*) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @get_database_oid(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local { i64, i32 } @get_object_address(i32, i64, %struct.TYPE_15__**, i32, i32) #2

declare dso_local i32 @check_object_ownership(i32, i32, i64, i32, i64, %struct.TYPE_15__*) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i8* @RelationGetRelationName(%struct.TYPE_15__*) #2

declare dso_local i32 @CreateSharedComments(i32, i32, i32) #2

declare dso_local i32 @CreateComments(i32, i32, i32, i32) #2

declare dso_local i32 @relation_close(%struct.TYPE_15__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
