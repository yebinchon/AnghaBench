; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_relabel.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@SEPG_CLASS_DB_TABLE = common dso_local global i32 0, align 4
@RELKIND_SEQUENCE = common dso_local global i8 0, align 1
@SEPG_CLASS_DB_SEQUENCE = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i8 0, align 1
@SEPG_CLASS_DB_VIEW = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"cannot set security labels on relations except for tables, sequences or views\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@SEPG_DB_TABLE__SETATTR = common dso_local global i32 0, align 4
@SEPG_DB_TABLE__RELABELFROM = common dso_local global i32 0, align 4
@SEPG_DB_TABLE__RELABELTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_relation_relabel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call signext i8 @get_rel_relkind(i32 %9)
  store i8 %10, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load i8, i8* %7, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @RELKIND_RELATION, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i8, i8* %7, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @SEPG_CLASS_DB_TABLE, align 4
  store i32 %23, i32* %8, align 4
  br label %48

24:                                               ; preds = %16
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @RELKIND_SEQUENCE, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @SEPG_CLASS_DB_SEQUENCE, align 4
  store i32 %31, i32* %8, align 4
  br label %47

32:                                               ; preds = %24
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @RELKIND_VIEW, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @SEPG_CLASS_DB_VIEW, align 4
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %38
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* @RelationRelationId, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = call i8* @getObjectIdentity(%struct.TYPE_4__* %5)
  store i8* %54, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SEPG_DB_TABLE__SETATTR, align 4
  %57 = load i32, i32* @SEPG_DB_TABLE__RELABELFROM, align 4
  %58 = or i32 %56, %57
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_4__* %5, i32 %55, i32 %58, i8* %59, i32 1)
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SEPG_DB_TABLE__RELABELTO, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @sepgsql_avc_check_perms_label(i8* %61, i32 %62, i32 %63, i8* %64, i32 1)
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @pfree(i8* %66)
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
