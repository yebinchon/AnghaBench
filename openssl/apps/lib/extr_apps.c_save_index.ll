; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_save_index.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_save_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@BSIZE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"file name too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s.attr\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.attr.%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"unable to open '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unique_subject = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_index(i8* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load i32, i32* @BSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = mul nuw i64 3, %14
  %17 = alloca i8, i64 %16, align 16
  store i64 %14, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 6
  %25 = load i32, i32* @BSIZE, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32*, i32** @bio_err, align 8
  %29 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %102

30:                                               ; preds = %3
  %31 = mul nsw i64 2, %14
  %32 = getelementptr inbounds i8, i8* %17, i64 %31
  %33 = mul nsw i64 2, %14
  %34 = getelementptr inbounds i8, i8* %17, i64 %33
  %35 = trunc i64 %14 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %32, i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = mul nsw i64 1, %14
  %39 = getelementptr inbounds i8, i8* %17, i64 %38
  %40 = mul nsw i64 1, %14
  %41 = getelementptr inbounds i8, i8* %17, i64 %40
  %42 = trunc i64 %14 to i32
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %39, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44)
  store i32 %45, i32* %11, align 4
  %46 = mul nsw i64 0, %14
  %47 = getelementptr inbounds i8, i8* %17, i64 %46
  %48 = mul nsw i64 0, %14
  %49 = getelementptr inbounds i8, i8* %17, i64 %48
  %50 = trunc i64 %14 to i32
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %47, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = mul nsw i64 0, %14
  %55 = getelementptr inbounds i8, i8* %17, i64 %54
  %56 = call i32* @BIO_new_file(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %30
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @perror(i8* %60)
  %62 = load i32*, i32** @bio_err, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %102

65:                                               ; preds = %30
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @TXT_DB_write(i32* %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @BIO_free(i32* %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %102

76:                                               ; preds = %65
  %77 = mul nsw i64 1, %14
  %78 = getelementptr inbounds i8, i8* %17, i64 %77
  %79 = call i32* @BIO_new_file(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = mul nsw i64 2, %14
  %84 = getelementptr inbounds i8, i8* %17, i64 %83
  %85 = call i32 @perror(i8* %84)
  %86 = load i32*, i32** @bio_err, align 8
  %87 = mul nsw i64 2, %14
  %88 = getelementptr inbounds i8, i8* %17, i64 %87
  %89 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %102

90:                                               ; preds = %76
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %99 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @BIO_free(i32* %100)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %103

102:                                              ; preds = %82, %75, %59, %27
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @BIO_new_file(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @TXT_DB_write(i32*, i32) #2

declare dso_local i32 @BIO_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
