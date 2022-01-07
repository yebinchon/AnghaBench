; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_exec.c_find_my_exec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_exec.c_find_my_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not identify current directory: %m\00", align 1
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid binary \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not read binary \22%s\22\00", align 1
@ERRCODE_UNDEFINED_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"could not find a \22%s\22 to execute\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_my_exec(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = call i32 @getcwd(i8* %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 (...) @errcode_for_file_access()
  %25 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i32, i32, ...) @log_error(i32 %24, i32 %25)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %139

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = call i32* @first_dir_separator(i8* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @is_absolute_path(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @MAXPGPATH, align 4
  %39 = call i32 @StrNCpy(i8* %36, i8* %37, i32 %38)
  br label %44

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @join_path_components(i8* %41, i8* %16, i8* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @canonicalize_path(i8* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @validate_exec(i8* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @resolve_symlinks(i8* %51)
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %139

53:                                               ; preds = %44
  %54 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i32, i32, ...) @log_error(i32 %55, i32 %56, i8* %57)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %139

59:                                               ; preds = %27
  %60 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %60, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %133

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %133

67:                                               ; preds = %62
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %68

68:                                               ; preds = %128, %67
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %11, align 8
  br label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %73, %71
  %77 = load i8*, i8** %11, align 8
  %78 = call i8* @first_path_var_separator(i8* %77)
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = add nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @MAXPGPATH, align 4
  %97 = call i32 @Min(i32 %95, i32 %96)
  %98 = call i32 @StrNCpy(i8* %19, i8* %88, i32 %97)
  %99 = call i64 @is_absolute_path(i8* %19)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @join_path_components(i8* %102, i8* %19, i8* %103)
  br label %112

105:                                              ; preds = %87
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @join_path_components(i8* %106, i8* %16, i8* %19)
  %108 = load i8*, i8** %5, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @join_path_components(i8* %108, i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %105, %101
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @canonicalize_path(i8* %113)
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @validate_exec(i8* %115)
  switch i32 %116, label %127 [
    i32 0, label %117
    i32 -1, label %120
    i32 -2, label %121
  ]

117:                                              ; preds = %112
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @resolve_symlinks(i8* %118)
  store i32 %119, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %139

120:                                              ; preds = %112
  br label %127

121:                                              ; preds = %112
  %122 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 (i32, i32, ...) @log_error(i32 %123, i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %112, %121, %120
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %12, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %68, label %132

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %62, %59
  %134 = load i32, i32* @ERRCODE_UNDEFINED_FILE, align 4
  %135 = call i32 @errcode(i32 %134)
  %136 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 (i32, i32, ...) @log_error(i32 %135, i32 %136, i8* %137)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %139

139:                                              ; preds = %133, %117, %53, %50, %23
  %140 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @log_error(i32, i32, ...) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32* @first_dir_separator(i8*) #2

declare dso_local i64 @is_absolute_path(i8*) #2

declare dso_local i32 @StrNCpy(i8*, i8*, i32) #2

declare dso_local i32 @join_path_components(i8*, i8*, i8*) #2

declare dso_local i32 @canonicalize_path(i8*) #2

declare dso_local i32 @validate_exec(i8*) #2

declare dso_local i32 @resolve_symlinks(i8*) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @first_path_var_separator(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
