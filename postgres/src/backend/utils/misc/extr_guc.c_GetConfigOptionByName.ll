; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOptionByName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOptionByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unrecognized configuration parameter \22%s\22\00", align 1
@GUC_SUPERUSER_ONLY = common dso_local global i32 0, align 4
@DEFAULT_ROLE_READ_ALL_SETTINGS = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"must be superuser or a member of pg_read_all_settings to examine \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetConfigOptionByName(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.config_generic*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @ERROR, align 4
  %11 = call %struct.config_generic* @find_option(i8* %9, i32 0, i32 %10)
  store %struct.config_generic* %11, %struct.config_generic** %8, align 8
  %12 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %13 = icmp eq %struct.config_generic* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8**, i8*** %6, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8**, i8*** %6, align 8
  store i8* null, i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  store i8* null, i8** %4, align 8
  br label %60

23:                                               ; preds = %14
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @ereport(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %32 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = call i32 (...) @GetUserId()
  %39 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %40 = call i32 @is_member_of_role(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @ereport(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %37, %30
  %50 = load i8**, i8*** %6, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %54 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %6, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %59 = call i8* @_ShowOption(%struct.config_generic* %58, i32 1)
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %57, %22
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local %struct.config_generic* @find_option(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i8* @_ShowOption(%struct.config_generic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
