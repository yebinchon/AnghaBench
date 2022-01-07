; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_srp.c_srp_create_user.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_srp.c_srp_create_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Creating\0A user=\22%s\22\0A g=\22%s\22\0A N=\22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Internal error creating SRP verifier\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gNid=%s salt =\22%s\22\0A verifier =\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i8**, i8*, i8*, i8*, i32)* @srp_create_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @srp_create_user(i8* %0, i8** %1, i8** %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [1025 x i8], align 16
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds [1025 x i8], [1025 x i8]* %15, i64 0, i64 0
  %25 = call i32 @password_callback(i8* %24, i32 1024, i32 1, %struct.TYPE_3__* %16)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %7
  %29 = load i32, i32* %19, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1025 x i8], [1025 x i8]* %15, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @bio_err, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 (i32, i8*, ...) @BIO_printf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds [1025 x i8], [1025 x i8]* %15, i64 0, i64 0
  %43 = load i8**, i8*** %9, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @SRP_create_verifier(i8* %41, i8* %42, i8** %18, i8** %43, i8* %44, i8* %45)
  store i8* %46, i8** %17, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @bio_err, align 4
  %50 = call i32 (i32, i8*, ...) @BIO_printf(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %54

51:                                               ; preds = %40
  %52 = load i8*, i8** %18, align 8
  %53 = load i8**, i8*** %10, align 8
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = getelementptr inbounds [1025 x i8], [1025 x i8]* %15, i64 0, i64 0
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @OPENSSL_cleanse(i8* %55, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @bio_err, align 4
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, ...) @BIO_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %63, i8* %65)
  br label %67

67:                                               ; preds = %60, %54
  br label %68

68:                                               ; preds = %67, %7
  %69 = load i8*, i8** %17, align 8
  ret i8* %69
}

declare dso_local i32 @password_callback(i8*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i8* @SRP_create_verifier(i8*, i8*, i8**, i8**, i8*, i8*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
