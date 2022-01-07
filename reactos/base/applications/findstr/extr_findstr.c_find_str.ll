; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/findstr/extr_findstr.c_find_str.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/findstr/extr_findstr.c_find_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_str(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i8* %0, i8** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  %35 = load i32, i32* @MAX_STR, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %32, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %33, align 8
  %39 = load i32, i32* @MAX_STR, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %34, align 8
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %13
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %47

47:                                               ; preds = %62, %44
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* %28, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* %27, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call signext i8 @toupper(i8 signext %56)
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %27, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %27, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %27, align 4
  br label %47

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %13
  br label %67

67:                                               ; preds = %135, %66
  %68 = load i32, i32* @MAX_STR, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @fgets(i8* %38, i32 %68, i32* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %136

72:                                               ; preds = %67
  %73 = call i32 @strlen(i8* %38)
  store i32 %73, i32* %28, align 4
  %74 = load i32, i32* %28, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %38, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i32, i32* %28, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %38, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %72
  %87 = load i64, i64* %29, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %29, align 8
  %89 = call i32 @strcpy(i8* %41, i8* %38)
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  store i32 0, i32* %27, align 4
  br label %93

93:                                               ; preds = %106, %92
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %28, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i32, i32* %27, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %38, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @toupper(i8 signext %101)
  %103 = load i32, i32* %27, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %38, i64 %104
  store i8 %102, i8* %105, align 1
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %27, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %27, align 4
  br label %93

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %86
  %111 = load i8*, i8** %14, align 8
  %112 = call i8* @strstr(i8* %38, i8* %111)
  store i8* %112, i8** %31, align 8
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %31, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %121, label %135

118:                                              ; preds = %110
  %119 = load i8*, i8** %31, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i64, i64* %29, align 8
  %129 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = call i32 @puts(i8* %41)
  br label %132

132:                                              ; preds = %130, %121
  %133 = load i64, i64* %30, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %30, align 8
  br label %135

135:                                              ; preds = %132, %118, %115
  br label %67

136:                                              ; preds = %67
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i64, i64* %30, align 8
  %141 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i64, i64* %30, align 8
  %144 = icmp sgt i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %147)
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local signext i8 @toupper(i8 signext) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i64) #2

declare dso_local i32 @puts(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
