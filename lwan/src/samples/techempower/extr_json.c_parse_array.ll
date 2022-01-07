; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_json.c_parse_array.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_json.c_parse_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32**)* @parse_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_array(i8** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32* (...) @json_mkarray()
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32* [ %14, %13 ], [ null, %15 ]
  store i32* %17, i32** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 91
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %78

24:                                               ; preds = %16
  %25 = call i32 @skip_space(i8** %6)
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 93
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  br label %69

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32**, i32*** %5, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32** [ %8, %37 ], [ null, %38 ]
  %41 = call i32 @parse_value(i8** %6, i32** %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %78

44:                                               ; preds = %39
  %45 = call i32 @skip_space(i8** %6)
  %46 = load i32**, i32*** %5, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @json_append_element(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 93
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %69

60:                                               ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 44
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %78

67:                                               ; preds = %60
  %68 = call i32 @skip_space(i8** %6)
  br label %34

69:                                               ; preds = %57, %30
  %70 = load i8*, i8** %6, align 8
  %71 = load i8**, i8*** %4, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32**, i32*** %5, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %7, align 8
  %76 = load i32**, i32*** %5, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %69
  store i32 1, i32* %3, align 4
  br label %81

78:                                               ; preds = %66, %43, %23
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @json_delete(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32* @json_mkarray(...) #1

declare dso_local i32 @skip_space(i8**) #1

declare dso_local i32 @parse_value(i8**, i32**) #1

declare dso_local i32 @json_append_element(i32*, i32*) #1

declare dso_local i32 @json_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
