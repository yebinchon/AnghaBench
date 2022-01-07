; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_engine.c_append_buf.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_engine.c_append_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"engine buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8*)* @append_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_buf(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 256, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 256
  %22 = sub nsw i32 %21, 1
  %23 = sdiv i32 %22, 256
  %24 = mul nsw i32 %23, 256
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @app_malloc(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  store i8* %28, i8** %10, align 8
  br label %79

30:                                               ; preds = %3
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 2, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 256
  %48 = sub nsw i32 %47, 1
  %49 = sdiv i32 %48, 256
  %50 = mul nsw i32 %49, 256
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @OPENSSL_realloc(i8* %52, i32 %54)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @OPENSSL_free(i8* %60)
  %62 = load i8**, i8*** %5, align 8
  store i8* null, i8** %62, align 8
  store i32 0, i32* %4, align 4
  br label %83

63:                                               ; preds = %45
  %64 = load i8*, i8** %10, align 8
  %65 = load i8**, i8*** %5, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %40
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  store i8 44, i8* %74, align 1
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  store i8 32, i8* %76, align 1
  br label %78

78:                                               ; preds = %69, %66
  br label %79

79:                                               ; preds = %78, %19
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @strcpy(i8* %80, i8* %81)
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %58
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
