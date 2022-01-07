; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_xml.c_parse_namespace.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_xml.c_parse_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_namespace(i32* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = call i8* @strrchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = icmp ne i8* %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @estrndup(i8* %20, i32 %27)
  %29 = load i8**, i8*** %6, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  %32 = call i8* @estrdup(i8* %31)
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  br label %40

34:                                               ; preds = %13, %3
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = call i8* @estrdup(i8* %36)
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %6, align 8
  store i8* null, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %18
  %41 = load i32, i32* @FALSE, align 4
  ret i32 %41
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i8* @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
