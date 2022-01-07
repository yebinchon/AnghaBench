; ModuleID = '/home/carl/AnghaBench/nuklear/doc/extr_stddoc.c_main.c'
source_filename = "/home/carl/AnghaBench/nuklear/doc/extr_stddoc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"<meta charset='utf-8' emacsmode='-*- markdown -*-'>\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"<link rel='stylesheet' href='https://casual-effects.com/markdeep/latest/apidoc.css?'>\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"<script>markdeepOptions={tocStyle:'medium'};</script>\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"<!-- Markdeep: --><script src='https://casual-effects.com/markdeep/latest/markdeep.min.js?'></script>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %131, %33, %0
  %9 = load i32, i32* @stdin, align 4
  %10 = call i32 @feof(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %132

13:                                               ; preds = %8
  %14 = load i32, i32* @stdin, align 4
  %15 = call i32 @getc(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %35

24:                                               ; preds = %21, %18, %13
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @putc(i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 13
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %8

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %2, align 4
  %37 = icmp sle i32 %36, 2
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %131

50:                                               ; preds = %44, %41, %38, %35
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %130

65:                                               ; preds = %59, %56, %53, %50
  %66 = load i32, i32* %3, align 4
  %67 = icmp sle i32 %66, 2
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %129

80:                                               ; preds = %74, %71, %68, %65
  %81 = load i32, i32* %3, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, i32* %2, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %128

95:                                               ; preds = %89, %86, %83, %80
  %96 = load i32, i32* %4, align 4
  %97 = icmp sle i32 %96, 2
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 35
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %2, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %127

110:                                              ; preds = %104, %101, %98, %95
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* %2, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %119, %116, %113, %110
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %122
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %92
  br label %129

129:                                              ; preds = %128, %77
  br label %130

130:                                              ; preds = %129, %62
  br label %131

131:                                              ; preds = %130, %47
  br label %8

132:                                              ; preds = %8
  %133 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %134 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %1, align 4
  ret i32 %135
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @feof(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @putc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
