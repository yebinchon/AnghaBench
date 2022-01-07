; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_tlsa_import_rr.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_tlsa_import_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsa_field = type { i8**, i8*, i32, i64, i32 (i8**, i64)*, i32 }

@tlsa_import_rr.usage = internal global i8* null, align 8
@tlsa_import_rr.selector = internal global i8* null, align 8
@tlsa_import_rr.mtype = internal global i8* null, align 8
@tlsa_import_rr.data = internal global i8* null, align 8
@tlsa_import_rr.tlsa_fields = internal global [5 x %struct.tlsa_field] [%struct.tlsa_field { i8** @tlsa_import_rr.usage, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 129, i64 0, i32 (i8**, i64)* null, i32 0 }, %struct.tlsa_field { i8** @tlsa_import_rr.selector, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 129, i64 0, i32 (i8**, i64)* null, i32 0 }, %struct.tlsa_field { i8** @tlsa_import_rr.mtype, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 129, i64 0, i32 (i8**, i64)* null, i32 0 }, %struct.tlsa_field { i8** @tlsa_import_rr.data, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 128, i64 0, i32 (i8**, i64)* null, i32 0 }, %struct.tlsa_field zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: warning: bad TLSA %s field in: %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: warning: unusable TLSA rrdata: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: warning: error loading TLSA rrdata: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @tlsa_import_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsa_import_rr(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tlsa_field*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.tlsa_field* getelementptr inbounds ([5 x %struct.tlsa_field], [5 x %struct.tlsa_field]* @tlsa_import_rr.tlsa_fields, i64 0, i64 0), %struct.tlsa_field** %6, align 8
  br label %11

11:                                               ; preds = %36, %2
  %12 = load %struct.tlsa_field*, %struct.tlsa_field** %6, align 8
  %13 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load %struct.tlsa_field*, %struct.tlsa_field** %6, align 8
  %18 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %17, i32 0, i32 4
  %19 = load i32 (i8**, i64)*, i32 (i8**, i64)** %18, align 8
  %20 = load %struct.tlsa_field*, %struct.tlsa_field** %6, align 8
  %21 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i32 %19(i8** %8, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i32, i32* @prog, align 4
  %28 = load %struct.tlsa_field*, %struct.tlsa_field** %6, align 8
  %29 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %27, i8* %32, i8* %33)
  store i32 0, i32* %3, align 4
  br label %70

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.tlsa_field*, %struct.tlsa_field** %6, align 8
  %38 = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %37, i32 1
  store %struct.tlsa_field* %38, %struct.tlsa_field** %6, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** @tlsa_import_rr.usage, align 8
  %42 = load i8*, i8** @tlsa_import_rr.selector, align 8
  %43 = load i8*, i8** @tlsa_import_rr.mtype, align 8
  %44 = load i8*, i8** @tlsa_import_rr.data, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @SSL_dane_tlsa_add(i32* %40, i8* %41, i8* %42, i8* %43, i8* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i8*, i8** @tlsa_import_rr.data, align 8
  %48 = call i32 @OPENSSL_free(i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i32, i32* @bio_err, align 4
  %53 = call i32 @ERR_print_errors(i32 %52)
  %54 = load i32, i32* @bio_err, align 4
  %55 = load i32, i32* @prog, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %55, i8* %56)
  store i32 0, i32* %3, align 4
  br label %70

58:                                               ; preds = %39
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* @bio_err, align 4
  %63 = call i32 @ERR_print_errors(i32 %62)
  %64 = load i32, i32* @bio_err, align 4
  %65 = load i32, i32* @prog, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %65, i8* %66)
  store i32 0, i32* %3, align 4
  br label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %61, %51, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @BIO_printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @SSL_dane_tlsa_add(i32*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
