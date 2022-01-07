; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_fsync_fname_ext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_fsync_fname_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_BINARY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @fsync_fname_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsync_fname_ext(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @PG_BINARY, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* %11, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %11, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @OpenTransientFile(i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EISDIR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EACCES, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 0, i32* %5, align 4
  br label %102

43:                                               ; preds = %38, %31, %25
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @EACCES, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %102

54:                                               ; preds = %49, %46, %43
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (...) @errcode_for_file_access()
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = call i32 @ereport(i32 %58, i32 %61)
  store i32 -1, i32* %5, align 4
  br label %102

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @pg_fsync(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* @errno, align 4
  %75 = load i32, i32* @EBADF, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @errno, align 4
  %79 = load i32, i32* @EINVAL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %77, %70
  %82 = load i32, i32* @errno, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @CloseTransientFile(i32 %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* @errno, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (...) @errcode_for_file_access()
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = call i32 @ereport(i32 %86, i32 %89)
  store i32 -1, i32* %5, align 4
  br label %102

91:                                               ; preds = %77, %73, %65
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @CloseTransientFile(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (...) @errcode_for_file_access()
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  %100 = call i32 @ereport(i32 %96, i32 %99)
  store i32 -1, i32* %5, align 4
  br label %102

101:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %95, %81, %57, %53, %42
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @OpenTransientFile(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @pg_fsync(i32) #1

declare dso_local i64 @CloseTransientFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
