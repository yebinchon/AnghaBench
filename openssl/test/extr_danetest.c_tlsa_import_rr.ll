; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_danetest.c_tlsa_import_rr.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_danetest.c_tlsa_import_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsa_field = type { i8**, i8*, i64 (i8*, i64)*, i32, i64, i32 }

@tlsa_import_rr.usage = internal global i8* null, align 8
@tlsa_import_rr.selector = internal global i8* null, align 8
@tlsa_import_rr.mtype = internal global i8* null, align 8
@tlsa_import_rr.data = internal global i8* null, align 8
@tlsa_import_rr.tlsa_fields = internal global [5 x %struct.tlsa_field] [%struct.tlsa_field { i8** @tlsa_import_rr.usage, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 (i8*, i64)* inttoptr (i64 129 to i64 (i8*, i64)*), i32 0, i64 0, i32 0 }, %struct.tlsa_field { i8** @tlsa_import_rr.selector, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 (i8*, i64)* inttoptr (i64 129 to i64 (i8*, i64)*), i32 0, i64 0, i32 0 }, %struct.tlsa_field { i8** @tlsa_import_rr.mtype, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 (i8*, i64)* inttoptr (i64 129 to i64 (i8*, i64)*), i32 0, i64 0, i32 0 }, %struct.tlsa_field { i8** @tlsa_import_rr.data, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 (i8*, i64)* inttoptr (i64 128 to i64 (i8*, i64)*), i32 0, i64 0, i32 0 }, %struct.tlsa_field zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bad TLSA %s field in: %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unusable TLSA rrdata: %s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"error loading TLSA rrdata: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @tlsa_import_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsa_import_rr(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsa_field*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.tlsa_field* getelementptr inbounds ([5 x %struct.tlsa_field], [5 x %struct.tlsa_field]* @tlsa_import_rr.tlsa_fields, i64 0, i64 0), %struct.tlsa_field** %7, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load %struct.tlsa_field*, %struct.tlsa_field** %7, align 8
  %13 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load %struct.tlsa_field*, %struct.tlsa_field** %7, align 8
  %18 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %17, i32 0, i32 2
  %19 = load i64 (i8*, i64)*, i64 (i8*, i64)** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %8, align 8
  %23 = load %struct.tlsa_field*, %struct.tlsa_field** %7, align 8
  %24 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i64 %19(i8* %22, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.tlsa_field*, %struct.tlsa_field** %7, align 8
  %30 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %33, i8* %34)
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.tlsa_field*, %struct.tlsa_field** %7, align 8
  %39 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %38, i32 1
  store %struct.tlsa_field* %39, %struct.tlsa_field** %7, align 8
  br label %11

40:                                               ; preds = %11
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** @tlsa_import_rr.usage, align 8
  %43 = load i8*, i8** @tlsa_import_rr.selector, align 8
  %44 = load i8*, i8** @tlsa_import_rr.mtype, align 8
  %45 = load i8*, i8** @tlsa_import_rr.data, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @SSL_dane_tlsa_add(i32* %41, i8* %42, i8* %43, i8* %44, i8* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** @tlsa_import_rr.data, align 8
  %49 = call i32 @OPENSSL_free(i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  store i32 0, i32* %3, align 4
  br label %63

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  store i32 0, i32* %3, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %58, %52, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @TEST_info(i8*, i8*, ...) #1

declare dso_local i32 @SSL_dane_tlsa_add(i32*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
