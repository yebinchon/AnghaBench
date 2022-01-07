; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_locale_encoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_locale_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lc_ctype = common dso_local global i8* null, align 8
@lc_collate = common dso_local global i8* null, align 8
@lc_time = common dso_local global i8* null, align 8
@lc_numeric = common dso_local global i8* null, align 8
@lc_monetary = common dso_local global i8* null, align 8
@lc_messages = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"The database cluster will be initialized with locale \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [145 x i8] c"The database cluster will be initialized with locales\0A  COLLATE:  %s\0A  CTYPE:    %s\0A  MESSAGES: %s\0A  MONETARY: %s\0A  NUMERIC:  %s\0A  TIME:     %s\0A\00", align 1
@encoding = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"could not find suitable encoding for locale \22%s\22\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Rerun %s with the -E option.\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"locale \22%s\22 requires unsupported encoding \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [101 x i8] c"Encoding \22%s\22 is not allowed as a server-side encoding.\0ARerun %s with a different locale selection.\0A\00", align 1
@encodingid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [65 x i8] c"The default database encoding has accordingly been set to \22%s\22.\0A\00", align 1
@PG_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_locale_encoding() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @setlocales()
  %3 = load i8*, i8** @lc_ctype, align 8
  %4 = load i8*, i8** @lc_collate, align 8
  %5 = call i64 @strcmp(i8* %3, i8* %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %0
  %8 = load i8*, i8** @lc_ctype, align 8
  %9 = load i8*, i8** @lc_time, align 8
  %10 = call i64 @strcmp(i8* %8, i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load i8*, i8** @lc_ctype, align 8
  %14 = load i8*, i8** @lc_numeric, align 8
  %15 = call i64 @strcmp(i8* %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load i8*, i8** @lc_ctype, align 8
  %19 = load i8*, i8** @lc_monetary, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i8*, i8** @lc_ctype, align 8
  %24 = load i8*, i8** @lc_messages, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** @lc_ctype, align 8
  %30 = call i32 (i8*, i8*, ...) @printf(i8* %28, i8* %29)
  br label %40

31:                                               ; preds = %22, %17, %12, %7, %0
  %32 = call i8* @_(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** @lc_collate, align 8
  %34 = load i8*, i8** @lc_ctype, align 8
  %35 = load i8*, i8** @lc_messages, align 8
  %36 = load i8*, i8** @lc_monetary, align 8
  %37 = load i8*, i8** @lc_numeric, align 8
  %38 = load i8*, i8** @lc_time, align 8
  %39 = call i32 (i8*, i8*, ...) @printf(i8* %32, i8* %33, i8* %34, i8* %35, i8* %36, i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* @encoding, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %84, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** @lc_ctype, align 8
  %45 = call i32 @pg_get_encoding_from_locale(i8* %44, i32 1)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i8*, i8** @lc_ctype, align 8
  %50 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i8*, i8** @progname, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %51, i8* %52, i8* %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i8*, i8** @progname, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %55, i8* %56, i8* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %43
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @pg_valid_server_encoding_id(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** @lc_ctype, align 8
  %66 = load i32, i32* %1, align 4
  %67 = call i8* @pg_encoding_to_char(i32 %66)
  %68 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @_(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* %1, align 4
  %72 = call i8* @pg_encoding_to_char(i32 %71)
  %73 = load i8*, i8** @progname, align 8
  %74 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %69, i8* %70, i8* %72, i8* %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %60
  %77 = load i32, i32* %1, align 4
  store i32 %77, i32* @encodingid, align 4
  %78 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i32, i32* @encodingid, align 4
  %80 = call i8* @pg_encoding_to_char(i32 %79)
  %81 = call i32 (i8*, i8*, ...) @printf(i8* %78, i8* %80)
  br label %82

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  br label %87

84:                                               ; preds = %40
  %85 = load i32, i32* @encoding, align 4
  %86 = call i32 @get_encoding_id(i32 %85)
  store i32 %86, i32* @encodingid, align 4
  br label %87

87:                                               ; preds = %84, %83
  %88 = load i8*, i8** @lc_ctype, align 8
  %89 = load i32, i32* @encodingid, align 4
  %90 = call i32 @check_locale_encoding(i8* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** @lc_collate, align 8
  %94 = load i32, i32* @encodingid, align 4
  %95 = call i32 @check_locale_encoding(i8* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92, %87
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %92
  ret void
}

declare dso_local i32 @setlocales(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @pg_get_encoding_from_locale(i8*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pg_valid_server_encoding_id(i32) #1

declare dso_local i8* @pg_encoding_to_char(i32) #1

declare dso_local i32 @get_encoding_id(i32) #1

declare dso_local i32 @check_locale_encoding(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
