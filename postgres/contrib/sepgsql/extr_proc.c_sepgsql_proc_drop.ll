; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_proc.c_sepgsql_proc_drop.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_proc.c_sepgsql_proc_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@NamespaceRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SCHEMA = common dso_local global i32 0, align 4
@SEPG_DB_SCHEMA__REMOVE_NAME = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_PROCEDURE = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_proc_drop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @NamespaceRelationId, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @get_func_namespace(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = call i8* @getObjectIdentity(%struct.TYPE_4__* %3)
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %13 = load i32, i32* @SEPG_DB_SCHEMA__REMOVE_NAME, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_4__* %3, i32 %12, i32 %13, i8* %14, i32 1)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @pfree(i8* %16)
  %18 = load i32, i32* @ProcedureRelationId, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = call i8* @getObjectIdentity(%struct.TYPE_4__* %3)
  store i8* %23, i8** %4, align 8
  %24 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %25 = load i32, i32* @SEPG_DB_PROCEDURE__DROP, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_4__* %3, i32 %24, i32 %25, i8* %26, i32 1)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @pfree(i8* %28)
  ret void
}

declare dso_local i32 @get_func_namespace(i32) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_4__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
