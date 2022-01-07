; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_PGTYPEStimestamp_from_asc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_PGTYPEStimestamp_from_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@MAXDATEFIELDS = common dso_local global i32 0, align 4
@MAXDATELEN = common dso_local global i32 0, align 4
@PGTYPES_TS_BAD_TIMESTAMP = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPEStimestamp_from_asc(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.tm* %9, %struct.tm** %10, align 8
  %20 = load i32, i32* @MAXDATEFIELDS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @MAXDATEFIELDS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load i32, i32* @MAXDATELEN, align 4
  %28 = load i32, i32* @MAXDATEFIELDS, align 4
  %29 = add nsw i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i8** [ %35, %34 ], [ %17, %36 ]
  store i8** %38, i8*** %18, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i32, i32* @MAXDATELEN, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @PGTYPES_TS_BAD_TIMESTAMP, align 8
  store i64 %44, i64* @errno, align 8
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %83

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i8**, i8*** %18, align 8
  %49 = call i64 @ParseDateTime(i8* %47, i8* %31, i8** %23, i32* %26, i32* %12, i8** %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.tm*, %struct.tm** %10, align 8
  %54 = call i64 @DecodeDateTime(i8** %23, i32* %26, i32 %52, i32* %11, %struct.tm* %53, i32* %8, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46
  %57 = load i64, i64* @PGTYPES_TS_BAD_TIMESTAMP, align 8
  store i64 %57, i64* @errno, align 8
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %83

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %78 [
    i32 131, label %61
    i32 129, label %70
    i32 128, label %72
    i32 130, label %75
  ]

61:                                               ; preds = %59
  %62 = load %struct.tm*, %struct.tm** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @tm2timestamp(%struct.tm* %62, i32 %63, i32* null, i32* %6)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* @PGTYPES_TS_BAD_TIMESTAMP, align 8
  store i64 %67, i64* @errno, align 8
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %83

69:                                               ; preds = %61
  br label %81

70:                                               ; preds = %59
  %71 = call i32 (...) @SetEpochTimestamp()
  store i32 %71, i32* %6, align 4
  br label %81

72:                                               ; preds = %59
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @TIMESTAMP_NOEND(i32 %73)
  br label %81

75:                                               ; preds = %59
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @TIMESTAMP_NOBEGIN(i32 %76)
  br label %81

78:                                               ; preds = %59
  %79 = load i64, i64* @PGTYPES_TS_BAD_TIMESTAMP, align 8
  store i64 %79, i64* @errno, align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %83

81:                                               ; preds = %75, %72, %70, %69
  store i64 0, i64* @errno, align 8
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %83

83:                                               ; preds = %81, %78, %66, %56, %43
  %84 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @ParseDateTime(i8*, i8*, i8**, i32*, i32*, i8**) #2

declare dso_local i64 @DecodeDateTime(i8**, i32*, i32, i32*, %struct.tm*, i32*, i32) #2

declare dso_local i32 @tm2timestamp(%struct.tm*, i32, i32*, i32*) #2

declare dso_local i32 @SetEpochTimestamp(...) #2

declare dso_local i32 @TIMESTAMP_NOEND(i32) #2

declare dso_local i32 @TIMESTAMP_NOBEGIN(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
