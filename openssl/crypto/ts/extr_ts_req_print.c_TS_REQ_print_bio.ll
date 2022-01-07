; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_req_print.c_TS_REQ_print_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_req_print.c_TS_REQ_print_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Policy OID: \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Nonce: \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Certificate required: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_REQ_print_bio(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @TS_REQ_get_version(%struct.TYPE_5__* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @TS_MSG_IMPRINT_print_bio(i32* %17, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call i32* @TS_REQ_get_policy_id(%struct.TYPE_5__* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %35

31:                                               ; preds = %11
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @TS_OBJ_print_bio(i32* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %51

45:                                               ; preds = %35
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @TS_ASN1_INTEGER_print_bio(i32* %46, i32* %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @BIO_write(i32* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %61 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @TS_ext_print_bio(i32* %62, i32 %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %51, %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @TS_REQ_get_version(%struct.TYPE_5__*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @TS_MSG_IMPRINT_print_bio(i32*, i32) #1

declare dso_local i32* @TS_REQ_get_policy_id(%struct.TYPE_5__*) #1

declare dso_local i32 @TS_OBJ_print_bio(i32*, i32*) #1

declare dso_local i32 @TS_ASN1_INTEGER_print_bio(i32*, i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @TS_ext_print_bio(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
