; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_is_json.c_json_parse_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_is_json.c_json_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Parse string: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad string: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @json_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_parse_string(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %12)
  br label %14

14:                                               ; preds = %66, %61, %35, %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %66 [
    i32 0, label %23
    i32 92, label %24
    i32 34, label %63
  ]

23:                                               ; preds = %18
  br label %68

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %68

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %62 [
    i32 0, label %34
    i32 34, label %35
    i32 92, label %35
    i32 47, label %35
    i32 98, label %35
    i32 102, label %35
    i32 110, label %35
    i32 114, label %35
    i32 116, label %35
    i32 117, label %36
  ]

34:                                               ; preds = %29
  br label %68

35:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29
  br label %14

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = icmp slt i64 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %6, align 8
  br label %68

45:                                               ; preds = %36
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 @json_isxdigit(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %68

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %46

61:                                               ; preds = %46
  br label %14

62:                                               ; preds = %29
  br label %68

63:                                               ; preds = %18
  %64 = load i8*, i8** %6, align 8
  %65 = load i8**, i8*** %4, align 8
  store i8* %64, i8** %65, align 8
  store i32 1, i32* %3, align 4
  br label %75

66:                                               ; preds = %18
  br label %14

67:                                               ; preds = %14
  br label %68

68:                                               ; preds = %67, %62, %56, %43, %34, %28, %23
  %69 = load i8*, i8** %6, align 8
  %70 = load i8**, i8*** %4, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load i8**, i8*** %4, align 8
  store i8* %73, i8** %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @DPRINTF(i8*, i8*, i8*) #1

declare dso_local i32 @json_isxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
