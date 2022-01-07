; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_restore.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_restore.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [72 x i8] c"%s restores a PostgreSQL database from an archive created by pg_dump.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"  %s [OPTION]... [FILE]\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\0AGeneral options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"  -d, --dbname=NAME        connect to database name\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"  -f, --file=FILENAME      output file name (- for stdout)\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"  -F, --format=c|d|t       backup file format (should be automatic)\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -l, --list               print summarized TOC of the archive\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"  -v, --verbose            verbose mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"  -V, --version            output version information, then exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"  -?, --help               show this help, then exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\0AOptions controlling the restore:\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"  -a, --data-only              restore only the data, no schema\0A\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"  -c, --clean                  clean (drop) database objects before recreating\0A\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"  -C, --create                 create the target database\0A\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"  -e, --exit-on-error          exit on error, default is to continue\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"  -I, --index=NAME             restore named index\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"  -j, --jobs=NUM               use this many parallel jobs to restore\0A\00", align 1
@.str.18 = private unnamed_addr constant [130 x i8] c"  -L, --use-list=FILENAME      use table of contents from this file for\0A                               selecting/ordering output\0A\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"  -n, --schema=NAME            restore only objects in this schema\0A\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"  -N, --exclude-schema=NAME    do not restore objects in this schema\0A\00", align 1
@.str.21 = private unnamed_addr constant [69 x i8] c"  -O, --no-owner               skip restoration of object ownership\0A\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"  -P, --function=NAME(args)    restore named function\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"  -s, --schema-only            restore only the schema, no data\0A\00", align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"  -S, --superuser=NAME         superuser user name to use for disabling triggers\0A\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"  -t, --table=NAME             restore named relation (table, view, etc.)\0A\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"  -T, --trigger=NAME           restore named trigger\0A\00", align 1
@.str.27 = private unnamed_addr constant [85 x i8] c"  -x, --no-privileges          skip restoration of access privileges (grant/revoke)\0A\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"  -1, --single-transaction     restore as a single transaction\0A\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"  --disable-triggers           disable triggers during data-only restore\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"  --enable-row-security        enable row security\0A\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"  --if-exists                  use IF EXISTS when dropping objects\0A\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"  --no-comments                do not restore comments\0A\00", align 1
@.str.33 = private unnamed_addr constant [119 x i8] c"  --no-data-for-failed-tables  do not restore data of tables that could not be\0A                               created\0A\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"  --no-publications            do not restore publications\0A\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"  --no-security-labels         do not restore security labels\0A\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"  --no-subscriptions           do not restore subscriptions\0A\00", align 1
@.str.37 = private unnamed_addr constant [70 x i8] c"  --no-tablespaces             do not restore tablespace assignments\0A\00", align 1
@.str.38 = private unnamed_addr constant [85 x i8] c"  --section=SECTION            restore named section (pre-data, data, or post-data)\0A\00", align 1
@.str.39 = private unnamed_addr constant [142 x i8] c"  --strict-names               require table and/or schema include patterns to\0A                               match at least one entity each\0A\00", align 1
@.str.40 = private unnamed_addr constant [185 x i8] c"  --use-set-session-authorization\0A                               use SET SESSION AUTHORIZATION commands instead of\0A                               ALTER OWNER commands to set ownership\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"  -h, --host=HOSTNAME      database server host or socket directory\0A\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"  -p, --port=PORT          database server port number\0A\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"  -U, --username=NAME      connect as specified database user\0A\00", align 1
@.str.45 = private unnamed_addr constant [54 x i8] c"  -w, --no-password        never prompt for password\0A\00", align 1
@.str.46 = private unnamed_addr constant [80 x i8] c"  -W, --password           force password prompt (should happen automatically)\0A\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"  --role=ROLENAME          do SET ROLE before restore\0A\00", align 1
@.str.48 = private unnamed_addr constant [125 x i8] c"\0AThe options -I, -n, -N, -P, -t, -T, and --section can be combined and specified\0Amultiple times to select multiple objects.\0A\00", align 1
@.str.49 = private unnamed_addr constant [67 x i8] c"\0AIf no input file name is supplied, then standard input is used.\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Report bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* %3, i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* %6)
  %8 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* %8, i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.13, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.18, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* %41)
  %43 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  %45 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.20, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.21, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* %51)
  %53 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.24, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* %53)
  %55 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* %55)
  %57 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* %57)
  %59 = call i8* @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* %59)
  %61 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.29, i64 0, i64 0))
  %64 = call i32 (i8*, ...) @printf(i8* %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* %65)
  %67 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0))
  %70 = call i32 (i8*, ...) @printf(i8* %69)
  %71 = call i8* @_(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.33, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* %71)
  %73 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* %73)
  %75 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0))
  %76 = call i32 (i8*, ...) @printf(i8* %75)
  %77 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @printf(i8* %77)
  %79 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.37, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* %79)
  %81 = call i8* @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.38, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* %81)
  %83 = call i8* @_(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.39, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* %83)
  %85 = call i8* @_(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.40, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @printf(i8* %85)
  %87 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0))
  %88 = call i32 (i8*, ...) @printf(i8* %87)
  %89 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* %89)
  %91 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.43, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf(i8* %91)
  %93 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @printf(i8* %93)
  %95 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.45, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* %95)
  %97 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.46, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @printf(i8* %97)
  %99 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i64 0, i64 0))
  %100 = call i32 (i8*, ...) @printf(i8* %99)
  %101 = call i8* @_(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.48, i64 0, i64 0))
  %102 = call i32 (i8*, ...) @printf(i8* %101)
  %103 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.49, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @printf(i8* %103)
  %105 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0))
  %106 = call i32 (i8*, ...) @printf(i8* %105)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
