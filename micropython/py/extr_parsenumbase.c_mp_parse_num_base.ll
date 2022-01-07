; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_parsenumbase.c_mp_parse_num_base.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_parsenumbase.c_mp_parse_num_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_parse_num_base(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ule i64 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %108

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %69

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 48
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 32
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  store i32 16, i32* %36, align 4
  br label %68

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, 32
  %44 = icmp eq i32 %43, 111
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  store i32 8, i32* %46, align 4
  br label %67

47:                                               ; preds = %41, %37
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 32
  %54 = icmp eq i32 %53, 98
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  store i32 2, i32* %56, align 4
  br label %66

57:                                               ; preds = %51, %47
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  store i32 10, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 -2
  store i32* %65, i32** %7, align 8
  br label %66

66:                                               ; preds = %63, %55
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %35
  br label %117

69:                                               ; preds = %25, %21
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 48
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %7, align 8
  %79 = load i32, i32* %77, align 4
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, 32
  %82 = icmp ne i32 %81, 111
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 -2
  store i32* %85, i32** %7, align 8
  br label %86

86:                                               ; preds = %83, %76
  br label %116

87:                                               ; preds = %73, %69
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 48
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %95, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, 32
  %100 = icmp ne i32 %99, 98
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 -2
  store i32* %103, i32** %7, align 8
  br label %104

104:                                              ; preds = %101, %94
  br label %115

105:                                              ; preds = %91, %87
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %107, i32** %7, align 8
  br label %108

108:                                              ; preds = %105, %13
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  store i32 10, i32* %113, align 4
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %86
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i32*, i32** %7, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = ptrtoint i32* %118 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  ret i64 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
