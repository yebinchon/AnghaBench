; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_collation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_collation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [304 x i8] c"INSERT INTO pg_collation (oid, collname, collnamespace, collowner, collprovider, collisdeterministic, collencoding, collcollate, collctype)VALUES (pg_nextoid('pg_catalog.pg_collation', 'oid', 'pg_catalog.pg_collation_oid_index'), 'ucs_basic', 'pg_catalog'::regnamespace, %u, '%c', true, %d, 'C', 'C');\0A\0A\00", align 1
@BOOTSTRAP_SUPERUSERID = common dso_local global i32 0, align 4
@COLLPROVIDER_LIBC = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"SELECT pg_import_system_collations('pg_catalog');\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setup_collation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_collation(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @BOOTSTRAP_SUPERUSERID, align 4
  %4 = load i32, i32* @COLLPROVIDER_LIBC, align 4
  %5 = load i32, i32* @PG_UTF8, align 4
  %6 = call i32 @PG_CMD_PRINTF(i8* getelementptr inbounds ([304 x i8], [304 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i32 %5)
  %7 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PG_CMD_PRINTF(i8*, i32, i32, i32) #1

declare dso_local i32 @PG_CMD_PUTS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
