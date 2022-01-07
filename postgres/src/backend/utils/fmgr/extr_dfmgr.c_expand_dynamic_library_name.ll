; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_dfmgr.c_expand_dynamic_library_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_dfmgr.c_expand_dynamic_library_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@DLSUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @expand_dynamic_library_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_dynamic_library_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @AssertArg(i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i32* @first_dir_separator(i8* %9)
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @find_in_dynamic_libpath(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %2, align 8
  br label %66

22:                                               ; preds = %15
  br label %34

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @substitute_libpath_macro(i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @file_exists(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %2, align 8
  br label %66

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @pfree(i8* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @DLSUFFIX, align 4
  %37 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @find_in_dynamic_libpath(i8* %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pfree(i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %2, align 8
  br label %66

49:                                               ; preds = %40
  br label %63

50:                                               ; preds = %34
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @substitute_libpath_macro(i8* %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @pfree(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @file_exists(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %2, align 8
  br label %66

60:                                               ; preds = %50
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @pfree(i8* %61)
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i8*, i8** %3, align 8
  %65 = call i8* @pstrdup(i8* %64)
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %63, %58, %47, %29, %20
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i32 @AssertArg(i8*) #1

declare dso_local i32* @first_dir_separator(i8*) #1

declare dso_local i8* @find_in_dynamic_libpath(i8*) #1

declare dso_local i8* @substitute_libpath_macro(i8*) #1

declare dso_local i64 @file_exists(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @psprintf(i8*, i8*, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
