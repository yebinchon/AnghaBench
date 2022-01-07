; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_help.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_help.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"psql is the PostgreSQL interactive terminal.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"  psql [OPTION]... [DBNAME [USERNAME]]\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"PGDATABASE\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"  -c, --command=COMMAND    run only single command (SQL or internal) and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"  -d, --dbname=DBNAME      database name to connect to (default: \22%s\22)\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"  -f, --file=FILENAME      execute commands from file, then exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"  -l, --list               list available databases, then exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [150 x i8] c"  -v, --set=, --variable=NAME=VALUE\0A                           set psql variable NAME to VALUE\0A                           (e.g., -v ON_ERROR_STOP=1)\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"  -V, --version            output version information, then exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"  -X, --no-psqlrc          do not read startup file (~/.psqlrc)\0A\00", align 1
@.str.14 = private unnamed_addr constant [116 x i8] c"  -1 (\22one\22), --single-transaction\0A                           execute as a single transaction (if non-interactive)\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"  -?, --help[=options]     show this help, then exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"      --help=commands      list backslash commands, then exit\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"      --help=variables     list special variables, then exit\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\0AInput and output options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"  -a, --echo-all           echo all input from script\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"  -b, --echo-errors        echo failed commands\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"  -e, --echo-queries       echo commands sent to server\0A\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"  -E, --echo-hidden        display queries that internal commands generate\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"  -L, --log-file=FILENAME  send session log to file\0A\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"  -n, --no-readline        disable enhanced command line editing (readline)\0A\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"  -o, --output=FILENAME    send query results to file (or |pipe)\0A\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"  -q, --quiet              run quietly (no messages, only query output)\0A\00", align 1
@.str.27 = private unnamed_addr constant [66 x i8] c"  -s, --single-step        single-step mode (confirm each query)\0A\00", align 1
@.str.28 = private unnamed_addr constant [82 x i8] c"  -S, --single-line        single-line mode (end of line terminates SQL command)\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\0AOutput format options:\0A\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"  -A, --no-align           unaligned table output mode\0A\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"      --csv                CSV (Comma-Separated Values) table output mode\0A\00", align 1
@.str.32 = private unnamed_addr constant [112 x i8] c"  -F, --field-separator=STRING\0A                           field separator for unaligned output (default: \22%s\22)\0A\00", align 1
@DEFAULT_FIELD_SEP = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [51 x i8] c"  -H, --html               HTML table output mode\0A\00", align 1
@.str.34 = private unnamed_addr constant [79 x i8] c"  -P, --pset=VAR[=ARG]     set printing option VAR to ARG (see \\pset command)\0A\00", align 1
@.str.35 = private unnamed_addr constant [117 x i8] c"  -R, --record-separator=STRING\0A                           record separator for unaligned output (default: newline)\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"  -t, --tuples-only        print rows only\0A\00", align 1
@.str.37 = private unnamed_addr constant [80 x i8] c"  -T, --table-attr=TEXT    set HTML table tag attributes (e.g., width, border)\0A\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"  -x, --expanded           turn on expanded table output\0A\00", align 1
@.str.39 = private unnamed_addr constant [111 x i8] c"  -z, --field-separator-zero\0A                           set field separator for unaligned output to zero byte\0A\00", align 1
@.str.40 = private unnamed_addr constant [113 x i8] c"  -0, --record-separator-zero\0A                           set record separator for unaligned output to zero byte\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"PGHOST\00", align 1
@.str.43 = private unnamed_addr constant [85 x i8] c"  -h, --host=HOSTNAME      database server host or socket directory (default: \22%s\22)\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"local socket\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"PGPORT\00", align 1
@.str.46 = private unnamed_addr constant [65 x i8] c"  -p, --port=PORT          database server port (default: \22%s\22)\0A\00", align 1
@DEF_PGPORT_STR = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [63 x i8] c"  -U, --username=USERNAME  database user name (default: \22%s\22)\0A\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"  -w, --no-password        never prompt for password\0A\00", align 1
@.str.49 = private unnamed_addr constant [80 x i8] c"  -W, --password           force password prompt (should happen automatically)\0A\00", align 1
@.str.50 = private unnamed_addr constant [168 x i8] c"\0AFor more information, type \22\\?\22 (for internal commands) or \22\\help\22 (for SQL\0Acommands) from within psql, or consult the psql section in the PostgreSQL\0Adocumentation.\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"Report bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i16 %0, i16* %2, align 2
  %7 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = call i8* @get_user_name(i8** %5)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i16, i16* %2, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pset, i32 0, i32 0, i32 0), i32* null
  %26 = call i32* @PageOutput(i32 62, i32* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* %37)
  %39 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %20
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* %49, i8* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0))
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* @_(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.11, i64 0, i64 0))
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i8* @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.14, i64 0, i64 0))
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0))
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0))
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0))
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0))
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0))
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0))
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.22, i64 0, i64 0))
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0))
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.24, i64 0, i64 0))
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0))
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.26, i64 0, i64 0))
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.27, i64 0, i64 0))
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.28, i64 0, i64 0))
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* %113)
  %115 = load i32*, i32** %6, align 8
  %116 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0))
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* %116)
  %118 = load i32*, i32** %6, align 8
  %119 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0))
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* %119)
  %121 = load i32*, i32** %6, align 8
  %122 = call i8* @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.32, i64 0, i64 0))
  %123 = load i8*, i8** @DEFAULT_FIELD_SEP, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* %122, i8* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0))
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* %126)
  %128 = load i32*, i32** %6, align 8
  %129 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.34, i64 0, i64 0))
  %130 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* %129)
  %131 = load i32*, i32** %6, align 8
  %132 = call i8* @_(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.35, i64 0, i64 0))
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* %132)
  %134 = load i32*, i32** %6, align 8
  %135 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0))
  %136 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.37, i64 0, i64 0))
  %139 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.38, i64 0, i64 0))
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* %141)
  %143 = load i32*, i32** %6, align 8
  %144 = call i8* @_(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.39, i64 0, i64 0))
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* %144)
  %146 = load i32*, i32** %6, align 8
  %147 = call i8* @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.40, i64 0, i64 0))
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* %147)
  %149 = load i32*, i32** %6, align 8
  %150 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0))
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* %150)
  %152 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  store i8* %152, i8** %3, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = call i8* @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.43, i64 0, i64 0))
  %155 = load i8*, i8** %3, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %44
  %158 = load i8*, i8** %3, align 8
  br label %161

