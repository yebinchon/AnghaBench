; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_quoter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_quoter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"''\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8**, i64*, i32)* @oci_handle_quoter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_handle_quoter(i32* %0, i8* %1, i64 %2, i8** %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %6
  %22 = load i64*, i64** %12, align 8
  store i64 2, i64* %22, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  %26 = call i8* @emalloc(i64 %25)
  %27 = load i8**, i8*** %11, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %110

31:                                               ; preds = %6
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %15, align 8
  br label %33

33:                                               ; preds = %38, %31
  %34 = load i8*, i8** %15, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 39)
  store i8* %35, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %15, align 8
  br label %33

43:                                               ; preds = %33
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = add i64 %47, 2
  %49 = load i64*, i64** %12, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  %53 = call i8* @emalloc(i64 %52)
  store i8* %53, i8** %18, align 8
  %54 = load i8**, i8*** %11, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %18, align 8
  store i8 39, i8* %55, align 1
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** %16, align 8
  br label %58

58:                                               ; preds = %82, %43
  %59 = load i8*, i8** %16, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 39)
  store i8* %60, i8** %17, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i8*, i8** %18, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = add nsw i64 %69, 1
  %71 = call i32 @strncpy(i8* %63, i8* %64, i64 %70)
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = add nsw i64 %76, 1
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %18, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %18, align 8
  store i8 39, i8* %80, align 1
  br label %82

82:                                               ; preds = %62
  %83 = load i8*, i8** %17, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %16, align 8
  br label %58

85:                                               ; preds = %58
  %86 = load i8*, i8** %18, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = load i8**, i8*** %11, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sub i64 %89, %95
  %97 = sub i64 %96, 1
  %98 = call i32 @strncpy(i8* %86, i8* %87, i64 %97)
  %99 = load i8**, i8*** %11, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 39, i8* %104, align 1
  %105 = load i8**, i8*** %11, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 0, i8* %109, align 1
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %85, %21
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
