; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_call_string_check_hook.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_call_string_check_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_string = type { %struct.TYPE_2__, i32 (i8**, i8**, i32)* }
%struct.TYPE_2__ = type { i32 }

@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@GUC_check_errcode_value = common dso_local global i32 0, align 4
@GUC_check_errmsg_string = common dso_local global i32* null, align 8
@GUC_check_errdetail_string = common dso_local global i32* null, align 8
@GUC_check_errhint_string = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid value for parameter \22%s\22: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_string*, i8**, i8**, i32, i32)* @call_string_check_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_string_check_hook(%struct.config_string* %0, i8** %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_string*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.config_string* %0, %struct.config_string** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.config_string*, %struct.config_string** %7, align 8
  %13 = getelementptr inbounds %struct.config_string, %struct.config_string* %12, i32 0, i32 1
  %14 = load i32 (i8**, i8**, i32)*, i32 (i8**, i8**, i32)** %13, align 8
  %15 = icmp ne i32 (i8**, i8**, i32)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %72

17:                                               ; preds = %5
  %18 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  store i32 %18, i32* @GUC_check_errcode_value, align 4
  store i32* null, i32** @GUC_check_errmsg_string, align 8
  store i32* null, i32** @GUC_check_errdetail_string, align 8
  store i32* null, i32** @GUC_check_errhint_string, align 8
  %19 = load %struct.config_string*, %struct.config_string** %7, align 8
  %20 = getelementptr inbounds %struct.config_string, %struct.config_string* %19, i32 0, i32 1
  %21 = load i32 (i8**, i8**, i32)*, i32 (i8**, i8**, i32)** %20, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 %21(i8** %22, i8** %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %71, label %27

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
  br label %51

36:                                               ; preds = %27
  %37 = load %struct.config_string*, %struct.config_string** %7, align 8
  %38 = getelementptr inbounds %struct.config_string, %struct.config_string* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i8* [ %46, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %47 ]
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %49)
  br label %51

51:                                               ; preds = %48, %33
  %52 = phi i32 [ %35, %33 ], [ %50, %48 ]
  %53 = load i32*, i32** @GUC_check_errdetail_string, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** @GUC_check_errdetail_string, align 8
  %57 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %56)
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  %61 = load i32*, i32** @GUC_check_errhint_string, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32*, i32** @GUC_check_errhint_string, align 8
  %65 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %64)
  br label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ 0, %66 ]
  %69 = call i32 @ereport(i32 %28, i32 %68)
  %70 = call i32 (...) @FlushErrorState()
  store i32 0, i32* %6, align 4
  br label %72

71:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %67, %16
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32*) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @errdetail_internal(i8*, i32*) #1

declare dso_local i32 @errhint(i8*, i32*) #1

declare dso_local i32 @FlushErrorState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
