; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_28.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_28.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_28(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 129024
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 40960
  br i1 %13, label %14, label %85

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 40960
  br i1 %16, label %17, label %84

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 12288
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 12288
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 384, i32* %3, align 4
  br label %154

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %25, 6144
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 6144
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 2048
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 4096
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 384, i32* %3, align 4
  br label %154

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %154

42:                                               ; preds = %33, %30, %27
  store i32 384, i32* %3, align 4
  br label %154

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 8192
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 10240
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i32 384, i32* %3, align 4
  br label %154

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %3, align 4
  br label %154

52:                                               ; preds = %17
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 34816
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 36864
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 38912
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 385, i32* %3, align 4
  br label %154

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %3, align 4
  br label %154

64:                                               ; preds = %55
  br label %83

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 34816
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 14336
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 24576
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 388, i32* %3, align 4
  br label %154

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 32768
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 385, i32* %3, align 4
  br label %154

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %3, align 4
  br label %154

81:                                               ; preds = %68
  store i32 384, i32* %3, align 4
  br label %154

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %14
  store i32 385, i32* %3, align 4
  br label %154

85:                                               ; preds = %2
  %86 = load i32, i32* %7, align 4
  %87 = icmp sle i32 %86, 69632
  br i1 %87, label %88, label %126

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 69632
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 386, i32* %3, align 4
  br label %154

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp sle i32 %93, 57344
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 57344
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 387, i32* %3, align 4
  br label %154

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 43008
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 45056
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 47104
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %3, align 4
  br label %154

110:                                              ; preds = %105, %102, %99
  store i32 385, i32* %3, align 4
  br label %154

111:                                              ; preds = %92
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 65536
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 386, i32* %3, align 4
  br label %154

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 67584
  %118 = zext i1 %117 to i32
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %8, align 1
  br label %120

120:                                              ; preds = %139, %115
  %121 = load i8, i8* %8, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %3, align 4
  br label %154

125:                                              ; preds = %120
  store i32 386, i32* %3, align 4
  br label %154

126:                                              ; preds = %85
  %127 = load i32, i32* %7, align 4
  %128 = icmp sle i32 %127, 77824
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 77824
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 71680
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 73728
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %132, %129
  store i32 386, i32* %3, align 4
  br label %154

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 75776
  %142 = zext i1 %141 to i32
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %8, align 1
  br label %120

144:                                              ; preds = %126
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, 79872
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 386, i32* %3, align 4
  br label %154

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 90112
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %3, align 4
  br label %154

153:                                              ; preds = %148
  store i32 389, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %151, %147, %138, %125, %123, %114, %110, %108, %98, %91, %84, %81, %79, %78, %74, %62, %61, %50, %49, %42, %40, %39, %23
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
