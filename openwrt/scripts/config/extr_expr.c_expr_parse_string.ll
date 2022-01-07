; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_parse_string.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_value = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@k_signed = common dso_local global i32 0, align 4
@k_unsigned = common dso_local global i32 0, align 4
@k_invalid = common dso_local global i32 0, align 4
@k_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %union.string_value*)* @expr_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_parse_string(i8* %0, i32 %1, %union.string_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.string_value*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.string_value* %2, %union.string_value** %7, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %55 [
    i32 133, label %11
    i32 129, label %11
    i32 131, label %35
    i32 132, label %42
    i32 130, label %48
    i32 128, label %48
  ]

11:                                               ; preds = %3, %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %30

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %28

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 -1
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi i32 [ 1, %20 ], [ %27, %21 ]
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi i32 [ 0, %15 ], [ %29, %28 ]
  %32 = load %union.string_value*, %union.string_value** %7, align 8
  %33 = bitcast %union.string_value* %32 to i32*
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @k_signed, align 4
  store i32 %34, i32* %4, align 4
  br label %80

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strtoll(i8* %36, i8** %8, i32 10)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %union.string_value*, %union.string_value** %7, align 8
  %40 = bitcast %union.string_value* %39 to i32*
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @k_signed, align 4
  store i32 %41, i32* %9, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strtoull(i8* %43, i8** %8, i32 16)
  %45 = load %union.string_value*, %union.string_value** %7, align 8
  %46 = bitcast %union.string_value* %45 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @k_unsigned, align 4
  store i32 %47, i32* %9, align 4
  br label %57

48:                                               ; preds = %3, %3
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @strtoll(i8* %49, i8** %8, i32 0)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %union.string_value*, %union.string_value** %7, align 8
  %53 = bitcast %union.string_value* %52 to i32*
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @k_signed, align 4
  store i32 %54, i32* %9, align 4
  br label %57

55:                                               ; preds = %3
  %56 = load i32, i32* @k_invalid, align 4
  store i32 %56, i32* %4, align 4
  br label %80

57:                                               ; preds = %48, %42, %35
  %58 = load i64, i64* @errno, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @isxdigit(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  br label %78

76:                                               ; preds = %68, %64, %60, %57
  %77 = load i32, i32* @k_string, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %55, %30
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
