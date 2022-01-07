; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_workshop.c_findYourself.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_workshop.c_findYourself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"/bin\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"/src\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @findYourself(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 47
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %3, align 8
  br label %77

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 46
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 47)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20, %15
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = call i64 @malloc(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @MAXPATHLEN, align 4
  %30 = call i32* @getcwd(i8* %28, i32 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i8, i8* @NUL, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %35, align 1
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strcat(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @strcat(i8* %39, i8* %40)
  br label %76

42:                                               ; preds = %20
  %43 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32, i32* @MAXPATHLEN, align 4
  %48 = call i64 @malloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @strtok(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %69, %46
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %3, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @strcat(i8* %60, i8* %61)
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* @X_OK, align 4
  %65 = call i64 @access(i8* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %54, label %72

72:                                               ; preds = %69, %67
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @free(i8* %73)
  br label %75

75:                                               ; preds = %72, %42
  br label %76

76:                                               ; preds = %75, %36
  br label %77

77:                                               ; preds = %76, %12
  %78 = load i8*, i8** %3, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %120

80:                                               ; preds = %77
  %81 = load i32, i32* @MAXPATHLEN, align 4
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %6, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %7, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = bitcast i8* %84 to i32*
  %88 = load i32, i32* @MAXPATHLEN, align 4
  %89 = call i32 @vim_FullName(i32* %86, i32* %87, i32 %88, i32 1)
  %90 = call i8* @strrchr(i8* %84, i8 signext 47)
  store i8* %90, i8** %4, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i8, i8* @NUL, align 1
  %95 = load i8*, i8** %4, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %93, %80
  %97 = call i8* @strrchr(i8* %84, i8 signext 47)
  store i8* %97, i8** %4, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load i8*, i8** %4, align 8
  %102 = call i64 @strncmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @setDollarVim(i8* %84)
  br label %115

106:                                              ; preds = %100
  %107 = load i8*, i8** %4, align 8
  %108 = call i64 @strncmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8, i8* @NUL, align 1
  %112 = load i8*, i8** %4, align 8
  store i8 %111, i8* %112, align 1
  %113 = call i32 @setDollarVim(i8* %84)
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %96
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %120

120:                                              ; preds = %116, %77
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vim_FullName(i32*, i32*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @setDollarVim(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
