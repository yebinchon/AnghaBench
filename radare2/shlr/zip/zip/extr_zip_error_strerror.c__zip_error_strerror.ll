; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_error_strerror.c__zip_error_strerror.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_error_strerror.c__zip_error_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32, i8*, i32 }

@_zip_nerr_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown error %d\00", align 1
@_zip_err_str = common dso_local global i8** null, align 8
@_zip_err_type = common dso_local global i32* null, align 8
@ZIP_ER_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_zip_error_strerror(%struct.zip_error* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.zip_error*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.zip_error* %0, %struct.zip_error** %3, align 8
  %8 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %9 = call i32 @_zip_error_fini(%struct.zip_error* %8)
  %10 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %11 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %16 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @_zip_nerr_str, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14, %1
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %22 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %23 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i8* null, i8** %4, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8* %26, i8** %5, align 8
  br label %54

27:                                               ; preds = %14
  %28 = load i8**, i8*** @_zip_err_str, align 8
  %29 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %30 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %28, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  %35 = load i32*, i32** @_zip_err_type, align 8
  %36 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %37 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %52 [
    i32 129, label %42
    i32 128, label %47
  ]

42:                                               ; preds = %27
  %43 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %44 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @strerror(i32 %45)
  store i8* %46, i8** %5, align 8
  br label %53

47:                                               ; preds = %27
  %48 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %49 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @zError(i32 %50)
  store i8* %51, i8** %5, align 8
  br label %53

52:                                               ; preds = %27
  store i8* null, i8** %5, align 8
  br label %53

53:                                               ; preds = %52, %47, %42
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i8*, i8** %5, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  store i8* %58, i8** %2, align 8
  br label %100

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 2
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i64 [ %67, %64 ], [ 0, %68 ]
  %71 = add nsw i64 %61, %70
  %72 = add nsw i64 %71, 1
  %73 = call i64 @malloc(i64 %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %7, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i8**, i8*** @_zip_err_str, align 8
  %78 = load i64, i64* @ZIP_ER_MEMORY, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %2, align 8
  br label %100

81:                                               ; preds = %69
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i8* [ %86, %85 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %87 ]
  %90 = load i8*, i8** %4, align 8
  %91 = icmp ne i8* %90, null
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %93, i8* %94)
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.zip_error*, %struct.zip_error** %3, align 8
  %98 = getelementptr inbounds %struct.zip_error, %struct.zip_error* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %7, align 8
  store i8* %99, i8** %2, align 8
  br label %100

100:                                              ; preds = %88, %76, %57
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i32 @_zip_error_fini(%struct.zip_error*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @zError(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
