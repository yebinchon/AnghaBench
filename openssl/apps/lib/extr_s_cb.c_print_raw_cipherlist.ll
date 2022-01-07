; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_print_raw_cipherlist.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_print_raw_cipherlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_raw_cipherlist.scsv_id = internal constant [2 x i8] c"\00\FF", align 1
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Client cipher list: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SCSV\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_raw_cipherlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_raw_cipherlist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @SSL_is_server(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %83

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @SSL_get0_raw_cipherlist(i32* %14, i8** null)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i32 @OPENSSL_assert(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @SSL_get0_raw_cipherlist(i32* %20, i8** %3)
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* @bio_err, align 4
  %23 = call i32 @BIO_puts(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %73, %13
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load i32*, i32** %2, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32* @SSL_CIPHER_find(i32* %29, i8* %30)
  store i32* %31, i32** %7, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @bio_err, align 4
  %36 = call i32 @BIO_puts(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @bio_err, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @SSL_CIPHER_get_name(i32* %42)
  %44 = call i32 @BIO_puts(i32 %41, i8* %43)
  br label %72

45:                                               ; preds = %37
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @memcmp(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_raw_cipherlist.scsv_id, i64 0, i64 0), i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @bio_err, align 4
  %52 = call i32 @BIO_puts(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %71

53:                                               ; preds = %45
  %54 = load i32, i32* @bio_err, align 4
  %55 = call i32 @BIO_puts(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %67, %53
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* @bio_err, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @BIO_printf(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %56

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %3, align 8
  br label %24

80:                                               ; preds = %24
  %81 = load i32, i32* @bio_err, align 4
  %82 = call i32 @BIO_puts(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %12
  ret void
}

declare dso_local i32 @SSL_is_server(i32*) #1

declare dso_local i64 @SSL_get0_raw_cipherlist(i32*, i8**) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @SSL_CIPHER_find(i32*, i8*) #1

declare dso_local i8* @SSL_CIPHER_get_name(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
