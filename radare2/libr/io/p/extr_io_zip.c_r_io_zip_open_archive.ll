; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_open_archive.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_open_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ZIP File Error: Invalid file name (NULL).\0A\00", align 1
@ZIP_ER_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ZIP File Error: File could not be opened file name.\0A\00", align 1
@ZIP_ER_NOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ZIP File Error: File does not exist.\0A\00", align 1
@ZIP_ER_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ZIP File Error: Read error occurred.\0A\00", align 1
@ZIP_ER_NOZIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"ZIP File Error: File is not a valid ZIP archive.\0A\00", align 1
@ZIP_ER_INCONS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"ZIP File Error: ZIP file had some inconsistencies archive.\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"ZIP File Error: Something bad happened, get your debug on.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip* @r_io_zip_open_archive(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zip*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.zip* null, %struct.zip** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.zip* null, %struct.zip** %5, align 8
  br label %66

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.zip* @zip_open(i8* %16, i32 %17, i32* %11)
  store %struct.zip* %18, %struct.zip** %10, align 8
  %19 = icmp ne %struct.zip* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.zip*, %struct.zip** %10, align 8
  store %struct.zip* %21, %struct.zip** %5, align 8
  br label %66

22:                                               ; preds = %15
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @ZIP_ER_INVAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %65

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ZIP_ER_OPEN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @eprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %64

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ZIP_ER_NOENT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %63

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ZIP_ER_READ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %62

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ZIP_ER_INCONS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @eprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  br label %60

58:                                               ; preds = %52
  %59 = call i32 @eprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %26
  store %struct.zip* null, %struct.zip** %5, align 8
  br label %66

66:                                               ; preds = %65, %20, %14
  %67 = load %struct.zip*, %struct.zip** %5, align 8
  ret %struct.zip* %67
}

declare dso_local %struct.zip* @zip_open(i8*, i32, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
