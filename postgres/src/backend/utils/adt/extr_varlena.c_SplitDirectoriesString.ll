; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_SplitDirectoriesString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_SplitDirectoriesString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@MAXPGPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SplitDirectoriesString(i8* %0, i8 signext %1, i32** %2) #0 {
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
  br label %159

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %154, %29
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
  br label %159

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
  br label %96

63:                                               ; preds = %30
  %64 = load i8*, i8** %8, align 8
  store i8* %64, i8** %11, align 8
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %87, %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %6, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %73, %75
  br label %77

77:                                               ; preds = %70, %65
  %78 = phi i1 [ false, %65 ], [ %76, %70 ]
  br i1 %78, label %79, label %90

79:                                               ; preds = %77
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @scanner_isspace(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  br label %65

90:                                               ; preds = %77
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %159

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %60
  br label %97

97:                                               ; preds = %102, %96
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @scanner_isspace(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  br label %97

105:                                              ; preds = %97
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* %6, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %120, %112
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = call i64 @scanner_isspace(i8 signext %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  br label %115

123:                                              ; preds = %115
  br label %132

124:                                              ; preds = %105
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %9, align 4
  br label %131

130:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %159

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i8*, i8** %11, align 8
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = load i32, i32* @MAXPGPATH, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i8*, i8** %10, align 8
  %140 = load i32, i32* @MAXPGPATH, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %138, %132
  %145 = load i8*, i8** %10, align 8
  %146 = call i8* @pstrdup(i8* %145)
  store i8* %146, i8** %10, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @canonicalize_path(i8* %147)
  %149 = load i32**, i32*** %7, align 8
  %150 = load i32*, i32** %149, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = call i32* @lappend(i32* %150, i8* %151)
  %153 = load i32**, i32*** %7, align 8
  store i32* %152, i32** %153, align 8
  br label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br i1 %157, label %30, label %158

158:                                              ; preds = %154
  store i32 1, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %130, %94, %44, %28
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @scanner_isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i32* @lappend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
