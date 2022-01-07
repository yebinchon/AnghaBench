; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c__sapi_cgi_putenv.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c__sapi_cgi_putenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*)* @_sapi_cgi_putenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_sapi_cgi_putenv(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i64 [ %15, %13 ], [ 0, %16 ]
  %19 = add i64 %10, %18
  %20 = add i64 %19, 2
  %21 = add i64 %20, 2
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @malloc(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @getenv(i8* %28)
  store i8* %29, i8** %4, align 8
  br label %56

30:                                               ; preds = %17
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, 1
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 (i8*, i64, i8*, i8*, ...) @slprintf(i8* %34, i64 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @putenv(i8* %40)
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, 1
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 (i8*, i64, i8*, i8*, ...) @slprintf(i8* %46, i64 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i64 %50, i64* %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @putenv(i8* %51)
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @getenv(i8* %54)
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %53, %27
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @slprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @putenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
