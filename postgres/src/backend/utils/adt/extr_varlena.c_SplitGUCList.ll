; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_SplitGUCList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_SplitGUCList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SplitGUCList(i8* %0, i8 signext %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32** %2, i32*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** @NIL, align 8
  %14 = load i32**, i32*** %7, align 8
  store i32* %13, i32** %14, align 8
  br label %15

15:                                               ; preds = %20, %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @scanner_isspace(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %143

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %138, %29
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %52, %35
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @strchr(i8* %40, i8 signext 34)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %143

45:                                               ; preds = %38
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 34
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @memmove(i8* %53, i8* %55, i32 %57)
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %8, align 8
  br label %38

60:                                               ; preds = %51
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %8, align 8
  br label %95

63:                                               ; preds = %30
  %64 = load i8*, i8** %8, align 8
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %85, %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %6, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @scanner_isspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %77, %70, %65
  %84 = phi i1 [ false, %70 ], [ false, %65 ], [ %82, %77 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %65

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %143

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %101, %95
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @scanner_isspace(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  br label %96

104:                                              ; preds = %96
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* %6, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %104
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %119, %111
  %115 = load i8*, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @scanner_isspace(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %8, align 8
  br label %114

122:                                              ; preds = %114
  br label %131

123:                                              ; preds = %104
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %9, align 4
  br label %130

129:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %143

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %122
  %132 = load i8*, i8** %11, align 8
  store i8 0, i8* %132, align 1
  %133 = load i32**, i32*** %7, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = call i32* @lappend(i32* %134, i8* %135)
  %137 = load i32**, i32*** %7, align 8
  store i32* %136, i32** %137, align 8
  br label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br i1 %141, label %30, label %142

142:                                              ; preds = %138
  store i32 1, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %129, %93, %44, %28
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @scanner_isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @lappend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
