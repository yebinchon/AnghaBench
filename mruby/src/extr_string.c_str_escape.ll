; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_escape.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@mrb_digitmap = common dso_local global i8* null, align 8
@MRB_STR_ASCII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @str_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_escape(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mrb_str_new_lit(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @RSTRING_PTR(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @RSTRING_END(i32 %17)
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %112, %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %115

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %11, align 1
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @IS_EVSTR(i8* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %29, %23
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 92, i8* %44, align 1
  %45 = load i8, i8* %11, align 1
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %50 = call i32 @mrb_str_cat(i32* %47, i32 %48, i8* %49, i32 2)
  br label %112

51:                                               ; preds = %37, %33
  %52 = load i8, i8* %11, align 1
  %53 = call i64 @ISPRINT(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i8, i8* %11, align 1
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %56, i8* %57, align 1
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %61 = call i32 @mrb_str_cat(i32* %58, i32 %59, i8* %60, i32 1)
  br label %112

62:                                               ; preds = %51
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  switch i32 %64, label %73 [
    i32 10, label %65
    i32 13, label %66
    i32 9, label %67
    i32 12, label %68
    i32 11, label %69
    i32 8, label %70
    i32 7, label %71
    i32 27, label %72
  ]

65:                                               ; preds = %62
  store i8 110, i8* %12, align 1
  br label %74

66:                                               ; preds = %62
  store i8 114, i8* %12, align 1
  br label %74

67:                                               ; preds = %62
  store i8 116, i8* %12, align 1
  br label %74

68:                                               ; preds = %62
  store i8 102, i8* %12, align 1
  br label %74

69:                                               ; preds = %62
  store i8 118, i8* %12, align 1
  br label %74

70:                                               ; preds = %62
  store i8 98, i8* %12, align 1
  br label %74

71:                                               ; preds = %62
  store i8 97, i8* %12, align 1
  br label %74

72:                                               ; preds = %62
  store i8 101, i8* %12, align 1
  br label %74

73:                                               ; preds = %62
  store i8 0, i8* %12, align 1
  br label %74

74:                                               ; preds = %73, %72, %71, %70, %69, %68, %67, %66, %65
  %75 = load i8, i8* %12, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 92, i8* %78, align 1
  %79 = load i8, i8* %12, align 1
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %79, i8* %80, align 1
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %84 = call i32 @mrb_str_cat(i32* %81, i32 %82, i8* %83, i32 2)
  br label %112

85:                                               ; preds = %74
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 92, i8* %86, align 1
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 120, i8* %87, align 1
  %88 = load i8*, i8** @mrb_digitmap, align 8
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i32
  %91 = srem i32 %90, 16
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 %94, i8* %95, align 1
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = sdiv i32 %97, 16
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %11, align 1
  %100 = load i8*, i8** @mrb_digitmap, align 8
  %101 = load i8, i8* %11, align 1
  %102 = zext i8 %101 to i32
  %103 = srem i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  store i8 %106, i8* %107, align 1
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %10, align 4
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %111 = call i32 @mrb_str_cat(i32* %108, i32 %109, i8* %110, i32 4)
  br label %112

112:                                              ; preds = %85, %77, %55, %43
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 8
  br label %19

115:                                              ; preds = %19
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @mrb_str_cat_lit(i32* %116, i32 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i8* @RSTRING_END(i32) #1

declare dso_local i64 @IS_EVSTR(i8*, i8*) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

declare dso_local i64 @ISPRINT(i8 zeroext) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
