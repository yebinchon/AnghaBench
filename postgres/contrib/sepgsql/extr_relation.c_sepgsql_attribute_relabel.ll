; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_attribute_relabel.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_attribute_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot set security label on non-regular columns\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_COLUMN = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__SETATTR = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__RELABELFROM = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__RELABELTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_attribute_relabel(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call signext i8 @get_rel_relkind(i32 %10)
  store i8 %11, i8* %9, align 1
  %12 = load i8, i8* %9, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @RELKIND_RELATION, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i8, i8* %9, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %17, %3
  %30 = load i32, i32* @RelationRelationId, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = call i8* @getObjectIdentity(%struct.TYPE_4__* %7)
  store i8* %36, i8** %8, align 8
  %37 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %38 = load i32, i32* @SEPG_DB_COLUMN__SETATTR, align 4
  %39 = load i32, i32* @SEPG_DB_COLUMN__RELABELFROM, align 4
  %40 = or i32 %38, %39
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_4__* %7, i32 %37, i32 %40, i8* %41, i32 1)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %45 = load i32, i32* @SEPG_DB_PROCEDURE__RELABELTO, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @sepgsql_avc_check_perms_label(i8* %43, i32 %44, i32 %45, i8* %46, i32 1)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @pfree(i8* %48)
  ret void
}

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_4__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
