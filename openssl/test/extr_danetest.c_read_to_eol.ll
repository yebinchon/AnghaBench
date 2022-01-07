; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_danetest.c_read_to_eol.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_danetest.c_read_to_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_to_eol.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"input too long\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"EOF before newline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @read_to_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_to_eol(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @BIO_gets(i32* %5, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0), i32 1024)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %49

9:                                                ; preds = %1
  %10 = call i32 @strlen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 10
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 1024
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @TEST_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %27

25:                                               ; preds = %18
  %26 = call i32 @TEST_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  store i8* null, i8** %2, align 8
  br label %49

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @_UC(i8 signext %37)
  %39 = call i64 @isspace(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %32, %29
  %42 = phi i1 [ false, %29 ], [ %40, %32 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 %46
  store i8 0, i8* %47, align 1
  br label %29

48:                                               ; preds = %41
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0), i8** %2, align 8
  br label %49

49:                                               ; preds = %48, %27, %8
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @_UC(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
