; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_prn.c_asn1_print_fsname.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_prn.c_asn1_print_fsname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@asn1_print_fsname.spaces = internal constant [21 x i8] c"                    \00", align 16
@asn1_print_fsname.nspaces = internal constant i32 20, align 4
@ASN1_PCTX_FLAGS_NO_STRUCT_NAME = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_NO_FIELD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*, %struct.TYPE_3__*)* @asn1_print_fsname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_print_fsname(i32* %0, i32 %1, i8* %2, i8* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  br label %12

12:                                               ; preds = %20, %5
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 20
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @BIO_write(i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @asn1_print_fsname.spaces, i64 0, i64 0), i32 20)
  %18 = icmp ne i32 %17, 20
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %90

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 20
  store i32 %22, i32* %8, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BIO_write(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @asn1_print_fsname.spaces, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %90

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ASN1_PCTX_FLAGS_NO_STRUCT_NAME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i8* null, i8** %10, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ASN1_PCTX_FLAGS_NO_FIELD_NAME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i8* null, i8** %9, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %90

53:                                               ; preds = %49, %46
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32*, i32** %7, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @BIO_puts(i32* %57, i8* %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %90

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @BIO_printf(i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %90

75:                                               ; preds = %69
  br label %83

76:                                               ; preds = %66
  %77 = load i32*, i32** %7, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i64 @BIO_puts(i32* %77, i8* %78)
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %90

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @BIO_write(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %90

89:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %88, %81, %74, %61, %52, %29, %19
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
