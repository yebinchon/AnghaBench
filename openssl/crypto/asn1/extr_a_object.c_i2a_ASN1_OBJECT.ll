; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_i2a_ASN1_OBJECT.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_i2a_ASN1_OBJECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ASN1_F_I2A_ASN1_OBJECT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2a_ASN1_OBJECT(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  store i8* %9, i8** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @BIO_write(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %12
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32 @i2t_ASN1_OBJECT(i8* %21, i32 80, %struct.TYPE_4__* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 79
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i8* @OPENSSL_malloc(i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @ASN1_F_I2A_ASN1_OBJECT, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @ASN1err(i32 %32, i32 %33)
  store i32 -1, i32* %3, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = call i32 @i2t_ASN1_OBJECT(i8* %36, i32 %38, %struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %35, %20
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @BIO_write(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @BIO_dump(i32* %47, i8* %51, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %41
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @BIO_write(i32* %62, i8* %63, i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @OPENSSL_free(i8* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %44, %31, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @i2t_ASN1_OBJECT(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i64 @BIO_dump(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
