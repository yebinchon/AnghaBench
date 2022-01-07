; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_v3_ocsp.c_i2r_ocsp_serviceloc.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_v3_ocsp.c_i2r_ocsp_serviceloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%*sIssuer: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XN_FLAG_ONELINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @i2r_ocsp_serviceloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2r_ocsp_serviceloc(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @BIO_printf(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %75

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XN_FLAG_ONELINE, align 4
  %26 = call i64 @X509_NAME_print_ex(i32* %21, i32 %24, i32 0, i32 %25)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %75

29:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sk_ACCESS_DESCRIPTION_num(i32 %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.TYPE_5__* @sk_ACCESS_DESCRIPTION_value(i32 %40, i32 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %12, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 2, %44
  %46 = call i64 @BIO_printf(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %75

49:                                               ; preds = %37
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @i2a_ASN1_OBJECT(i32* %50, i32 %53)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %75

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @BIO_puts(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %75

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @GENERAL_NAME_print(i32* %63, i32 %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %30

74:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %76

75:                                               ; preds = %69, %61, %56, %48, %28, %19
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @BIO_printf(i32*, i8*, i32, i8*) #1

declare dso_local i64 @X509_NAME_print_ex(i32*, i32, i32, i32) #1

declare dso_local i32 @sk_ACCESS_DESCRIPTION_num(i32) #1

declare dso_local %struct.TYPE_5__* @sk_ACCESS_DESCRIPTION_value(i32, i32) #1

declare dso_local i64 @i2a_ASN1_OBJECT(i32*, i32) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @GENERAL_NAME_print(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
