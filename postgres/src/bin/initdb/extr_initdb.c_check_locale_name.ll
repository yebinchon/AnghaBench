; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_locale_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_locale_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"setlocale() failed\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to restore old locale \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid locale name \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"invalid locale settings; check LANG and LC_* environment variables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8**)* @check_locale_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_locale_name(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  store i8* null, i8** %12, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @setlocale(i32 %14, i8* null)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %13
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @pg_strdup(i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @setlocale(i32 %28, i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i8**, i8*** %6, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @pg_strdup(i8* %37)
  %39 = load i8**, i8*** %6, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %33, %27
  %41 = load i32, i32* %4, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @setlocale(i32 %41, i8* %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %63

61:                                               ; preds = %54
  %62 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %49
  ret void
}

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
