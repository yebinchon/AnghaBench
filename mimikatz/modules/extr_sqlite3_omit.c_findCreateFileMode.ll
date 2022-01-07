; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_findCreateFileMode.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_findCreateFileMode.c"
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
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64*, i64** %10, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %11, align 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %24 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %5
  %29 = load i32, i32* @MAX_PATHNAME, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @sqlite3Strlen30(i8* %34)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %58, %28
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 45
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %45
  %57 = load i32, i32* @SQLITE_OK, align 4
  store i32 %57, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %72

58:                                               ; preds = %48
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %15, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @memcpy(i8* %33, i8* %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %33, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32*, i32** %9, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = call i32 @getFileMode(i8* %33, i32* %68, i64* %69, i64* %70)
  store i32 %71, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %61, %56
  %73 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %16, align 4
  switch i32 %74, label %106 [
    i32 0, label %75
    i32 1, label %104
  ]

75:                                               ; preds = %72
  br label %102

76:                                               ; preds = %5
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SQLITE_OPEN_DELETEONCLOSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  store i32 384, i32* %82, align 4
  br label %101

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @SQLITE_OPEN_URI, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @sqlite3_uri_parameter(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %90, i8** %17, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %17, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = call i32 @getFileMode(i8* %94, i32* %95, i64* %96, i64* %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %93, %88
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %72
  %105 = load i32, i32* %6, align 4
  ret i32 %105

106:                                              ; preds = %72
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sqlite3Strlen30(i8*) #2

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
