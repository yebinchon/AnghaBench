; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_attribute_setattr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_attribute_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@RelationRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_COLUMN = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__SETATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_attribute_setattr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call signext i8 @get_rel_relkind(i32 %8)
  store i8 %9, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @RELKIND_RELATION, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8, i8* %7, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @RelationRelationId, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i8* @getObjectIdentity(%struct.TYPE_4__* %5)
  store i8* %29, i8** %6, align 8
  %30 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %31 = load i32, i32* @SEPG_DB_COLUMN__SETATTR, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_4__* %5, i32 %30, i32 %31, i8* %32, i32 1)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @pfree(i8* %34)
  br label %36

36:                                               ; preds = %22, %21
  ret void
}

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_4__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