159:                                              ; preds = %44
  %160 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i8* [ %158, %157 ], [ %160, %159 ]
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* %154, i8* %162)
  %164 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0))
  store i8* %164, i8** %3, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.46, i64 0, i64 0))
  %167 = load i8*, i8** %3, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i8*, i8** %3, align 8
  br label %173

171:                                              ; preds = %161
  %172 = load i8*, i8** @DEF_PGPORT_STR, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i8* [ %170, %169 ], [ %172, %171 ]
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* %166, i8* %174)
  %176 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %176, i8** %3, align 8
  %177 = load i8*, i8** %3, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %173
  %180 = load i8*, i8** %4, align 8
  store i8* %180, i8** %3, align 8
  br label %181

181:                                              ; preds = %179, %173
  %182 = load i32*, i32** %6, align 8
  %183 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.47, i64 0, i64 0))
  %184 = load i8*, i8** %3, align 8
  %185 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* %183, i8* %184)
  %186 = load i32*, i32** %6, align 8
  %187 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i64 0, i64 0))
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* %187)
  %189 = load i32*, i32** %6, align 8
  %190 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.49, i64 0, i64 0))
  %191 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* %190)
  %192 = load i32*, i32** %6, align 8
  %193 = call i8* @_(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.50, i64 0, i64 0))
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* %193)
  %195 = load i32*, i32** %6, align 8
  %196 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0))
  %197 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* %196)
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @ClosePager(i32* %198)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @get_user_name(i8**) #1

declare dso_local i32 @pg_log_fatal(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @PageOutput(i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ClosePager(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
