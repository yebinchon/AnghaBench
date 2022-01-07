; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_option.c_check_required_directory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_option.c_check_required_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not determine current directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [117 x i8] c"You must identify the directory where the %s.\0APlease use the %s command-line option or the %s environment variable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i32, i8*, i8*, i32)* @check_required_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_required_directory(i8** %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %6
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19, %6
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @getenv(i8* %25)
  store i8* %26, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %13, align 8
  %34 = call i8* @pg_strdup(i8* %33)
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  br label %64

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* @MAXPGPATH, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %14, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %15, align 8
  %44 = load i32, i32* @MAXPGPATH, align 4
  %45 = call i32 @getcwd(i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  %50 = call i8* @pg_strdup(i8* %43)
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %63

53:                                               ; preds = %36
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @canonicalize_path(i8* %67)
  br label %69

69:                                               ; preds = %65, %56
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getcwd(i8*, i32) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @canonicalize_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
