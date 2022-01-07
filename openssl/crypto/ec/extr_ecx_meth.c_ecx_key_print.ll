; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_key_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_key_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }

@KEY_OP_PRIVATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%*s<INVALID PRIVATE KEY>\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%*s%s Private-Key:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%*spriv:\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%*s<INVALID PUBLIC KEY>\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%*s%s Public-Key:\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%*spub:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32, i32*, i64)* @ecx_key_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_key_print(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @OBJ_nid2ln(i32 %22)
  store i8* %23, i8** %13, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @KEY_OP_PRIVATE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %5
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %27
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 (i32*, i8*, i32, i8*, ...) @BIO_printf(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %105

41:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %105

42:                                               ; preds = %30
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 (i32*, i8*, i32, i8*, ...) @BIO_printf(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %105

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 (i32*, i8*, i32, i8*, ...) @BIO_printf(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %105

55:                                               ; preds = %49
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = call i32 @KEYLEN(%struct.TYPE_9__* %60)
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 4
  %64 = call i64 @ASN1_buf_print(i32* %56, i32* %59, i32 %61, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %105

67:                                               ; preds = %55
  br label %86

68:                                               ; preds = %5
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = icmp eq %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 (i32*, i8*, i32, i8*, ...) @BIO_printf(i32* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %105

77:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %105

78:                                               ; preds = %68
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = call i64 (i32*, i8*, i32, i8*, ...) @BIO_printf(i32* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %105

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 (i32*, i8*, i32, i8*, ...) @BIO_printf(i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %105

92:                                               ; preds = %86
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = call i32 @KEYLEN(%struct.TYPE_9__* %97)
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 4
  %101 = call i64 @ASN1_buf_print(i32* %93, i32* %96, i32 %98, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %105

104:                                              ; preds = %92
  store i32 1, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %103, %91, %84, %77, %76, %66, %54, %48, %41, %40
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i64 @ASN1_buf_print(i32*, i32*, i32, i32) #1

declare dso_local i32 @KEYLEN(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
