; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_randfile.c_RAND_file_name.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_randfile.c_RAND_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"RANDFILE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@RFILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4
@DEFAULT_HOME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RAND_file_name(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %8, align 4
  %9 = call i8* @ossl_safe_getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  store i32 0, i32* %8, align 4
  %17 = call i8* @ossl_safe_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18
  store i8* null, i8** %3, align 8
  br label %63

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  %35 = load i64, i64* %5, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %63

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  br label %61

42:                                               ; preds = %27
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  %45 = load i8*, i8** @RFILE, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add i64 %44, %46
  %48 = add i64 %47, 1
  %49 = load i64, i64* %5, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i8* null, i8** %3, align 8
  br label %63

52:                                               ; preds = %42
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcpy(i8* %53, i8* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcat(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** @RFILE, align 8
  %60 = call i32 @strcat(i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %52, %38
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %61, %51, %37, %26
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

declare dso_local i8* @ossl_safe_getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
