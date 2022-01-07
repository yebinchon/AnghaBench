; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_get_type_str.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_get_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@soap_version = common dso_local global i32 0, align 4
@SOAP_1_2 = common dso_local global i64 0, align 8
@SOAP_1_1_ENC_NAMESPACE = common dso_local global i8* null, align 8
@SOAP_1_2_ENC_NAMESPACE = common dso_local global i8* null, align 8
@SOAP_1_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32*)* @get_type_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_type_str(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %4
  %13 = load i32, i32* @soap_version, align 4
  %14 = call i64 @SOAP_GLOBAL(i32 %13)
  %15 = load i64, i64* @SOAP_1_2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** @SOAP_1_2_ENC_NAMESPACE, align 8
  store i8* %23, i8** %6, align 8
  br label %37

24:                                               ; preds = %17, %12
  %25 = load i32, i32* @soap_version, align 4
  %26 = call i64 @SOAP_GLOBAL(i32 %25)
  %27 = load i64, i64* @SOAP_1_1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** @SOAP_1_2_ENC_NAMESPACE, align 8
  %32 = call i64 @strcmp(i8* %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %34, %29, %24
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call %struct.TYPE_3__* @encode_add_ns(i32 %38, i8* %39)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @smart_str_appends(i32* %41, i8* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @smart_str_appendc(i32* %47, i8 signext 58)
  br label %49

49:                                               ; preds = %37, %4
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 @smart_str_appendl(i32* %50, i8* %51, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @smart_str_0(i32* %55)
  ret void
}

declare dso_local i64 @SOAP_GLOBAL(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @encode_add_ns(i32, i8*) #1

declare dso_local i32 @smart_str_appends(i32*, i8*) #1

declare dso_local i32 @smart_str_appendc(i32*, i8 signext) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @smart_str_0(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
