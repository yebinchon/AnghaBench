; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_check_type_name_start.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_check_type_name_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_ID = common dso_local global i32 0, align 4
@yy_text = common dso_local global i64 0, align 8
@yy_pos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_type_name_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_type_name_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @YY_ID, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i64, i64* @yy_text, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load i64, i64* @yy_pos, align 8
  %11 = load i64, i64* @yy_text, align 8
  %12 = sub nsw i64 %10, %11
  %13 = call i64 @zend_ffi_is_typedef_name(i8* %9, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @check_ID(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %88

21:                                               ; preds = %15
  br label %86

22:                                               ; preds = %7, %1
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %84 [
    i32 143, label %24
    i32 157, label %26
    i32 148, label %28
    i32 151, label %30
    i32 150, label %32
    i32 152, label %34
    i32 154, label %36
    i32 147, label %38
    i32 144, label %40
    i32 140, label %42
    i32 139, label %44
    i32 156, label %46
    i32 136, label %48
    i32 135, label %50
    i32 146, label %52
    i32 145, label %54
    i32 153, label %56
    i32 155, label %58
    i32 134, label %60
    i32 133, label %62
    i32 149, label %64
    i32 131, label %66
    i32 130, label %68
    i32 142, label %70
    i32 129, label %72
    i32 128, label %74
    i32 141, label %76
    i32 138, label %78
    i32 137, label %80
    i32 132, label %82
  ]

24:                                               ; preds = %22
  %25 = call i32 (...) @get_sym()
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %22
  %27 = call i32 (...) @get_sym()
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %22
  %29 = call i32 (...) @get_sym()
  store i32 %29, i32* %3, align 4
  br label %85

30:                                               ; preds = %22
  %31 = call i32 (...) @get_sym()
  store i32 %31, i32* %3, align 4
  br label %85

32:                                               ; preds = %22
  %33 = call i32 (...) @get_sym()
  store i32 %33, i32* %3, align 4
  br label %85

34:                                               ; preds = %22
  %35 = call i32 (...) @get_sym()
  store i32 %35, i32* %3, align 4
  br label %85

36:                                               ; preds = %22
  %37 = call i32 (...) @get_sym()
  store i32 %37, i32* %3, align 4
  br label %85

38:                                               ; preds = %22
  %39 = call i32 (...) @get_sym()
  store i32 %39, i32* %3, align 4
  br label %85

40:                                               ; preds = %22
  %41 = call i32 (...) @get_sym()
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %22
  %43 = call i32 (...) @get_sym()
  store i32 %43, i32* %3, align 4
  br label %85

44:                                               ; preds = %22
  %45 = call i32 (...) @get_sym()
  store i32 %45, i32* %3, align 4
  br label %85

46:                                               ; preds = %22
  %47 = call i32 (...) @get_sym()
  store i32 %47, i32* %3, align 4
  br label %85

48:                                               ; preds = %22
  %49 = call i32 (...) @get_sym()
  store i32 %49, i32* %3, align 4
  br label %85

50:                                               ; preds = %22
  %51 = call i32 (...) @get_sym()
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %22
  %53 = call i32 (...) @get_sym()
  store i32 %53, i32* %3, align 4
  br label %85

54:                                               ; preds = %22
  %55 = call i32 (...) @get_sym()
  store i32 %55, i32* %3, align 4
  br label %85

56:                                               ; preds = %22
  %57 = call i32 (...) @get_sym()
  store i32 %57, i32* %3, align 4
  br label %85

58:                                               ; preds = %22
  %59 = call i32 (...) @get_sym()
  store i32 %59, i32* %3, align 4
  br label %85

60:                                               ; preds = %22
  %61 = call i32 (...) @get_sym()
  store i32 %61, i32* %3, align 4
  br label %85

62:                                               ; preds = %22
  %63 = call i32 (...) @get_sym()
  store i32 %63, i32* %3, align 4
  br label %85

64:                                               ; preds = %22
  %65 = call i32 (...) @get_sym()
  store i32 %65, i32* %3, align 4
  br label %85

66:                                               ; preds = %22
  %67 = call i32 (...) @get_sym()
  store i32 %67, i32* %3, align 4
  br label %85

68:                                               ; preds = %22
  %69 = call i32 (...) @get_sym()
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %22
  %71 = call i32 (...) @get_sym()
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %22
  %73 = call i32 (...) @get_sym()
  store i32 %73, i32* %3, align 4
  br label %85

74:                                               ; preds = %22
  %75 = call i32 (...) @get_sym()
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %22
  %77 = call i32 (...) @get_sym()
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %22
  %79 = call i32 (...) @get_sym()
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %22
  %81 = call i32 (...) @get_sym()
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %22
  %83 = call i32 (...) @get_sym()
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %88

85:                                               ; preds = %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24
  br label %86

86:                                               ; preds = %85, %21
  %87 = load i32, i32* %3, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %84, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @zend_ffi_is_typedef_name(i8*, i64) #1

declare dso_local i32 @check_ID(i32) #1

declare dso_local i32 @get_sym(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
