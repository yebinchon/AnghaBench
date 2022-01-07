; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_parse_query_string.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_parse_query_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"Parsing query string: we cannot parse a query string so big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @url_parse_query_string(i8* %0, i64 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

20:                                               ; preds = %4
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %82, %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %15, align 1
  %45 = load i8*, i8** %13, align 8
  store i8 0, i8* %45, align 1
  br label %49

46:                                               ; preds = %28
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %12, align 8
  store i8* null, i8** %13, align 8
  br label %49

49:                                               ; preds = %46, %32
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %16, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %87

59:                                               ; preds = %49
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @url_decode_r(i8* %60, i8* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %88

66:                                               ; preds = %59
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strlen(i8* %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %16, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %13, align 8
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i8, i8* %15, align 1
  %80 = load i8*, i8** %14, align 8
  store i8 %79, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %24

87:                                               ; preds = %57, %24
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %65, %19
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @url_decode_r(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
