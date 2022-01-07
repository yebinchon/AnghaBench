; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_PEM_proc_type.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_PEM_proc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_TYPE_ENCRYPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ENCRYPTED\00", align 1
@PEM_TYPE_MIC_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MIC-CLEAR\00", align 1
@PEM_TYPE_MIC_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"MIC-ONLY\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BAD-TYPE\00", align 1
@PEM_BUFSIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Proc-Type: 4,%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PEM_proc_type(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PEM_TYPE_ENCRYPTED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PEM_TYPE_MIC_CLEAR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PEM_TYPE_MIC_ONLY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* @PEM_BUFSIZE, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sub i64 %31, %36
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @BIO_snprintf(i8* %30, i64 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BIO_snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
