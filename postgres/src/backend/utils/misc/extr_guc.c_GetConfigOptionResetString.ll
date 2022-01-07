; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOptionResetString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOptionResetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i32 }
%struct.config_bool = type { i32 }
%struct.config_int = type { i32 }
%struct.config_real = type { i32 }
%struct.config_string = type { i8* }
%struct.config_enum = type { i32 }

@GetConfigOptionResetString.buffer = internal global [256 x i8] zeroinitializer, align 16
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unrecognized configuration parameter \22%s\22\00", align 1
@GUC_SUPERUSER_ONLY = common dso_local global i32 0, align 4
@DEFAULT_ROLE_READ_ALL_SETTINGS = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"must be superuser or a member of pg_read_all_settings to examine \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetConfigOptionResetString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config_generic*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @ERROR, align 4
  %7 = call %struct.config_generic* @find_option(i8* %5, i32 0, i32 %6)
  store %struct.config_generic* %7, %struct.config_generic** %4, align 8
  %8 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %9 = icmp eq %struct.config_generic* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @ERROR, align 4
  %12 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @ereport(i32 %11, i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %19 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = call i32 (...) @GetUserId()
  %26 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %27 = call i32 @is_member_of_role(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %24, %17
  %37 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %38 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %73 [
    i32 132, label %40
    i32 130, label %48
    i32 129, label %54
    i32 128, label %60
    i32 131, label %65
  ]

40:                                               ; preds = %36
  %41 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %42 = bitcast %struct.config_generic* %41 to %struct.config_bool*
  %43 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  store i8* %47, i8** %2, align 8
  br label %74

48:                                               ; preds = %36
  %49 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %50 = bitcast %struct.config_generic* %49 to %struct.config_int*
  %51 = getelementptr inbounds %struct.config_int, %struct.config_int* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOptionResetString.buffer, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOptionResetString.buffer, i64 0, i64 0), i8** %2, align 8
  br label %74

54:                                               ; preds = %36
  %55 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %56 = bitcast %struct.config_generic* %55 to %struct.config_real*
  %57 = getelementptr inbounds %struct.config_real, %struct.config_real* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOptionResetString.buffer, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOptionResetString.buffer, i64 0, i64 0), i8** %2, align 8
  br label %74

60:                                               ; preds = %36
  %61 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %62 = bitcast %struct.config_generic* %61 to %struct.config_string*
  %63 = getelementptr inbounds %struct.config_string, %struct.config_string* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %2, align 8
  br label %74

65:                                               ; preds = %36
  %66 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %67 = bitcast %struct.config_generic* %66 to %struct.config_enum*
  %68 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %69 = bitcast %struct.config_generic* %68 to %struct.config_enum*
  %70 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @config_enum_lookup_by_value(%struct.config_enum* %67, i32 %71)
  store i8* %72, i8** %2, align 8
  br label %74

73:                                               ; preds = %36
  store i8* null, i8** %2, align 8
  br label %74

74:                                               ; preds = %73, %65, %60, %54, %48, %40
  %75 = load i8*, i8** %2, align 8
  ret i8* %75
}

declare dso_local %struct.config_generic* @find_option(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @config_enum_lookup_by_value(%struct.config_enum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
