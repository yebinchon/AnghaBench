; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_authmethod_valid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_authmethod_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"invalid authentication method \22%s\22 for \22%s\22 connections\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8*)* @check_authmethod_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_authmethod_valid(i8* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8**, i8*** %5, align 8
  store i8** %8, i8*** %7, align 8
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i8**, i8*** %7, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %14, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %47

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strchr(i8* %21, i8 signext 32)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strchr(i8* %29, i8 signext 32)
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = call i64 @strncmp(i8* %25, i8* %27, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %47

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %7, align 8
  br label %9

42:                                               ; preds = %9
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @pg_log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %36, %19
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
