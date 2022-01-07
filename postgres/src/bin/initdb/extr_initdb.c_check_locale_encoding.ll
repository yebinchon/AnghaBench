; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_locale_encoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_locale_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_SQL_ASCII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"encoding mismatch\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [273 x i8] c"The encoding you selected (%s) and the encoding that the\0Aselected locale uses (%s) do not match.  This would lead to\0Amisbehavior in various character string processing functions.\0ARerun %s and either do not specify an encoding explicitly,\0Aor choose a matching combination.\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@PG_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_locale_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_locale_encoding(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @pg_get_encoding_from_locale(i8* %7, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PG_SQL_ASCII, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PG_SQL_ASCII, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = call i32 @pg_log_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* @_(i8* getelementptr inbounds ([273 x i8], [273 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @pg_encoding_to_char(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @pg_encoding_to_char(i32 %29)
  %31 = load i8*, i8** @progname, align 8
  %32 = call i32 @fprintf(i32 %25, i8* %26, i8* %28, i8* %30, i8* %31)
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %19, %16, %12, %2
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @pg_get_encoding_from_locale(i8*, i32) #1

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @pg_encoding_to_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
