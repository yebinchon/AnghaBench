; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_depend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_depend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setup_depend.pg_depend_setup = internal constant [28 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [25 x i8] c"DELETE FROM pg_depend;\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"VACUUM pg_depend;\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"DELETE FROM pg_shdepend;\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"VACUUM pg_shdepend;\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_class;\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_proc;\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_type;\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_cast;\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_constraint;\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_conversion;\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_attrdef;\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_language;\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_operator;\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_opclass;\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [77 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_opfamily;\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_am;\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_amop;\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_amproc;\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_rewrite;\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [76 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_trigger;\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [107 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_namespace     WHERE nspname LIKE 'pg%';\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [78 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_ts_parser;\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_ts_dict;\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [80 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_ts_template;\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [78 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_ts_config;\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [78 x i8] c"INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p'  FROM pg_collation;\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"INSERT INTO pg_shdepend SELECT 0,0,0,0, tableoid,oid, 'p'  FROM pg_authid;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setup_depend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_depend(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  store i8** getelementptr inbounds ([28 x i8*], [28 x i8*]* @setup_depend.pg_depend_setup, i64 0, i64 0), i8*** %3, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @PG_CMD_PUTS(i8* %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %3, align 8
  br label %4

15:                                               ; preds = %4
  ret void
}

declare dso_local i32 @PG_CMD_PUTS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
