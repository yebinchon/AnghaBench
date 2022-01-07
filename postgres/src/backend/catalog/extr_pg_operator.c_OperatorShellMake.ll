; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorShellMake.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorShellMake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@Natts_pg_operator = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\22%s\22 is not a valid operator name\00", align 1
@OperatorRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@OperatorOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_operator_oid = common dso_local global i32 0, align 4
@Anum_pg_operator_oprname = common dso_local global i32 0, align 4
@Anum_pg_operator_oprnamespace = common dso_local global i32 0, align 4
@Anum_pg_operator_oprowner = common dso_local global i32 0, align 4
@Anum_pg_operator_oprkind = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcanmerge = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcanhash = common dso_local global i32 0, align 4
@Anum_pg_operator_oprleft = common dso_local global i32 0, align 4
@Anum_pg_operator_oprright = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@Anum_pg_operator_oprresult = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcom = common dso_local global i32 0, align 4
@Anum_pg_operator_oprnegate = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcode = common dso_local global i32 0, align 4
@Anum_pg_operator_oprrest = common dso_local global i32 0, align 4
@Anum_pg_operator_oprjoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64)* @OperatorShellMake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OperatorShellMake(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i32, i32* @Natts_pg_operator, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @Natts_pg_operator, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @validOperatorName(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = call i32 @ereport(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %4
  %36 = load i32, i32* @OperatorRelationId, align 4
  %37 = load i32, i32* @RowExclusiveLock, align 4
  %38 = call %struct.TYPE_6__* @table_open(i32 %36, i32 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %53, %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @Natts_pg_operator, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %24, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %21, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = load i32, i32* @OperatorOidIndexId, align 4
  %59 = load i32, i32* @Anum_pg_operator_oid, align 4
  %60 = call i64 @GetNewOidWithIndex(%struct.TYPE_6__* %57, i32 %58, i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @ObjectIdGetDatum(i64 %61)
  %63 = load i32, i32* @Anum_pg_operator_oid, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %21, i64 %65
  store i64 %62, i64* %66, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @namestrcpy(i32* %16, i8* %67)
  %69 = call i64 @NameGetDatum(i32* %16)
  %70 = load i32, i32* @Anum_pg_operator_oprname, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %21, i64 %72
  store i64 %69, i64* %73, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @ObjectIdGetDatum(i64 %74)
  %76 = load i32, i32* @Anum_pg_operator_oprnamespace, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %21, i64 %78
  store i64 %75, i64* %79, align 8
  %80 = call i64 (...) @GetUserId()
  %81 = call i64 @ObjectIdGetDatum(i64 %80)
  %82 = load i32, i32* @Anum_pg_operator_oprowner, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %21, i64 %84
  store i64 %81, i64* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %56
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 98, i32 114
  br label %94

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %92, %88 ], [ 108, %93 ]
  %96 = trunc i32 %95 to i8
  %97 = call i64 @CharGetDatum(i8 signext %96)
  %98 = load i32, i32* @Anum_pg_operator_oprkind, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %21, i64 %100
  store i64 %97, i64* %101, align 8
  %102 = call i64 @BoolGetDatum(i32 0)
  %103 = load i32, i32* @Anum_pg_operator_oprcanmerge, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %21, i64 %105
  store i64 %102, i64* %106, align 8
  %107 = call i64 @BoolGetDatum(i32 0)
  %108 = load i32, i32* @Anum_pg_operator_oprcanhash, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %21, i64 %110
  store i64 %107, i64* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @ObjectIdGetDatum(i64 %112)
  %114 = load i32, i32* @Anum_pg_operator_oprleft, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %21, i64 %116
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @ObjectIdGetDatum(i64 %118)
  %120 = load i32, i32* @Anum_pg_operator_oprright, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %21, i64 %122
  store i64 %119, i64* %123, align 8
  %124 = load i64, i64* @InvalidOid, align 8
  %125 = call i64 @ObjectIdGetDatum(i64 %124)
  %126 = load i32, i32* @Anum_pg_operator_oprresult, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %21, i64 %128
  store i64 %125, i64* %129, align 8
  %130 = load i64, i64* @InvalidOid, align 8
  %131 = call i64 @ObjectIdGetDatum(i64 %130)
  %132 = load i32, i32* @Anum_pg_operator_oprcom, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %21, i64 %134
  store i64 %131, i64* %135, align 8
  %136 = load i64, i64* @InvalidOid, align 8
  %137 = call i64 @ObjectIdGetDatum(i64 %136)
  %138 = load i32, i32* @Anum_pg_operator_oprnegate, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %21, i64 %140
  store i64 %137, i64* %141, align 8
  %142 = load i64, i64* @InvalidOid, align 8
  %143 = call i64 @ObjectIdGetDatum(i64 %142)
  %144 = load i32, i32* @Anum_pg_operator_oprcode, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %21, i64 %146
  store i64 %143, i64* %147, align 8
  %148 = load i64, i64* @InvalidOid, align 8
  %149 = call i64 @ObjectIdGetDatum(i64 %148)
  %150 = load i32, i32* @Anum_pg_operator_oprrest, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %21, i64 %152
  store i64 %149, i64* %153, align 8
  %154 = load i64, i64* @InvalidOid, align 8
  %155 = call i64 @ObjectIdGetDatum(i64 %154)
  %156 = load i32, i32* @Anum_pg_operator_oprjoin, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %21, i64 %158
  store i64 %155, i64* %159, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @heap_form_tuple(i32 %160, i64* %21, i32* %24)
  store i32 %161, i32* %12, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @CatalogTupleInsert(%struct.TYPE_6__* %162, i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @makeOperatorDependencies(i32 %165, i32 0)
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @heap_freetuple(i32 %167)
  %169 = load i32, i32* @OperatorRelationId, align 4
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @InvokeObjectPostCreateHook(i32 %169, i64 %170, i32 0)
  %172 = call i32 (...) @CommandCounterIncrement()
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = load i32, i32* @RowExclusiveLock, align 4
  %175 = call i32 @table_close(%struct.TYPE_6__* %173, i32 %174)
  %176 = load i64, i64* %10, align 8
  %177 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %177)
  ret i64 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @validOperatorName(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local %struct.TYPE_6__* @table_open(i32, i32) #2

declare dso_local i64 @GetNewOidWithIndex(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i64 @ObjectIdGetDatum(i64) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i64 @NameGetDatum(i32*) #2

declare dso_local i64 @GetUserId(...) #2

declare dso_local i64 @CharGetDatum(i8 signext) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @makeOperatorDependencies(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i64, i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @table_close(%struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
