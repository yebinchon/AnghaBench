; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_unicode_cp_is_allowed.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_unicode_cp_is_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @unicode_cp_is_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_cp_is_allowed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %115 [
    i32 131, label %7
    i32 130, label %39
    i32 129, label %83
    i32 128, label %83
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp uge i32 %8, 32
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp ule i32 %11, 126
  br i1 %12, label %36, label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp uge i32 %23, 160
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp ule i32 %26, 55295
  br i1 %27, label %36, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp uge i32 %29, 57344
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ule i32 %32, 1114111
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br label %36

36:                                               ; preds = %34, %25, %19, %16, %13, %10
  %37 = phi i1 [ true, %25 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %116

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = icmp uge i32 %40, 32
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp ule i32 %43, 126
  br i1 %44, label %80, label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp uge i32 %46, 9
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = icmp ule i32 %49, 13
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 11
  br i1 %53, label %80, label %54

54:                                               ; preds = %51, %48, %45
  %55 = load i32, i32* %4, align 4
  %56 = icmp uge i32 %55, 160
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp ule i32 %58, 55295
  br i1 %59, label %80, label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %4, align 4
  %62 = icmp uge i32 %61, 57344
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp ule i32 %64, 1114111
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 65535
  %69 = icmp ult i32 %68, 65534
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = icmp ult i32 %71, 64976
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp ugt i32 %74, 65007
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ true, %70 ], [ %75, %73 ]
  br label %78

78:                                               ; preds = %76, %66, %63, %60
  %79 = phi i1 [ false, %66 ], [ false, %63 ], [ false, %60 ], [ %77, %76 ]
  br label %80

80:                                               ; preds = %78, %57, %51, %42
  %81 = phi i1 [ true, %57 ], [ true, %51 ], [ true, %42 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %116

83:                                               ; preds = %2, %2
  %84 = load i32, i32* %4, align 4
  %85 = icmp uge i32 %84, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp ule i32 %87, 55295
  br i1 %88, label %112, label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %112, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %112, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = icmp uge i32 %99, 57344
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp ule i32 %102, 1114111
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 65534
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 65535
  br label %110

110:                                              ; preds = %107, %104, %101, %98
  %111 = phi i1 [ false, %104 ], [ false, %101 ], [ false, %98 ], [ %109, %107 ]
  br label %112

112:                                              ; preds = %110, %95, %92, %89, %86
  %113 = phi i1 [ true, %95 ], [ true, %92 ], [ true, %89 ], [ true, %86 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %116

115:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %112, %80, %36
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
