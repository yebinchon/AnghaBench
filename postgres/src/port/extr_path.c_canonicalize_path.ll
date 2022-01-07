; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_path.c_canonicalize_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_path.c_canonicalize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"../\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @canonicalize_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @trim_trailing_separator(i8* %9)
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %45, %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %18

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %4, align 8
  store i8 %37, i8* %38, align 1
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %13

50:                                               ; preds = %13
  %51 = load i8*, i8** %4, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %2, align 8
  %53 = call i8* @skip_drive(i8* %52)
  store i8* %53, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %125, %50
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -2
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @trim_directory(i8* %68)
  br label %125

70:                                               ; preds = %59, %54
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** %5, align 8
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %74
  br label %126

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 3
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds i8, i8* %87, i64 -3
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %83, %80
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91, %83
  %96 = load i8*, i8** %2, align 8
  %97 = call i32 @trim_directory(i8* %96)
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %123

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load i8*, i8** %2, align 8
  %110 = call i32 @trim_directory(i8* %109)
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcpy(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %108
  br label %122

121:                                              ; preds = %103, %100
  br label %126

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %95
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %67
  br label %54

126:                                              ; preds = %121, %79
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %7, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8*, i8** %2, align 8
  %136 = call i32 @strcat(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %130

137:                                              ; preds = %130
  %138 = load i8*, i8** %2, align 8
  %139 = call i32 @strcat(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %126
  ret void
}

declare dso_local i32 @trim_trailing_separator(i8*) #1

declare dso_local i8* @skip_drive(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @trim_directory(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
