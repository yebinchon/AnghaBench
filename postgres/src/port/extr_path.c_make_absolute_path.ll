; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_path.c_make_absolute_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_path.c_make_absolute_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"could not get current working directory: %m\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @make_absolute_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %94

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @is_absolute_path(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %78, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* @MAXPGPATH, align 8
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %52, %39, %15
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* @malloc(i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @getcwd(i8* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %53

35:                                               ; preds = %29
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @ERANGE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i64, i64* %6, align 8
  %43 = mul i64 %42, 2
  store i64 %43, i64* %6, align 8
  br label %17

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* @errno, align 4
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  br label %17

53:                                               ; preds = %34
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %55, %57
  %59 = add nsw i32 %58, 2
  %60 = call i8* @malloc(i32 %59)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %53
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @ereport(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %63, %53
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @free(i8* %76)
  br label %90

78:                                               ; preds = %11
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @strdup(i8* %79)
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %86 = call i32 @errcode(i32 %85)
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %88 = call i32 @ereport(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @canonicalize_path(i8* %91)
  %93 = load i8*, i8** %4, align 8
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %90, %10
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @getcwd(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
