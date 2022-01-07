; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_php_ap_getword_conf.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_php_ap_getword_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @php_ap_getword_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_ap_getword_conf(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i8* @estrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %77

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %50

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %6, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = trunc i64 %46 to i32
  %48 = load i8, i8* %6, align 1
  %49 = call i8* @substring_conf(i8* %44, i32 %47, i8 signext %48)
  store i8* %49, i8** %3, align 8
  br label %77

50:                                               ; preds = %34
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %65, %50
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  br label %52

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i8* @substring_conf(i8* %69, i32 %75, i8 signext 0)
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %68, %39, %27
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i8* @substring_conf(i8*, i32, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
