; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_string_to_privilege.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_string_to_privilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@ACL_INSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@ACL_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@ACL_UPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@ACL_DELETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@ACL_TRUNCATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"references\00", align 1
@ACL_REFERENCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@ACL_TRIGGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@ACL_USAGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@ACL_CREATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@ACL_CREATE_TEMP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@ACL_CONNECT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"unrecognized privilege type \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @string_to_privilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_privilege(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ACL_INSERT, align 4
  store i32 %8, i32* %2, align 4
  br label %93

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ACL_SELECT, align 4
  store i32 %14, i32* %2, align 4
  br label %93

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ACL_UPDATE, align 4
  store i32 %20, i32* %2, align 4
  br label %93

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ACL_DELETE, align 4
  store i32 %26, i32* %2, align 4
  br label %93

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ACL_TRUNCATE, align 4
  store i32 %32, i32* %2, align 4
  br label %93

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ACL_REFERENCES, align 4
  store i32 %38, i32* %2, align 4
  br label %93

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ACL_TRIGGER, align 4
  store i32 %44, i32* %2, align 4
  br label %93

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ACL_EXECUTE, align 4
  store i32 %50, i32* %2, align 4
  br label %93

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @ACL_USAGE, align 4
  store i32 %56, i32* %2, align 4
  br label %93

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ACL_CREATE, align 4
  store i32 %62, i32* %2, align 4
  br label %93

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @ACL_CREATE_TEMP, align 4
  store i32 %68, i32* %2, align 4
  br label %93

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @ACL_CREATE_TEMP, align 4
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %69
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @ACL_CONNECT, align 4
  store i32 %80, i32* %2, align 4
  br label %93

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %93

86:                                               ; preds = %81
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  %92 = call i32 @ereport(i32 %87, i32 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %86, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
