; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_is_json.c_json_parse_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_is_json.c_json_parse_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Parse array: \00", align 1
@JSON_ARRAYN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Bad array: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i64*, i64)* @json_parse_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_parse_array(i8** %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %16)
  br label %18

18:                                               ; preds = %39, %4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  %27 = call i32 @json_parse(i8** %10, i8* %23, i64* %24, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %59

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %59

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  switch i32 %38, label %57 [
    i32 44, label %39
    i32 93, label %44
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  br label %18

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* @JSON_ARRAYN, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8**, i8*** %6, align 8
  store i8* %55, i8** %56, align 8
  store i32 1, i32* %5, align 4
  br label %66

57:                                               ; preds = %35
  br label %59

58:                                               ; preds = %18
  br label %59

59:                                               ; preds = %58, %57, %34, %29
  %60 = load i8*, i8** %10, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = load i8**, i8*** %6, align 8
  store i8* %64, i8** %65, align 8
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @DPRINTF(i8*, i8*, i8*) #1

declare dso_local i32 @json_parse(i8**, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
