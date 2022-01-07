; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_data_file_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_data_file_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bki_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"postgres.bki\00", align 1
@desc_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"postgres.description\00", align 1
@shdesc_file = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"postgres.shdescription\00", align 1
@hba_file = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"pg_hba.conf.sample\00", align 1
@ident_file = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"pg_ident.conf.sample\00", align 1
@conf_file = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"postgresql.conf.sample\00", align 1
@dictionary_file = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"snowball_create.sql\00", align 1
@info_schema_file = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"information_schema.sql\00", align 1
@features_file = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"sql_features.txt\00", align 1
@system_views_file = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"system_views.sql\00", align 1
@show_setting = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [188 x i8] c"VERSION=%s\0APGDATA=%s\0Ashare_path=%s\0APGPATH=%s\0APOSTGRES_SUPERUSERNAME=%s\0APOSTGRES_BKI=%s\0APOSTGRES_DESCR=%s\0APOSTGRES_SHDESCR=%s\0APOSTGRESQL_CONF_SAMPLE=%s\0APG_HBA_SAMPLE=%s\0APG_IDENT_SAMPLE=%s\0A\00", align 1
@PG_VERSION = common dso_local global i8* null, align 8
@pg_data = common dso_local global i8* null, align 8
@share_path = common dso_local global i8* null, align 8
@bin_path = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_data_file_paths() #0 {
  %1 = call i32 @set_input(i8** @bki_file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @set_input(i8** @desc_file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @set_input(i8** @shdesc_file, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @set_input(i8** @hba_file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @set_input(i8** @ident_file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @set_input(i8** @conf_file, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @set_input(i8** @dictionary_file, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @set_input(i8** @info_schema_file, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @set_input(i8** @features_file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @set_input(i8** @system_views_file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %11 = load i64, i64* @show_setting, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i64, i64* @debug, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @PG_VERSION, align 8
  %19 = load i8*, i8** @pg_data, align 8
  %20 = load i8*, i8** @share_path, align 8
  %21 = load i8*, i8** @bin_path, align 8
  %22 = load i8*, i8** @username, align 8
  %23 = load i8*, i8** @bki_file, align 8
  %24 = load i8*, i8** @desc_file, align 8
  %25 = load i8*, i8** @shdesc_file, align 8
  %26 = load i8*, i8** @conf_file, align 8
  %27 = load i8*, i8** @hba_file, align 8
  %28 = load i8*, i8** @ident_file, align 8
  %29 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.10, i64 0, i64 0), i8* %18, i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24, i8* %25, i8* %26, i8* %27, i8* %28)
  %30 = load i64, i64* @show_setting, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = call i32 @exit(i32 0) #3
  unreachable

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i8*, i8** @bki_file, align 8
  %37 = call i32 @check_input(i8* %36)
  %38 = load i8*, i8** @desc_file, align 8
  %39 = call i32 @check_input(i8* %38)
  %40 = load i8*, i8** @shdesc_file, align 8
  %41 = call i32 @check_input(i8* %40)
  %42 = load i8*, i8** @hba_file, align 8
  %43 = call i32 @check_input(i8* %42)
  %44 = load i8*, i8** @ident_file, align 8
  %45 = call i32 @check_input(i8* %44)
  %46 = load i8*, i8** @conf_file, align 8
  %47 = call i32 @check_input(i8* %46)
  %48 = load i8*, i8** @dictionary_file, align 8
  %49 = call i32 @check_input(i8* %48)
  %50 = load i8*, i8** @info_schema_file, align 8
  %51 = call i32 @check_input(i8* %50)
  %52 = load i8*, i8** @features_file, align 8
  %53 = call i32 @check_input(i8* %52)
  %54 = load i8*, i8** @system_views_file, align 8
  %55 = call i32 @check_input(i8* %54)
  ret void
}

declare dso_local i32 @set_input(i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_input(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
