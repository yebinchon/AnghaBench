; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_get_cookie.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_get_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"HTTP_COOKIE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CGI_get_cookie(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  store i32* %0, i32** %3, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** %2, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = call i64 @mymalloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strcpy(i8* %18, i8* %19)
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %26, %12
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %24 = call i8* @scanattr(i8* %22, i8** %23)
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %29 = load i8*, i8** %28, align 16
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @CGI_add_var(i32* %27, i8* %29, i8* %31)
  store i32* %32, i32** %3, align 8
  br label %21

33:                                               ; preds = %21
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32*, i32** %3, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %33, %10
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @mymalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i8* @scanattr(i8*, i8**) #1

declare dso_local i32* @CGI_add_var(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
