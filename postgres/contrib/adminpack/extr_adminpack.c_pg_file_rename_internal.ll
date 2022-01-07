; ModuleID = '/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_pg_file_rename_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_pg_file_rename_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W_OK = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"file \22%s\22 is not accessible: %m\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot rename to target file \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not rename \22%s\22 to \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"could not rename \22%s\22 back to \22%s\22: %m\00", align 1
@ERRCODE_UNDEFINED_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"renaming \22%s\22 to \22%s\22 was reverted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @pg_file_rename_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_file_rename_internal(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @convert_and_check_filename(i32* %12, i32 0)
  store i8* %13, i8** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i8* @convert_and_check_filename(i32* %14, i32 0)
  store i8* %15, i8** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  br label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @convert_and_check_filename(i32* %20, i32 0)
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @W_OK, align 4
  %25 = call i32 @access(i8* %23, i32 %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @WARNING, align 4
  %29 = call i32 (...) @errcode_for_file_access()
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @ereport(i32 %28, i32 %31)
  store i32 0, i32* %4, align 4
  br label %138

33:                                               ; preds = %22
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @W_OK, align 4
  %39 = call i32 @access(i8* %37, i32 %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @WARNING, align 4
  %43 = call i32 (...) @errcode_for_file_access()
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = call i32 @ereport(i32 %42, i32 %45)
  store i32 0, i32* %4, align 4
  br label %138

47:                                               ; preds = %36, %33
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  br label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i8* [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* @W_OK, align 4
  %57 = call i32 @access(i8* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60, %54
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_DUPLICATE_FILE, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load i8*, i8** %9, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = call i32 @ereport(i32 %65, i32 %75)
  br label %77

77:                                               ; preds = %73, %60
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %124

80:                                               ; preds = %77
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i64 @rename(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @ERROR, align 4
  %87 = call i32 (...) @errcode_for_file_access()
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %88, i8* %89)
  %91 = call i32 @ereport(i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @rename(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %92
  %98 = load i32, i32* @WARNING, align 4
  %99 = call i32 (...) @errcode_for_file_access()
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %100, i8* %101)
  %103 = call i32 @ereport(i32 %98, i32 %102)
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @rename(i8* %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 (...) @errcode_for_file_access()
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %111, i8* %112)
  %114 = call i32 @ereport(i32 %109, i32 %113)
  br label %122

115:                                              ; preds = %97
  %116 = load i32, i32* @ERROR, align 4
  %117 = load i32, i32* @ERRCODE_UNDEFINED_FILE, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8* %119)
  %121 = call i32 @ereport(i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %115, %108
  br label %123

123:                                              ; preds = %122, %92
  br label %137

124:                                              ; preds = %77
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i64 @rename(i8* %125, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i32, i32* @ERROR, align 4
  %131 = call i32 (...) @errcode_for_file_access()
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %132, i8* %133)
  %135 = call i32 @ereport(i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %129, %124
  br label %137

137:                                              ; preds = %136, %123
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %41, %27
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i8* @convert_and_check_filename(i32*, i32) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
