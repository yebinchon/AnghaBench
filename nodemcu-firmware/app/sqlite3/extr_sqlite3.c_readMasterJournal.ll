; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_readMasterJournal.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_readMasterJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@aJournalMagic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @readMasterJournal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readMasterJournal(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sqlite3OsFileSize(i32* %17, i32* %10)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %68, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %68, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 16
  %28 = call i32 @read32bits(i32* %25, i32 %27, i32* %9)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %68, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %68, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 12
  %42 = call i32 @read32bits(i32* %39, i32 %41, i32* %11)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 8
  %50 = call i32 (i32*, ...) @sqlite3OsRead(i32* %46, i8* %47, i32 8, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %54 = load i32, i32* @aJournalMagic, align 4
  %55 = call i64 @memcmp(i8* %53, i32 %54, i32 8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 16
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 (i32*, ...) @sqlite3OsRead(i32* %59, i8* %60, i32 %61, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = icmp ne i32 %58, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57, %52, %44, %37, %34, %30, %23, %20, %3
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %97

70:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* @SQLITE_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %91, %68
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @sqlite3OsFileSize(i32*, i32*) #1

declare dso_local i32 @read32bits(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3OsRead(i32*, ...) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
