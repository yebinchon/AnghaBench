; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_dfmgr.c_find_in_dynamic_libpath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_dfmgr.c_find_in_dynamic_libpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Dynamic_library_path = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"zero-length component in parameter \22dynamic_library_path\22\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"component in parameter \22dynamic_library_path\22 is not an absolute path\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DEBUG3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"find_in_dynamic_libpath: trying \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_in_dynamic_libpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_in_dynamic_libpath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @AssertArg(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @first_dir_separator(i8* %14)
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @AssertArg(i32 %17)
  %19 = load i8*, i8** @Dynamic_library_path, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @AssertState(i32 %21)
  %23 = load i8*, i8** @Dynamic_library_path, align 8
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %123

28:                                               ; preds = %1
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %121, %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @first_path_var_separator(i8* %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %6, align 8
  br label %57

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i8* @palloc(i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  %66 = call i32 @strlcpy(i8* %62, i8* %63, i64 %65)
  %67 = load i8*, i8** %7, align 8
  %68 = call i8* @substitute_libpath_macro(i8* %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @pfree(i8* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @canonicalize_path(i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @is_absolute_path(i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %57
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %57
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %86, %87
  %89 = add i64 %88, 1
  %90 = trunc i64 %89 to i32
  %91 = call i8* @palloc(i32 %90)
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %93, i8* %94)
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @pfree(i8* %96)
  %98 = load i32, i32* @DEBUG3, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @elog(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @file_exists(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %82
  %105 = load i8*, i8** %9, align 8
  store i8* %105, i8** %2, align 8
  br label %123

106:                                              ; preds = %82
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @pfree(i8* %107)
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %122

116:                                              ; preds = %106
  %117 = load i64, i64* %6, align 8
  %118 = add i64 %117, 1
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 %118
  store i8* %120, i8** %4, align 8
  br label %121

121:                                              ; preds = %116
  br label %32

122:                                              ; preds = %115
  store i8* null, i8** %2, align 8
  br label %123

123:                                              ; preds = %122, %104, %27
  %124 = load i8*, i8** %2, align 8
  ret i8* %124
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32* @first_dir_separator(i8*) #1

declare dso_local i32 @AssertState(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @first_path_var_separator(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @substitute_libpath_macro(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i64 @file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
