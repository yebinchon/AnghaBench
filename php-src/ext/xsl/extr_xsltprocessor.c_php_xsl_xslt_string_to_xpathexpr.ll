; ModuleID = '/home/carl/AnghaBench/php-src/ext/xsl/extr_xsltprocessor.c_php_xsl_xslt_string_to_xpathexpr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xsl/extr_xsltprocessor.c_php_xsl_xslt_string_to_xpathexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Cannot create XPath expression (string contains both quote and double-quotes)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @php_xsl_xslt_string_to_xpathexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_xsl_xslt_string_to_xpathexpr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @xmlStrlen(i8* %8)
  %10 = add nsw i32 %9, 3
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @xmlStrchr(i8* %11, i8 signext 34)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @xmlStrchr(i8* %15, i8 signext 39)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @E_WARNING, align 4
  %20 = call i32 @php_error_docref(i32* null, i32 %19, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %39

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @safe_emalloc(i32 %22, i32 1, i32 0)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @safe_emalloc(i32 %30, i32 1, i32 0)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @xmlStrlen(i8*) #1

declare dso_local i64 @xmlStrchr(i8*, i8 signext) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
