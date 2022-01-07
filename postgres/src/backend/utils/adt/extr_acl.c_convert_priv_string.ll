; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_convert_priv_string.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_convert_priv_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@ACL_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@ACL_INSERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@ACL_UPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@ACL_DELETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"TRUNCATE\00", align 1
@ACL_TRUNCATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"REFERENCES\00", align 1
@ACL_REFERENCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"TRIGGER\00", align 1
@ACL_TRIGGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"EXECUTE\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"USAGE\00", align 1
@ACL_USAGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@ACL_CREATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@ACL_CREATE_TEMP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"TEMPORARY\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@ACL_CONNECT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"RULE\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"unrecognized privilege type: \22%s\22\00", align 1
@ACL_NO_RIGHTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @convert_priv_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_priv_string(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @text_to_cstring(i32* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @pg_strcasecmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ACL_SELECT, align 4
  store i32 %11, i32* %2, align 4
  br label %97

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @pg_strcasecmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @ACL_INSERT, align 4
  store i32 %17, i32* %2, align 4
  br label %97

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @pg_strcasecmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @ACL_UPDATE, align 4
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @pg_strcasecmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ACL_DELETE, align 4
  store i32 %29, i32* %2, align 4
  br label %97

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @pg_strcasecmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ACL_TRUNCATE, align 4
  store i32 %35, i32* %2, align 4
  br label %97

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @pg_strcasecmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ACL_REFERENCES, align 4
  store i32 %41, i32* %2, align 4
  br label %97

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @pg_strcasecmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @ACL_TRIGGER, align 4
  store i32 %47, i32* %2, align 4
  br label %97

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @pg_strcasecmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @ACL_EXECUTE, align 4
  store i32 %53, i32* %2, align 4
  br label %97

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @pg_strcasecmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ACL_USAGE, align 4
  store i32 %59, i32* %2, align 4
  br label %97

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @pg_strcasecmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ACL_CREATE, align 4
  store i32 %65, i32* %2, align 4
  br label %97

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @pg_strcasecmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ACL_CREATE_TEMP, align 4
  store i32 %71, i32* %2, align 4
  br label %97

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @pg_strcasecmp(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @ACL_CREATE_TEMP, align 4
  store i32 %77, i32* %2, align 4
  br label %97

78:                                               ; preds = %72
  %79 = load i8*, i8** %4, align 8
  %80 = call i64 @pg_strcasecmp(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @ACL_CONNECT, align 4
  store i32 %83, i32* %2, align 4
  br label %97

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @pg_strcasecmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %97

89:                                               ; preds = %84
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %93)
  %95 = call i32 @ereport(i32 %90, i32 %94)
  %96 = load i32, i32* @ACL_NO_RIGHTS, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
