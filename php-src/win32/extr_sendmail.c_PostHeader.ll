; ModuleID = '/home/carl/AnghaBench/php-src/win32/extr_sendmail.c_PostHeader.c'
source_filename = "/home/carl/AnghaBench/php-src/win32/extr_sendmail.c_PostHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAIL_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"date:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Date: %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"from:\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"From: %s\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Subject: %s\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0D\0Ato:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"to:\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"To: %s\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @PostHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PostHeader(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @estrdup(i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %37, %19
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @tolower(i8 signext %32)
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %36, align 1
  br label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %13, align 8
  br label %24

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32, i32* @MAIL_BUFFER_SIZE, align 4
  %43 = call i8* @ecalloc(i32 1, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strstr(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46, %41
  %51 = call i32 @time(i32* null)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32* @php_format_date(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %52, i32 1)
  store i32* %53, i32** %16, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @MAIL_BUFFER_SIZE, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = call i8* @ZSTR_VAL(i32* %56)
  %58 = call i32 @snprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @zend_string_free(i32* %59)
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @strstr(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64, %61
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @addToHeader(i8** %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %133

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @addToHeader(i8** %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %133

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @strstr(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %12, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86, %82, %79
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @addToHeader(i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %133

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @addToHeader(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %133

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @efree(i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @Post(i8* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @efree(i8* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %141

123:                                              ; preds = %114
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @efree(i8* %124)
  %126 = call i32 @Post(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* @SUCCESS, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %141

131:                                              ; preds = %123
  %132 = load i32, i32* @SUCCESS, align 4
  store i32 %132, i32* %5, align 4
  br label %141

133:                                              ; preds = %106, %97, %78, %72
  %134 = load i8*, i8** %12, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @efree(i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* @OUT_OF_MEMORY, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %131, %129, %119
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @php_format_date(i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_free(i32*) #1

declare dso_local i32 @addToHeader(i8**, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @Post(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
