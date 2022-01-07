; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignServer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterForeignServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@Natts_pg_foreign_server = common dso_local global i32 0, align 4
@ForeignServerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@FOREIGNSERVERNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"server \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_FOREIGN_SERVER = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvversion = common dso_local global i32 0, align 4
@FOREIGNSERVEROID = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvoptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterForeignServer(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %15 = load i32, i32* @Natts_pg_foreign_server, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @Natts_pg_foreign_server, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load i32, i32* @Natts_pg_foreign_server, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load i32, i32* @ForeignServerRelationId, align 4
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call i32 @table_open(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @FOREIGNSERVERNAME, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @CStringGetDatum(i32 %31)
  %33 = call %struct.TYPE_15__* @SearchSysCacheCopy1(i32 %28, i32 %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %4, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = call i32 @HeapTupleIsValid(%struct.TYPE_15__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %37, %1
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i64 @GETSTRUCT(%struct.TYPE_15__* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %10, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (...) @GetUserId()
  %55 = call i32 @pg_foreign_server_ownercheck(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %59 = load i32, i32* @OBJECT_FOREIGN_SERVER, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @aclcheck_error(i32 %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %57, %46
  %65 = mul nuw i64 4, %16
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %18, i32 0, i32 %66)
  %68 = mul nuw i64 4, %20
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(i32* %21, i32 0, i32 %69)
  %71 = mul nuw i64 4, %23
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i32* %24, i32 0, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %64
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @CStringGetTextDatum(i64 %86)
  %88 = load i32, i32* @Anum_pg_foreign_server_srvversion, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %18, i64 %90
  store i32 %87, i32* %91, align 4
  br label %97

92:                                               ; preds = %78
  %93 = load i32, i32* @Anum_pg_foreign_server_srvversion, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %21, i64 %95
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %83
  %98 = load i32, i32* @Anum_pg_foreign_server_srvversion, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %24, i64 %100
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %64
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %150

107:                                              ; preds = %102
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.TYPE_17__* @GetForeignDataWrapper(i32 %110)
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %12, align 8
  %112 = load i32, i32* @FOREIGNSERVEROID, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %115 = call i32 @SysCacheGetAttr(i32 %112, %struct.TYPE_15__* %113, i32 %114, i32* %14)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = call i32 @PointerGetDatum(i32* null)
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %118, %107
  %121 = load i32, i32* @ForeignServerRelationId, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @transformGenericOptions(i32 %121, i32 %122, i64 %125, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @DatumGetPointer(i32 %130)
  %132 = call i64 @PointerIsValid(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %18, i64 %138
  store i32 %135, i32* %139, align 4
  br label %145

140:                                              ; preds = %120
  %141 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %21, i64 %143
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %134
  %146 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %24, i64 %148
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %102
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @RelationGetDescr(i32 %152)
  %154 = call %struct.TYPE_15__* @heap_modify_tuple(%struct.TYPE_15__* %151, i32 %153, i32* %18, i32* %21, i32* %24)
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %4, align 8
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = call i32 @CatalogTupleUpdate(i32 %155, i32* %157, %struct.TYPE_15__* %158)
  %160 = load i32, i32* @ForeignServerRelationId, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @InvokeObjectPostAlterHook(i32 %160, i32 %161, i32 0)
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @ForeignServerRelationId, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @ObjectAddressSet(i32 %163, i32 %164, i32 %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = call i32 @heap_freetuple(%struct.TYPE_15__* %167)
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @RowExclusiveLock, align 4
  %171 = call i32 @table_close(i32 %169, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %173)
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_15__* @SearchSysCacheCopy1(i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_15__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_15__*) #2

declare dso_local i32 @pg_foreign_server_ownercheck(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CStringGetTextDatum(i64) #2

declare dso_local %struct.TYPE_17__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i64, i32) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local %struct.TYPE_15__* @heap_modify_tuple(%struct.TYPE_15__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_15__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
