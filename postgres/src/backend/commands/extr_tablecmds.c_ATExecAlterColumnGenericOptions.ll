; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAlterColumnGenericOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAlterColumnGenericOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i64 }

@Natts_pg_attribute = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@InvalidObjectAddress = common dso_local global i32 0, align 4
@ForeignTableRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@FOREIGNTABLEREL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"foreign table \22%s\22 does not exist\00", align 1
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@ATTNAME = common dso_local global i32 0, align 4
@Anum_pg_attribute_attfdwoptions = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8*, i32*, i32)* @ATExecAlterColumnGenericOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecAlterColumnGenericOptions(%struct.TYPE_26__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca %struct.TYPE_29__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load i32, i32* @Natts_pg_attribute, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %31 = load i32, i32* @Natts_pg_attribute, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %19, align 8
  %34 = load i32, i32* @Natts_pg_attribute, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %20, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** @NIL, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %190

42:                                               ; preds = %4
  %43 = load i32, i32* @ForeignTableRelationId, align 4
  %44 = load i32, i32* @AccessShareLock, align 4
  %45 = call %struct.TYPE_26__* @table_open(i32 %43, i32 %44)
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %10, align 8
  %46 = load i32, i32* @FOREIGNTABLEREL, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_27__* @SearchSysCache1(i32 %46, i32 %49)
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** %14, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %52 = call i32 @HeapTupleIsValid(%struct.TYPE_27__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %59 = call i8* @RelationGetRelationName(%struct.TYPE_26__* %58)
  %60 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = call i32 @ereport(i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %54, %42
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %64 = call i64 @GETSTRUCT(%struct.TYPE_27__* %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %65, %struct.TYPE_28__** %22, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_30__* @GetForeignServer(i32 %68)
  store %struct.TYPE_30__* %69, %struct.TYPE_30__** %12, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_31__* @GetForeignDataWrapper(i32 %72)
  store %struct.TYPE_31__* %73, %struct.TYPE_31__** %13, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %75 = load i32, i32* @AccessShareLock, align 4
  %76 = call i32 @table_close(%struct.TYPE_26__* %74, i32 %75)
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %78 = call i32 @ReleaseSysCache(%struct.TYPE_27__* %77)
  %79 = load i32, i32* @AttributeRelationId, align 4
  %80 = load i32, i32* @RowExclusiveLock, align 4
  %81 = call %struct.TYPE_26__* @table_open(i32 %79, i32 %80)
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %11, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %83 = call i32 @RelationGetRelid(%struct.TYPE_26__* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call %struct.TYPE_27__* @SearchSysCacheAttName(i32 %83, i8* %84)
  store %struct.TYPE_27__* %85, %struct.TYPE_27__** %14, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %87 = call i32 @HeapTupleIsValid(%struct.TYPE_27__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %62
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %95 = call i8* @RelationGetRelationName(%struct.TYPE_26__* %94)
  %96 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %95)
  %97 = call i32 @ereport(i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %89, %62
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %100 = call i64 @GETSTRUCT(%struct.TYPE_27__* %99)
  %101 = inttoptr i64 %100 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %101, %struct.TYPE_29__** %23, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %24, align 8
  %105 = load i64, i64* %24, align 8
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98
  %108 = load i32, i32* @ERROR, align 4
  %109 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = call i32 @ereport(i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %107, %98
  %115 = mul nuw i64 4, %28
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memset(i32* %30, i32 0, i32 %116)
  %118 = mul nuw i64 4, %32
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memset(i32* %33, i32 0, i32 %119)
  %121 = mul nuw i64 4, %35
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memset(i32* %36, i32 0, i32 %122)
  %124 = load i32, i32* @ATTNAME, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %126 = load i32, i32* @Anum_pg_attribute_attfdwoptions, align 4
  %127 = call i32 @SysCacheGetAttr(i32 %124, %struct.TYPE_27__* %125, i32 %126, i32* %16)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %114
  %131 = call i32 @PointerGetDatum(i32* null)
  store i32 %131, i32* %21, align 4
  br label %132

132:                                              ; preds = %130, %114
  %133 = load i32, i32* @AttributeRelationId, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @transformGenericOptions(i32 %133, i32 %134, i32* %135, i32 %138)
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @DatumGetPointer(i32 %140)
  %142 = call i64 @PointerIsValid(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %132
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* @Anum_pg_attribute_attfdwoptions, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %30, i64 %148
  store i32 %145, i32* %149, align 4
  br label %155

150:                                              ; preds = %132
  %151 = load i32, i32* @Anum_pg_attribute_attfdwoptions, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %33, i64 %153
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %144
  %156 = load i32, i32* @Anum_pg_attribute_attfdwoptions, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %36, i64 %158
  store i32 1, i32* %159, align 4
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %162 = call i32 @RelationGetDescr(%struct.TYPE_26__* %161)
  %163 = call %struct.TYPE_27__* @heap_modify_tuple(%struct.TYPE_27__* %160, i32 %162, i32* %30, i32* %33, i32* %36)
  store %struct.TYPE_27__* %163, %struct.TYPE_27__** %15, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %168 = call i32 @CatalogTupleUpdate(%struct.TYPE_26__* %164, i32* %166, %struct.TYPE_27__* %167)
  %169 = load i32, i32* @RelationRelationId, align 4
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %171 = call i32 @RelationGetRelid(%struct.TYPE_26__* %170)
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @InvokeObjectPostAlterHook(i32 %169, i32 %171, i64 %174)
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* @RelationRelationId, align 4
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %179 = call i32 @RelationGetRelid(%struct.TYPE_26__* %178)
  %180 = load i64, i64* %24, align 8
  %181 = call i32 @ObjectAddressSubSet(i32 %176, i32 %177, i32 %179, i64 %180)
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %183 = call i32 @ReleaseSysCache(%struct.TYPE_27__* %182)
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %185 = load i32, i32* @RowExclusiveLock, align 4
  %186 = call i32 @table_close(%struct.TYPE_26__* %184, i32 %185)
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %188 = call i32 @heap_freetuple(%struct.TYPE_27__* %187)
  %189 = load i32, i32* %25, align 4
  store i32 %189, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %190

190:                                              ; preds = %155, %40
  %191 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_26__* @table_open(i32, i32) #2

declare dso_local %struct.TYPE_27__* @SearchSysCache1(i32, i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_27__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i8* @RelationGetRelationName(%struct.TYPE_26__*) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_30__* @GetForeignServer(i32) #2

declare dso_local %struct.TYPE_31__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @table_close(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_27__* @SearchSysCacheAttName(i32, i8*) #2

declare dso_local i32 @RelationGetRelid(%struct.TYPE_26__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_27__*, i32, i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i32*, i32) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local %struct.TYPE_27__* @heap_modify_tuple(%struct.TYPE_27__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(%struct.TYPE_26__*) #2

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_26__*, i32*, %struct.TYPE_27__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i64) #2

declare dso_local i32 @ObjectAddressSubSet(i32, i32, i32, i64) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
