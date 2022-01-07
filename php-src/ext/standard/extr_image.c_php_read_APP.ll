; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_read_APP.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_read_APP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"APP%d\00", align 1
@M_APP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @php_read_APP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_read_APP(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call zeroext i16 @php_read2(i32* %12)
  store i16 %13, i16* %8, align 2
  %14 = load i16, i16* %8, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load i16, i16* %8, align 2
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %20, 2
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %8, align 2
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i64
  %25 = call i8* @emalloc(i64 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i16, i16* %8, align 2
  %29 = zext i16 %28 to i64
  %30 = call zeroext i16 @php_stream_read(i32* %26, i8* %27, i64 %29)
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @efree(i8* %36)
  store i32 0, i32* %4, align 4
  br label %60

38:                                               ; preds = %18
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @M_APP0, align 4
  %42 = sub i32 %40, %41
  %43 = call i32 @snprintf(i8* %39, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @Z_ARRVAL_P(i32* %44)
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32* @zend_hash_str_find(i32 %45, i8* %46, i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %54 = load i8*, i8** %9, align 8
  %55 = load i16, i16* %8, align 2
  %56 = call i32 @add_assoc_stringl(i32* %52, i8* %53, i8* %54, i16 zeroext %55)
  br label %57

57:                                               ; preds = %51, %38
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @efree(i8* %58)
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %35, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local zeroext i16 @php_read2(i32*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local zeroext i16 @php_stream_read(i32*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_assoc_stringl(i32*, i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
