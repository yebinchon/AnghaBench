; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_findCreateFileMode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_findCreateFileMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_OPEN_WAL = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@MAX_PATHNAME = common dso_local global i32 0, align 4
@SQLITE_OPEN_DELETEONCLOSE = common dso_local global i32 0, align 4
@SQLITE_OPEN_URI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"modeof\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64*, i64*)* @findCreateFileMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findCreateFileMode(i8* %0, i32 %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64*, i64** %9, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %10, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %22 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %5
  %27 = load i32, i32* @MAX_PATHNAME, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @sqlite3Strlen30(i8* %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %43, %26
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @sqlite3Isalnum(i8 signext %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %14, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @memcpy(i8* %31, i8* %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %31, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i32*, i32** %8, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = call i32 @getFileMode(i8* %31, i32* %64, i64* %65, i64* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %95

69:                                               ; preds = %5
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SQLITE_OPEN_DELETEONCLOSE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  store i32 384, i32* %75, align 4
  br label %94

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @SQLITE_OPEN_URI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = call i8* @sqlite3_uri_parameter(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i8*, i8** %15, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = call i32 @getFileMode(i8* %87, i32* %88, i64* %89, i64* %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94, %57
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sqlite3Strlen30(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sqlite3Isalnum(i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @getFileMode(i8*, i32*, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i8* @sqlite3_uri_parameter(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
