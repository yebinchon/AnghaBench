; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_print_bignum_var.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_print_bignum_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"    static unsigned char %s_%d[] = {\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A        0x00\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\0A        \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0A    };\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_bignum_var(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @BN_is_zero(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %66

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @BN_bn2bin(i32* %24, i8* %25)
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %62, %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = srem i32 %33, 10
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %32, i8* %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %61

52:                                               ; preds = %31
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %27

65:                                               ; preds = %27
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
