; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_ssl_srp_verify_param_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_ssl_srp_verify_param_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SRP parameters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09N=\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\09g=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"SRP param N and g are not known params, going to check deeper.\0A\00", align 1
@BN_BITS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"SRP param N and g rejected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ssl_srp_verify_param_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_srp_verify_param_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @SSL_get_srp_N(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @SSL_get_srp_g(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %83

19:                                               ; preds = %14
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %49

34:                                               ; preds = %29, %24, %19
  %35 = load i32, i32* @bio_err, align 4
  %36 = call i32 @BIO_printf(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @BIO_printf(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @bio_err, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @BN_print(i32 %39, i32* %40)
  %42 = load i32, i32* @bio_err, align 4
  %43 = call i32 @BIO_printf(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @bio_err, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @BN_print(i32 %44, i32* %45)
  %47 = load i32, i32* @bio_err, align 4
  %48 = call i32 @BIO_printf(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %34, %29
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @SRP_check_known_gN_param(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %83

55:                                               ; preds = %49
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @bio_err, align 4
  %67 = call i32 @BIO_printf(i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @BN_num_bits(i32* %69)
  %71 = load i64, i64* @BN_BITS, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i64 @srp_Verify_N_and_g(i32* %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %83

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* @bio_err, align 4
  %82 = call i32 @BIO_printf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %78, %54, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32* @SSL_get_srp_N(i32*) #1

declare dso_local i32* @SSL_get_srp_g(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @BN_print(i32, i32*) #1

declare dso_local i64 @SRP_check_known_gN_param(i32*, i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i64 @srp_Verify_N_and_g(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
