; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_pg_base64_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_pg_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unexpected \22=\22 while decoding base64 sequence\00", align 1
@b64lookup = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"invalid symbol \22%c\22 while decoding base64 sequence\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid base64 end sequence\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Input data is missing padding, is truncated, or is otherwise corrupted.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @pg_base64_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_base64_decode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %136, %44, %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %137

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %10, align 1
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i8, i8* %10, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8, i8* %10, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36, %32, %25
  br label %21

45:                                               ; preds = %40
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  br label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 2, i32* %14, align 4
  br label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %59
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %49
  store i32 0, i32* %11, align 4
  br label %95

69:                                               ; preds = %45
  store i32 -1, i32* %11, align 4
  %70 = load i8, i8* %10, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i8, i8* %10, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp slt i32 %75, 127
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** @b64lookup, align 8
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %77, %73, %69
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i8, i8* %10, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = call i32 @ereport(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %86, %83
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i32, i32* %12, align 4
  %97 = shl i32 %96, 6
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %136

104:                                              ; preds = %95
  %105 = load i32, i32* %12, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %14, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %123

116:                                              ; preds = %113, %104
  %117 = load i32, i32* %12, align 4
  %118 = ashr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  store i8 %120, i8* %121, align 1
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = icmp sgt i32 %127, 2
  br i1 %128, label %129, label %135

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 %132, i8* %133, align 1
  br label %135

135:                                              ; preds = %129, %126
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %95
  br label %21

137:                                              ; preds = %21
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %143 = call i32 @errcode(i32 %142)
  %144 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %145 = call i32 @errhint(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %146 = call i32 @ereport(i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %140, %137
  %148 = load i8*, i8** %9, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  ret i32 %153
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
