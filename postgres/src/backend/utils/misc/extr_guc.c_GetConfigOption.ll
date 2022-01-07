; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOption.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GetConfigOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i32 }
%struct.config_bool = type { i32* }
%struct.config_int = type { i32* }
%struct.config_real = type { i32* }
%struct.config_string = type { i8** }
%struct.config_enum = type { i32* }

@GetConfigOption.buffer = internal global [256 x i8] zeroinitializer, align 16
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
define dso_local i8* @GetConfigOption(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.config_generic*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @ERROR, align 4
  %11 = call %struct.config_generic* @find_option(i8* %9, i32 0, i32 %10)
  store %struct.config_generic* %11, %struct.config_generic** %8, align 8
  %12 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %13 = icmp eq %struct.config_generic* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %90

18:                                               ; preds = %14
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %30 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = call i32 (...) @GetUserId()
  %37 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %38 = call i32 @is_member_of_role(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %35, %28, %25
  %48 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %49 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %89 [
    i32 132, label %51
    i32 130, label %60
    i32 129, label %67
    i32 128, label %74
    i32 131, label %80
  ]

51:                                               ; preds = %47
  %52 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %53 = bitcast %struct.config_generic* %52 to %struct.config_bool*
  %54 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  store i8* %59, i8** %4, align 8
  br label %90

60:                                               ; preds = %47
  %61 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %62 = bitcast %struct.config_generic* %61 to %struct.config_int*
  %63 = getelementptr inbounds %struct.config_int, %struct.config_int* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOption.buffer, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOption.buffer, i64 0, i64 0), i8** %4, align 8
  br label %90

67:                                               ; preds = %47
  %68 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %69 = bitcast %struct.config_generic* %68 to %struct.config_real*
  %70 = getelementptr inbounds %struct.config_real, %struct.config_real* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOption.buffer, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @GetConfigOption.buffer, i64 0, i64 0), i8** %4, align 8
  br label %90

74:                                               ; preds = %47
  %75 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %76 = bitcast %struct.config_generic* %75 to %struct.config_string*
  %77 = getelementptr inbounds %struct.config_string, %struct.config_string* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %4, align 8
  br label %90

80:                                               ; preds = %47
  %81 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %82 = bitcast %struct.config_generic* %81 to %struct.config_enum*
  %83 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %84 = bitcast %struct.config_generic* %83 to %struct.config_enum*
  %85 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @config_enum_lookup_by_value(%struct.config_enum* %82, i32 %87)
  store i8* %88, i8** %4, align 8
  br label %90

89:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %90

90:                                               ; preds = %89, %80, %74, %67, %60, %51, %17
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
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
