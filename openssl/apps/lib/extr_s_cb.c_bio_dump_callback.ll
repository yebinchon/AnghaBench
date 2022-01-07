; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_bio_dump_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_bio_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_CB_READ = common dso_local global i32 0, align 4
@BIO_CB_RETURN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"read from %p [%p] (%lu bytes => %ld (0x%lX))\0A\00", align 1
@BIO_CB_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"write to %p [%p] (%lu bytes => %ld (0x%lX))\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bio_dump_callback(i32* %0, i32 %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @BIO_get_callback_arg(i32* %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i64, i64* %13, align 8
  store i64 %21, i64* %7, align 8
  br label %68

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BIO_CB_READ, align 4
  %25 = load i32, i32* @BIO_CB_RETURN, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32*, i32** %14, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @BIO_printf(i32* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i64 %34, i64 %35, i64 %36)
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %13, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @BIO_dump(i32* %38, i8* %39, i32 %41)
  %43 = load i64, i64* %13, align 8
  store i64 %43, i64* %7, align 8
  br label %68

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BIO_CB_WRITE, align 4
  %47 = load i32, i32* @BIO_CB_RETURN, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @BIO_printf(i32* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i64 %56, i64 %57, i64 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %13, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @BIO_dump(i32* %60, i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %50, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %66, %28, %20
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i64 @BIO_get_callback_arg(i32*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @BIO_dump(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
