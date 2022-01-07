; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c_php_mail_gets.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c_php_mail_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gets_stream = common dso_local global i32 0, align 4
@GETS_FETCH_SIZE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read from socket\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to write to stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64 (i8*, i64, i8*)*, i8*, i64, i32*)* @php_mail_gets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_mail_gets(i64 (i8*, i64, i8*)* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i64 (i8*, i64, i8*)* %0, i64 (i8*, i64, i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @gets_stream, align 4
  %15 = call i64 @IMAPG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %4
  %18 = load i32, i32* @GETS_FETCH_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  br label %22

22:                                               ; preds = %59, %17
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @GETS_FETCH_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @GETS_FETCH_SIZE, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* @GETS_FETCH_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %8, align 8
  br label %39

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 %40(i8* %41, i64 %42, i8* %21)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @E_WARNING, align 4
  %47 = call i32 @php_error_docref(i32* null, i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %60

48:                                               ; preds = %39
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* @gets_stream, align 4
  %51 = call i64 @IMAPG(i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @php_stream_write(i64 %51, i8* %21, i64 %52)
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @E_WARNING, align 4
  %57 = call i32 @php_error_docref(i32* null, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %60

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  br label %22

60:                                               ; preds = %55, %45, %22
  store i8* null, i8** %5, align 8
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %83

62:                                               ; preds = %4
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  %65 = call i8* @pemalloc(i64 %64, i32 1)
  store i8* %65, i8** %13, align 8
  %66 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call i64 %66(i8* %67, i64 %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 0, i8* %75, align 1
  br label %81

76:                                               ; preds = %62
  %77 = load i32, i32* @E_WARNING, align 4
  %78 = call i32 @php_error_docref(i32* null, i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @free(i8* %79)
  store i8* null, i8** %13, align 8
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %81, %60
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

declare dso_local i64 @IMAPG(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i64 @php_stream_write(i64, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @pemalloc(i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
