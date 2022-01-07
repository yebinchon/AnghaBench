; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_durable_rename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_durable_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_BINARY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @durable_rename(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @fsync_fname_ext(i8* %10, i32 0, i32 0, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %84

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @PG_BINARY, align 4
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @OpenTransientFile(i8* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load i32, i32* @errno, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (...) @errcode_for_file_access()
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @ereport(i32 %28, i32 %31)
  store i32 -1, i32* %4, align 4
  br label %84

33:                                               ; preds = %23
  br label %59

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @pg_fsync(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @CloseTransientFile(i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* @errno, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (...) @errcode_for_file_access()
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = call i32 @ereport(i32 %43, i32 %46)
  store i32 -1, i32* %4, align 4
  br label %84

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @CloseTransientFile(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (...) @errcode_for_file_access()
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = call i32 @ereport(i32 %53, i32 %56)
  store i32 -1, i32* %4, align 4
  br label %84

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @rename(i8* %60, i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (...) @errcode_for_file_access()
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %68)
  %70 = call i32 @ereport(i32 %65, i32 %69)
  store i32 -1, i32* %4, align 4
  br label %84

71:                                               ; preds = %59
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @fsync_fname_ext(i8* %72, i32 0, i32 0, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %84

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @fsync_parent_path(i8* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %84

83:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %82, %76, %64, %52, %38, %27, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @fsync_fname_ext(i8*, i32, i32, i32) #1

declare dso_local i32 @OpenTransientFile(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i64 @pg_fsync(i32) #1

declare dso_local i64 @CloseTransientFile(i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i64 @fsync_parent_path(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
