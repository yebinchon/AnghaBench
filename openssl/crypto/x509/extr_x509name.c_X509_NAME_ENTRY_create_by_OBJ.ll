; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509name.c_X509_NAME_ENTRY_create_by_OBJ.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509name.c_X509_NAME_ENTRY_create_by_OBJ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @X509_NAME_ENTRY_create_by_OBJ(i32** %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32**, i32*** %7, align 8
  %14 = icmp eq i32** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %5
  %20 = call i32* (...) @X509_NAME_ENTRY_new()
  store i32* %20, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32* null, i32** %6, align 8
  br label %65

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %15
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @X509_NAME_ENTRY_set_object(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %53

33:                                               ; preds = %27
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @X509_NAME_ENTRY_set_data(i32* %34, i32 %35, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  %42 = load i32**, i32*** %7, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i32**, i32*** %7, align 8
  store i32* %49, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %44, %41
  %52 = load i32*, i32** %12, align 8
  store i32* %52, i32** %6, align 8
  br label %65

53:                                               ; preds = %40, %32
  %54 = load i32**, i32*** %7, align 8
  %55 = icmp eq i32** %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %12, align 8
  %58 = load i32**, i32*** %7, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %53
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @X509_NAME_ENTRY_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %56
  store i32* null, i32** %6, align 8
  br label %65

65:                                               ; preds = %64, %51, %22
  %66 = load i32*, i32** %6, align 8
  ret i32* %66
}

declare dso_local i32* @X509_NAME_ENTRY_new(...) #1

declare dso_local i32 @X509_NAME_ENTRY_set_object(i32*, i32*) #1

declare dso_local i32 @X509_NAME_ENTRY_set_data(i32*, i32, i8*, i32) #1

declare dso_local i32 @X509_NAME_ENTRY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
