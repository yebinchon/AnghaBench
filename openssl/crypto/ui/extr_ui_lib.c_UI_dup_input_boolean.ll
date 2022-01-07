; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_UI_dup_input_boolean.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_UI_dup_input_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UI_F_UI_DUP_INPUT_BOOLEAN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@UIT_BOOLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_dup_input_boolean(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %7
  %23 = load i8*, i8** %10, align 8
  %24 = call i8* @OPENSSL_strdup(i8* %23)
  store i8* %24, i8** %16, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @UI_F_UI_DUP_INPUT_BOOLEAN, align 4
  %29 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %30 = call i32 @UIerr(i32 %28, i32 %29)
  br label %81

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %7
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @OPENSSL_strdup(i8* %36)
  store i8* %37, i8** %17, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @UI_F_UI_DUP_INPUT_BOOLEAN, align 4
  %42 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %43 = call i32 @UIerr(i32 %41, i32 %42)
  br label %81

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @OPENSSL_strdup(i8* %49)
  store i8* %50, i8** %18, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @UI_F_UI_DUP_INPUT_BOOLEAN, align 4
  %55 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %56 = call i32 @UIerr(i32 %54, i32 %55)
  br label %81

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i8*, i8** %13, align 8
  %63 = call i8* @OPENSSL_strdup(i8* %62)
  store i8* %63, i8** %19, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @UI_F_UI_DUP_INPUT_BOOLEAN, align 4
  %68 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %69 = call i32 @UIerr(i32 %67, i32 %68)
  br label %81

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i32*, i32** %9, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load i32, i32* @UIT_BOOLEAN, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @general_allocate_boolean(i32* %72, i8* %73, i8* %74, i8* %75, i8* %76, i32 1, i32 %77, i32 %78, i8* %79)
  store i32 %80, i32* %8, align 4
  br label %90

81:                                               ; preds = %66, %53, %40, %27
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @OPENSSL_free(i8* %82)
  %84 = load i8*, i8** %17, align 8
  %85 = call i32 @OPENSSL_free(i8* %84)
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @OPENSSL_free(i8* %86)
  %88 = load i8*, i8** %19, align 8
  %89 = call i32 @OPENSSL_free(i8* %88)
  store i32 -1, i32* %8, align 4
  br label %90

90:                                               ; preds = %81, %71
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local i32 @general_allocate_boolean(i32*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
