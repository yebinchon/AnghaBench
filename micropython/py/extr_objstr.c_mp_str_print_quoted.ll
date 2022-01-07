; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_str_print_quoted.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_str_print_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_str_print_quoted(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %12, align 8
  br label %20

20:                                               ; preds = %43, %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ult i8* %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %46

29:                                               ; preds = %27
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %11, align 8
  br label %20

46:                                               ; preds = %27
  store i32 39, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 34, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %49, %46
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %13, align 4
  %56 = trunc i32 %55 to i8
  %57 = call i32 @mp_printf(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %56)
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %15, align 8
  br label %62

62:                                               ; preds = %143, %53
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %66, label %146

66:                                               ; preds = %62
  %67 = load i8*, i8** %14, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = trunc i32 %74 to i8
  %76 = call i32 @mp_printf(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %75)
  br label %142

77:                                               ; preds = %66
  %78 = load i8*, i8** %14, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @mp_print_str(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %141

85:                                               ; preds = %77
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 32
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 127
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp slt i32 %101, 128
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %95
  %104 = load i32*, i32** %5, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @mp_printf(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %106)
  br label %140

108:                                              ; preds = %98, %90, %85
  %109 = load i8*, i8** %14, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @mp_print_str(i32* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %139

116:                                              ; preds = %108
  %117 = load i8*, i8** %14, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 13
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @mp_print_str(i32* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %138

124:                                              ; preds = %116
  %125 = load i8*, i8** %14, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 9
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @mp_print_str(i32* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %137

132:                                              ; preds = %124
  %133 = load i32*, i32** %5, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @mp_printf(i32* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8 signext %135)
  br label %137

137:                                              ; preds = %132, %129
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %113
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140, %82
  br label %142

142:                                              ; preds = %141, %72
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %14, align 8
  br label %62

146:                                              ; preds = %62
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %13, align 4
  %149 = trunc i32 %148 to i8
  %150 = call i32 @mp_printf(i32* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %149)
  ret void
}

declare dso_local i32 @mp_printf(i32*, i8*, i8 signext) #1

declare dso_local i32 @mp_print_str(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
