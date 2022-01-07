; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_get_literal.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_get_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@got_int = common dso_local global i32 0, align 4
@Ctrl_C = common dso_local global i32 0, align 4
@no_mapping = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@K_ZERO = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@allow_keys = common dso_local global i32 0, align 4
@dont_scroll = common dso_local global i8* null, align 8
@enc_dbcs = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_literal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @got_int, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @Ctrl_C, align 4
  store i32 %12, i32* %1, align 4
  br label %125

13:                                               ; preds = %0
  %14 = load i32, i32* @no_mapping, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @no_mapping, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %98, %13
  %17 = call i32 (...) @plain_vgetc()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 88
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** @TRUE, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 111
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 79
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %26
  %33 = load i8*, i8** @TRUE, align 8
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %6, align 4
  br label %80

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @vim_isxdigit(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %99

43:                                               ; preds = %38
  %44 = load i32, i32* %2, align 4
  %45 = mul nsw i32 %44, 16
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @hex2nr(i32 %46)
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 48
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 55
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %52
  br label %99

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = mul nsw i32 %60, 8
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 48
  store i32 %64, i32* %2, align 4
  br label %76

65:                                               ; preds = %49
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @VIM_ISDIGIT(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %99

70:                                               ; preds = %65
  %71 = load i32, i32* %2, align 4
  %72 = mul nsw i32 %71, 10
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 48
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %59
  br label %77

77:                                               ; preds = %76, %43
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %32
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i32, i32* %2, align 4
  %83 = icmp sgt i32 %82, 255
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 255, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %99

92:                                               ; preds = %88
  br label %98

93:                                               ; preds = %85
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 3
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %92
  br label %16

99:                                               ; preds = %96, %91, %69, %58, %42
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @K_ZERO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 10, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  store i32 %108, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %106
  br label %110

110:                                              ; preds = %109, %99
  %111 = load i32, i32* %2, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 10, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i32, i32* @no_mapping, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* @no_mapping, align 4
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @vungetc(i32 %120)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* @got_int, align 4
  %124 = load i32, i32* %2, align 4
  store i32 %124, i32* %1, align 4
  br label %125

125:                                              ; preds = %122, %11
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i32 @plain_vgetc(...) #1

declare dso_local i32 @vim_isxdigit(i32) #1

declare dso_local i32 @hex2nr(i32) #1

declare dso_local i32 @VIM_ISDIGIT(i32) #1

declare dso_local i32 @vungetc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
