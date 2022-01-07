; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_83.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_83(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 25231744
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 25231744
  %13 = icmp ule i32 %12, 8388736
  br i1 %13, label %14, label %77

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 25231744
  %17 = icmp ne i32 %16, 8388736
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 65536
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 65536
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 193, i32* %3, align 4
  br label %122

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 256
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 256
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 197, i32* %3, align 4
  br label %122

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %122

40:                                               ; preds = %31
  store i32 193, i32* %3, align 4
  br label %122

41:                                               ; preds = %28
  store i32 202, i32* %3, align 4
  br label %122

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 384
  %45 = zext i1 %44 to i32
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %8, align 1
  br label %47

47:                                               ; preds = %95, %42
  %48 = load i8, i8* %8, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 199, i32* %3, align 4
  br label %122

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %3, align 4
  br label %122

53:                                               ; preds = %18
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 65920
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 8388608
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 193, i32* %3, align 4
  br label %122

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %3, align 4
  br label %122

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 65920
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 199, i32* %3, align 4
  br label %122

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 65664
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 65792
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 202, i32* %3, align 4
  br label %122

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %3, align 4
  br label %122

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %14
  store i32 197, i32* %3, align 4
  br label %122

77:                                               ; preds = %2
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 8454400
  br i1 %79, label %80, label %106

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 8454400
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 202, i32* %3, align 4
  br label %122

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = icmp sle i32 %85, 8454144
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 8454144
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 193, i32* %3, align 4
  br label %122

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 8388864
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 202, i32* %3, align 4
  br label %122

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 8388992
  %98 = zext i1 %97 to i32
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %8, align 1
  br label %47

100:                                              ; preds = %84
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 8454272
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %3, align 4
  br label %122

105:                                              ; preds = %100
  store i32 197, i32* %3, align 4
  br label %122

106:                                              ; preds = %77
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 8454528
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 199, i32* %3, align 4
  br label %122

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 16777216
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 205, i32* %7, align 4
  br label %120

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 16777344
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %3, align 4
  br label %122

119:                                              ; preds = %114
  store i32 206, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %113
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %117, %109, %105, %103, %94, %90, %83, %76, %73, %72, %65, %60, %59, %51, %50, %41, %40, %38, %37, %24
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
