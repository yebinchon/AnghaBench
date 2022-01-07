; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_datetime.c_PGTYPESdate_from_asc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_datetime.c_PGTYPESdate_from_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@MAXDATEFIELDS = common dso_local global i32 0, align 4
@MAXDATELEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PGTYPES_DATE_BAD_DATE = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PGTYPESdate_from_asc(i8* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.tm* %8, %struct.tm** %9, align 8
  %20 = load i32, i32* @MAXDATEFIELDS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @MAXDATEFIELDS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i32, i32* @MAXDATELEN, align 4
  %28 = load i32, i32* @MAXDATEFIELDS, align 4
  %29 = add nsw i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i8** [ %35, %34 ], [ %16, %36 ]
  store i8** %38, i8*** %17, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* @errno, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i32, i32* @MAXDATELEN, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @PGTYPES_DATE_BAD_DATE, align 8
  store i64 %44, i64* @errno, align 8
  %45 = load i64, i64* @INT_MIN, align 8
  store i64 %45, i64* %3, align 8
  store i32 1, i32* %19, align 4
  br label %88

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i8**, i8*** %17, align 8
  %49 = call i64 @ParseDateTime(i8* %47, i8* %31, i8** %23, i32* %26, i32* %11, i8** %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.tm*, %struct.tm** %9, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i64 @DecodeDateTime(i8** %23, i32* %26, i32 %52, i32* %10, %struct.tm* %53, i32* %7, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %46
  %58 = load i64, i64* @PGTYPES_DATE_BAD_DATE, align 8
  store i64 %58, i64* @errno, align 8
  %59 = load i64, i64* @INT_MIN, align 8
  store i64 %59, i64* %3, align 8
  store i32 1, i32* %19, align 4
  br label %88

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %71 [
    i32 129, label %62
    i32 128, label %63
  ]

62:                                               ; preds = %60
  br label %74

63:                                               ; preds = %60
  %64 = load %struct.tm*, %struct.tm** %9, align 8
  %65 = call i32 @GetEpochTime(%struct.tm* %64)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* @PGTYPES_DATE_BAD_DATE, align 8
  store i64 %68, i64* @errno, align 8
  %69 = load i64, i64* @INT_MIN, align 8
  store i64 %69, i64* %3, align 8
  store i32 1, i32* %19, align 4
  br label %88

70:                                               ; preds = %63
  br label %74

71:                                               ; preds = %60
  %72 = load i64, i64* @PGTYPES_DATE_BAD_DATE, align 8
  store i64 %72, i64* @errno, align 8
  %73 = load i64, i64* @INT_MIN, align 8
  store i64 %73, i64* %3, align 8
  store i32 1, i32* %19, align 4
  br label %88

74:                                               ; preds = %70, %62
  %75 = load %struct.tm*, %struct.tm** %9, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tm*, %struct.tm** %9, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tm*, %struct.tm** %9, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @date2j(i32 %77, i32 %80, i32 %83)
  %85 = call i64 @date2j(i32 2000, i32 1, i32 1)
  %86 = sub nsw i64 %84, %85
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %3, align 8
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %74, %71, %67, %57, %43
  %89 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @ParseDateTime(i8*, i8*, i8**, i32*, i32*, i8**) #2

declare dso_local i64 @DecodeDateTime(i8**, i32*, i32, i32*, %struct.tm*, i32*, i32) #2

declare dso_local i32 @GetEpochTime(%struct.tm*) #2

declare dso_local i64 @date2j(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
