; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_validate_option_array_item.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_validate_option_array_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i64 }

@WARNING = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unrecognized configuration parameter \22%s\22\00", align 1
@GUC_CUSTOM_PLACEHOLDER = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"permission denied to set parameter \22%s\22\00", align 1
@PGC_USERSET = common dso_local global i64 0, align 8
@PGC_SUSET = common dso_local global i64 0, align 8
@PGC_S_TEST = common dso_local global i32 0, align 4
@GUC_ACTION_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @validate_option_array_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_option_array_item(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.config_generic*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @WARNING, align 4
  %11 = call %struct.config_generic* @find_option(i8* %9, i32 1, i32 %10)
  store %struct.config_generic* %11, %struct.config_generic** %8, align 8
  %12 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %13 = icmp ne %struct.config_generic* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %84

18:                                               ; preds = %14
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %27 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GUC_CUSTOM_PLACEHOLDER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = call i64 (...) @superuser()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %84

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %84

40:                                               ; preds = %36
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %25
  %48 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %49 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PGC_USERSET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %70

54:                                               ; preds = %47
  %55 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %56 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PGC_SUSET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = call i64 (...) @superuser()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %69

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %84

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 (...) @superuser()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @PGC_SUSET, align 8
  br label %79

77:                                               ; preds = %70
  %78 = load i64, i64* @PGC_USERSET, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32, i32* @PGC_S_TEST, align 4
  %82 = load i32, i32* @GUC_ACTION_SET, align 4
  %83 = call i32 @set_config_option(i8* %71, i8* %72, i64 %80, i32 %81, i32 %82, i32 0, i32 0, i32 0)
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %67, %39, %35, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.config_generic* @find_option(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @superuser(...) #1

declare dso_local i32 @set_config_option(i8*, i8*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
