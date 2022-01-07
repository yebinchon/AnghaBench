; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_size.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32 }

@ZIP_EF_LOCAL = common dso_local global i32 0, align 4
@LENTRYSIZE = common dso_local global i32 0, align 4
@CDENTRYSIZE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_dirent_size(i32* %0, i32 %1, %struct.zip_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_error*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.zip_error* %2, %struct.zip_error** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ZIP_EF_LOCAL, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @LENTRYSIZE, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CDENTRYSIZE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 26, i32 28
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i64 @fseek(i32* %24, i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %34 = load i32, i32* @ZIP_ER_SEEK, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @_zip_error_set(%struct.zip_error* %33, i32 %34, i32 %35)
  store i32 -1, i32* %4, align 4
  br label %71

37:                                               ; preds = %22
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 4, i32 6
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @fread(i8* %38, i32 %42, i32 1, i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %48 = load i32, i32* @ZIP_ER_READ, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @_zip_error_set(%struct.zip_error* %47, i32 %48, i32 %49)
  store i32 -1, i32* %4, align 4
  br label %71

51:                                               ; preds = %37
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  store i8* %52, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %66, %51
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 3
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = call i64 @_zip_read2(i8** %12)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %46, %32
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @_zip_read2(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
