; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_help.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"PostgreSQL regression test driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Usage:\0A  %s [OPTION]... [EXTRA-TEST]...\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"      --bindir=BINPATH          use BINPATH for programs that are run;\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"                                if empty, use PATH from the environment\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"      --config-auth=DATADIR     update authentication settings for DATADIR\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"      --create-role=ROLE        create the specified role before testing\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"      --dbname=DB               use database DB (default \22regression\22)\0A\00", align 1
@.str.9 = private unnamed_addr constant [77 x i8] c"      --debug                   turn on debug mode in programs that are run\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"      --dlpath=DIR              look for dynamic libraries in DIR\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"      --encoding=ENCODING       use ENCODING as the encoding\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"  -h, --help                    show this help, then exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"      --inputdir=DIR            take input files from DIR (default \22.\22)\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"      --launcher=CMD            use CMD as launcher of psql\0A\00", align 1
@.str.15 = private unnamed_addr constant [77 x i8] c"      --load-extension=EXT      load the named extension before running the\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"                                tests; can appear multiple times\0A\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"      --load-language=LANG      load the named language before running the\0A\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"      --max-connections=N       maximum number of concurrent connections\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"                                (default is 0, meaning unlimited)\0A\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"      --max-concurrent-tests=N  maximum number of concurrent tests in schedule\0A\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"      --outputdir=DIR           place output files in DIR (default \22.\22)\0A\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"      --schedule=FILE           use test ordering schedule from FILE\0A\00", align 1
@.str.23 = private unnamed_addr constant [77 x i8] c"                                (can be used multiple times to concatenate)\0A\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"      --temp-instance=DIR       create a temporary instance in DIR\0A\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"      --use-existing            use an existing installation\0A\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"  -V, --version                 output version information, then exit\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Options for \22temp-instance\22 mode:\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"      --no-locale               use C locale\0A\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"      --port=PORT               start postmaster on PORT\0A\00", align 1
@.str.30 = private unnamed_addr constant [77 x i8] c"      --temp-config=FILE        append contents of FILE to temporary config\0A\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Options for using an existing installation:\0A\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"      --host=HOST               use postmaster running on HOST\0A\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"      --port=PORT               use postmaster running at PORT\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"      --user=USER               connect as USER\0A\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c"The exit status is 0 if all tests passed, 1 if some tests failed, and 2\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"if the tests could not be run for some reason.\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"Report bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* %1)
  %3 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* %3)
  %5 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %6 = load i8*, i8** @progname, align 8
  %7 = call i32 (i8*, ...) @printf(i8* %5, i8* %6)
  %8 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* %8)
  %10 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* %10)
  %12 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* %12)
  %14 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* %14)
  %16 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* %16)
  %18 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* %18)
  %20 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* %20)
  %22 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* %22)
  %24 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* %24)
  %26 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* %26)
  %28 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* %28)
  %30 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* %30)
  %32 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* %32)
  %34 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.15, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* %34)
  %36 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* %36)
  %38 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* %38)
  %40 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* %40)
  %42 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* %42)
  %44 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* %44)
  %46 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  %48 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* %48)
  %50 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.21, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* %50)
  %52 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* %52)
  %54 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.23, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* %54)
  %56 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.24, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* %56)
  %58 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @printf(i8* %58)
  %60 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0))
  %61 = call i32 (i8*, ...) @printf(i8* %60)
  %62 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @printf(i8* %62)
  %64 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @printf(i8* %64)
  %66 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* %66)
  %68 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  %69 = call i32 (i8*, ...) @printf(i8* %68)
  %70 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.30, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @printf(i8* %70)
  %72 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @printf(i8* %72)
  %74 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @printf(i8* %74)
  %76 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @printf(i8* %76)
  %78 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.33, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* %78)
  %80 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* %80)
  %82 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* %82)
  %84 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.35, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* %84)
  %86 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* %86)
  %88 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @printf(i8* %88)
  %90 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* %90)
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
