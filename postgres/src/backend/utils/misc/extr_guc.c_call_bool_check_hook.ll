; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_call_bool_check_hook.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_call_bool_check_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_bool = type { %struct.TYPE_2__, i32 (i32*, i8**, i32)* }
%struct.TYPE_2__ = type { i32 }

@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@GUC_check_errcode_value = common dso_local global i32 0, align 4
@GUC_check_errmsg_string = common dso_local global i32* null, align 8
@GUC_check_errdetail_string = common dso_local global i32* null, align 8
@GUC_check_errhint_string = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid value for parameter \22%s\22: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_bool*, i32*, i8**, i32, i32)* @call_bool_check_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_bool_check_hook(%struct.config_bool* %0, i32* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_bool*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.config_bool* %0, %struct.config_bool** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.config_bool*, %struct.config_bool** %7, align 8
  %13 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %12, i32 0, i32 1
  %14 = load i32 (i32*, i8**, i32)*, i32 (i32*, i8**, i32)** %13, align 8
  %15 = icmp ne i32 (i32*, i8**, i32)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %65

17:                                               ; preds = %5
  %18 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  store i32 %18, i32* @GUC_check_errcode_value, align 4
  store i32* null, i32** @GUC_check_errmsg_string, align 8
  store i32* null, i32** @GUC_check_errdetail_string, align 8
  store i32* null, i32** @GUC_check_errhint_string, align 8
  %19 = load %struct.config_bool*, %struct.config_bool** %7, align 8
  %20 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %19, i32 0, i32 1
  %21 = load i32 (i32*, i8**, i32)*, i32 (i32*, i8**, i32)** %20, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 %21(i32* %22, i8** %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @GUC_check_errcode_value, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i32*, i32** @GUC_check_errmsg_string, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** @GUC_check_errmsg_string, align 8
  %35 = call i32 @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %34)
  br label %44

36:                                               ; preds = %27
  %37 = load %struct.config_bool*, %struct.config_bool** %7, align 8
  %38 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi i32 [ %35, %33 ], [ %43, %36 ]
  %46 = load i32*, i32** @GUC_check_errdetail_string, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** @GUC_check_errdetail_string, align 8
  %50 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %49)
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = load i32*, i32** @GUC_check_errhint_string, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** @GUC_check_errhint_string, align 8
  %58 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %57)
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  %62 = call i32 @ereport(i32 %28, i32 %61)
  %63 = call i32 (...) @FlushErrorState()
  store i32 0, i32* %6, align 4
  br label %65

64:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %60, %16
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32*) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32*) #1

declare dso_local i32 @errhint(i8*, i32*) #1

declare dso_local i32 @FlushErrorState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
