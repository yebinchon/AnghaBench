; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_PGTYPESinterval_from_asc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_PGTYPESinterval_from_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i64, i64 }

@MAXDATEFIELDS = common dso_local global i32 0, align 4
@MAXDATELEN = common dso_local global i32 0, align 4
@PGTYPES_INTVL_BAD_INTERVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@DTK_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PGTYPESinterval_from_asc(i8* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm, align 8
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
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.tm* %8, %struct.tm** %9, align 8
  %19 = load i32, i32* @MAXDATEFIELDS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @MAXDATEFIELDS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i32, i32* @MAXDATELEN, align 4
  %27 = load i32, i32* @MAXDATEFIELDS, align 4
  %28 = add nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8** [ %34, %33 ], [ %16, %35 ]
  store i8** %37, i8*** %17, align 8
  %38 = load %struct.tm*, %struct.tm** %9, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.tm*, %struct.tm** %9, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.tm*, %struct.tm** %9, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.tm*, %struct.tm** %9, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.tm*, %struct.tm** %9, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.tm*, %struct.tm** %9, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  store i64 0, i64* %7, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* @MAXDATELEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i64, i64* @PGTYPES_INTVL_BAD_INTERVAL, align 8
  store i64 %55, i64* @errno, align 8
  store i32* null, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %99

56:                                               ; preds = %36
  %57 = load i8*, i8** %4, align 8
  %58 = load i8**, i8*** %17, align 8
  %59 = call i64 @ParseDateTime(i8* %57, i8* %30, i8** %22, i32* %25, i32* %11, i8** %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.tm*, %struct.tm** %9, align 8
  %64 = call i64 @DecodeInterval(i8** %22, i32* %25, i32 %62, i32* %10, %struct.tm* %63, i64* %7)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.tm*, %struct.tm** %9, align 8
  %69 = call i64 @DecodeISO8601Interval(i8* %67, i32* %10, %struct.tm* %68, i64* %7)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %56
  %72 = load i64, i64* @PGTYPES_INTVL_BAD_INTERVAL, align 8
  store i64 %72, i64* @errno, align 8
  store i32* null, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %99

73:                                               ; preds = %66, %61
  %74 = call i64 @pgtypes_alloc(i32 4)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32* null, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %99

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @DTK_DELTA, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i64, i64* @PGTYPES_INTVL_BAD_INTERVAL, align 8
  store i64 %84, i64* @errno, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @free(i32* %85)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %99

87:                                               ; preds = %79
  %88 = load %struct.tm*, %struct.tm** %9, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @tm2interval(%struct.tm* %88, i64 %89, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i64, i64* @PGTYPES_INTVL_BAD_INTERVAL, align 8
  store i64 %94, i64* @errno, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @free(i32* %95)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %99

97:                                               ; preds = %87
  store i64 0, i64* @errno, align 8
  %98 = load i32*, i32** %6, align 8
  store i32* %98, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %99

99:                                               ; preds = %97, %93, %83, %78, %71, %54
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32*, i32** %3, align 8
  ret i32* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @ParseDateTime(i8*, i8*, i8**, i32*, i32*, i8**) #2

declare dso_local i64 @DecodeInterval(i8**, i32*, i32, i32*, %struct.tm*, i64*) #2

declare dso_local i64 @DecodeISO8601Interval(i8*, i32*, %struct.tm*, i64*) #2

declare dso_local i64 @pgtypes_alloc(i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @tm2interval(%struct.tm*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
