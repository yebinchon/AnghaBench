; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_get_su_pwd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_get_su_pwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pwprompt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Enter new superuser password: \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Enter it again: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Passwords didn't match.\0A\00", align 1
@pwfilename = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for reading: %m\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"could not read password from file \22%s\22: %m\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"password file \22%s\22 is empty\00", align 1
@superuser_password = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_su_pwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_su_pwd() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @pwprompt, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fflush(i32 %9)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %12 = call i32 @simple_prompt(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 100, i32 0)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %14 = call i32 @simple_prompt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 100, i32 0)
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %17 = call i64 @strcmp(i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @fprintf(i32 %20, i8* %21)
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %7
  br label %85

25:                                               ; preds = %0
  %26 = load i32, i32* @pwfilename, align 4
  %27 = call i32* @fopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @pwfilename, align 4
  %32 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %25
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @fgets(i8* %35, i32 100, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @ferror(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @pwfilename, align 4
  %45 = call i32 @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @pwfilename, align 4
  %48 = call i32 @pg_log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %34
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %79, %51
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 10
  br label %75

75:                                               ; preds = %67, %59
  %76 = phi i1 [ true, %59 ], [ %74, %67 ]
  br label %77

77:                                               ; preds = %75, %56
  %78 = phi i1 [ false, %56 ], [ %76, %75 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 %82
  store i8 0, i8* %83, align 1
  br label %56

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %24
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %87 = call i32 @pg_strdup(i8* %86)
  store i32 %87, i32* @superuser_password, align 4
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
