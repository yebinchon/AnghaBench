; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_description.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [107 x i8] c"CREATE TEMP TABLE tmp_pg_description ( \09objoid oid, \09classname name, \09objsubid int4, \09description text);\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"COPY tmp_pg_description FROM E'%s';\0A\0A\00", align 1
@desc_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [155 x i8] c"INSERT INTO pg_description  SELECT t.objoid, c.oid, t.objsubid, t.description   FROM tmp_pg_description t, pg_class c     WHERE c.relname = t.classname;\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"CREATE TEMP TABLE tmp_pg_shdescription (  objoid oid,  classname name,  description text);\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"COPY tmp_pg_shdescription FROM E'%s';\0A\0A\00", align 1
@shdesc_file = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [146 x i8] c"INSERT INTO pg_shdescription  SELECT t.objoid, c.oid, t.description   FROM tmp_pg_shdescription t, pg_class c    WHERE c.relname = t.classname;\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [523 x i8] c"WITH funcdescs AS ( SELECT p.oid as p_oid, o.oid as o_oid, oprname FROM pg_proc p JOIN pg_operator o ON oprcode = p.oid ) INSERT INTO pg_description   SELECT p_oid, 'pg_proc'::regclass, 0,     'implementation of ' || oprname || ' operator'   FROM funcdescs   WHERE NOT EXISTS (SELECT 1 FROM pg_description    WHERE objoid = p_oid AND classoid = 'pg_proc'::regclass)   AND NOT EXISTS (SELECT 1 FROM pg_description    WHERE objoid = o_oid AND classoid = 'pg_operator'::regclass         AND description LIKE 'deprecated%');\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DROP TABLE tmp_pg_description;\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"DROP TABLE tmp_pg_shdescription;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setup_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_description(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @desc_file, align 4
  %5 = call i32 @escape_quotes(i32 %4)
  %6 = call i32 @PG_CMD_PRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  %7 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @shdesc_file, align 4
  %10 = call i32 @escape_quotes(i32 %9)
  %11 = call i32 @PG_CMD_PRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %10)
  %12 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([523 x i8], [523 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 @PG_CMD_PUTS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PG_CMD_PUTS(i8*) #1

declare dso_local i32 @PG_CMD_PRINTF(i8*, i32) #1

declare dso_local i32 @escape_quotes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
