; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__pep3118_letter_to_type.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__pep3118_letter_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_BOOL = common dso_local global i32 0, align 4
@NPY_BYTE = common dso_local global i32 0, align 4
@NPY_UBYTE = common dso_local global i32 0, align 4
@NPY_SHORT = common dso_local global i32 0, align 4
@NPY_INT16 = common dso_local global i32 0, align 4
@NPY_USHORT = common dso_local global i32 0, align 4
@NPY_UINT16 = common dso_local global i32 0, align 4
@NPY_INT = common dso_local global i32 0, align 4
@NPY_INT32 = common dso_local global i32 0, align 4
@NPY_UINT = common dso_local global i32 0, align 4
@NPY_UINT32 = common dso_local global i32 0, align 4
@NPY_LONG = common dso_local global i32 0, align 4
@NPY_ULONG = common dso_local global i32 0, align 4
@NPY_LONGLONG = common dso_local global i32 0, align 4
@NPY_INT64 = common dso_local global i32 0, align 4
@NPY_ULONGLONG = common dso_local global i32 0, align 4
@NPY_UINT64 = common dso_local global i32 0, align 4
@NPY_HALF = common dso_local global i32 0, align 4
@NPY_CFLOAT = common dso_local global i32 0, align 4
@NPY_FLOAT = common dso_local global i32 0, align 4
@NPY_CDOUBLE = common dso_local global i32 0, align 4
@NPY_DOUBLE = common dso_local global i32 0, align 4
@NPY_CLONGDOUBLE = common dso_local global i32 0, align 4
@NPY_LONGDOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32, i32)* @_pep3118_letter_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pep3118_letter_to_type(i8 signext %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i8, i8* %5, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %123 [
    i32 63, label %10
    i32 98, label %12
    i32 66, label %14
    i32 104, label %16
    i32 72, label %25
    i32 105, label %34
    i32 73, label %43
    i32 108, label %52
    i32 76, label %61
    i32 113, label %70
    i32 81, label %79
    i32 101, label %88
    i32 102, label %90
    i32 100, label %99
    i32 103, label %108
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @NPY_BOOL, align 4
  store i32 %11, i32* %4, align 4
  br label %124

12:                                               ; preds = %3
  %13 = load i32, i32* @NPY_BYTE, align 4
  store i32 %13, i32* %4, align 4
  br label %124

14:                                               ; preds = %3
  %15 = load i32, i32* @NPY_UBYTE, align 4
  store i32 %15, i32* %4, align 4
  br label %124

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @NPY_SHORT, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @NPY_INT16, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %4, align 4
  br label %124

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @NPY_USHORT, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @NPY_UINT16, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %4, align 4
  br label %124

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @NPY_INT, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @NPY_INT32, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %4, align 4
  br label %124

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @NPY_UINT, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @NPY_UINT32, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %4, align 4
  br label %124

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @NPY_LONG, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @NPY_INT32, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %4, align 4
  br label %124

61:                                               ; preds = %3
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @NPY_ULONG, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @NPY_UINT32, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %4, align 4
  br label %124

70:                                               ; preds = %3
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @NPY_LONGLONG, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @NPY_INT64, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %4, align 4
  br label %124

79:                                               ; preds = %3
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @NPY_ULONGLONG, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @NPY_UINT64, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %4, align 4
  br label %124

88:                                               ; preds = %3
  %89 = load i32, i32* @NPY_HALF, align 4
  store i32 %89, i32* %4, align 4
  br label %124

90:                                               ; preds = %3
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @NPY_CFLOAT, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @NPY_FLOAT, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %4, align 4
  br label %124

99:                                               ; preds = %3
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @NPY_CDOUBLE, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @NPY_DOUBLE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %4, align 4
  br label %124

108:                                              ; preds = %3
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @NPY_CLONGDOUBLE, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @NPY_LONGDOUBLE, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  br label %121

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ -1, %120 ]
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %121, %106, %97, %88, %86, %77, %68, %59, %50, %41, %32, %23, %14, %12, %10
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
