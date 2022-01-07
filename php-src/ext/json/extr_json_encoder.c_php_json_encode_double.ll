; ModuleID = '/home/carl/AnghaBench/php-src/ext/json/extr_json_encoder.c_php_json_encode_double.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/json/extr_json_encoder.c_php_json_encode_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_DOUBLE_MAX_LENGTH = common dso_local global i32 0, align 4
@serialize_precision = common dso_local global i32 0, align 4
@PHP_JSON_PRESERVE_ZERO_FRACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double, i32)* @php_json_encode_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_json_encode_double(i32* %0, double %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @PHP_DOUBLE_MAX_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load double, double* %5, align 8
  %15 = load i32, i32* @serialize_precision, align 4
  %16 = call i64 @PG(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = call i32 @php_gcvt(double %14, i32 %17, i8 signext 46, i8 signext 101, i8* %13)
  %19 = call i64 @strlen(i8* %13)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PHP_JSON_PRESERVE_ZERO_FRACTION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = call i32* @strchr(i8* %13, i8 signext 46)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @PHP_DOUBLE_MAX_LENGTH, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %13, i64 %34
  store i8 46, i8* %36, align 1
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %13, i64 %37
  store i8 48, i8* %39, align 1
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %13, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %33, %27, %24, %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @smart_str_appendl(i32* %43, i8* %13, i64 %44)
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @php_gcvt(double, i32, i8 signext, i8 signext, i8*) #2

declare dso_local i64 @PG(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @smart_str_appendl(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
