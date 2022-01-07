; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_ean2isn.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_ean2isn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID = common dso_local global i32 0, align 4
@MAXEAN13LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"978\00", align 1
@ISBN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"977\00", align 1
@ISSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"9790\00", align 1
@ISMN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"979\00", align 1
@UPC = common dso_local global i32 0, align 4
@EAN13 = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"cannot cast EAN13(%s) to %s for number: \22%s\22\00", align 1
@isn_names = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot cast %s to %s for number: \22%s\22\00", align 1
@EAN13_FORMAT = common dso_local global i8* null, align 8
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"value \22%s\22 is out of range for %s type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @ean2isn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ean2isn(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @INVALID, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @MAXEAN13LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @UINT64CONST(i32 1316134911)
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %155

32:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  %33 = getelementptr inbounds i8, i8* %24, i64 13
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %52, %32
  %36 = load i32, i32* %6, align 4
  %37 = srem i32 %36, 10
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 10
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add i32 %40, 48
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %13, align 8
  store i8 %42, i8* %44, align 1
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %15, align 4
  %51 = icmp ult i32 %49, 12
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %35, label %54

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32, i32* %15, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = icmp ult i32 %56, 12
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %13, align 8
  store i8 48, i8* %61, align 1
  br label %55

62:                                               ; preds = %55
  %63 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24, i32 3)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ISBN, align 4
  store i32 %66, i32* %10, align 4
  br label %94

67:                                               ; preds = %62
  %68 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 3)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @ISSN, align 4
  store i32 %71, i32* %10, align 4
  br label %93

72:                                               ; preds = %67
  %73 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 4)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @ISMN, align 4
  store i32 %76, i32* %10, align 4
  br label %92

77:                                               ; preds = %72
  %78 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %24, i32 3)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @ISBN, align 4
  store i32 %81, i32* %10, align 4
  br label %91

82:                                               ; preds = %77
  %83 = load i8, i8* %24, align 16
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 48
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @UPC, align 4
  store i32 %87, i32* %10, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @EAN13, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %70
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @ANY, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @EAN13, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %110

107:                                              ; preds = %102, %98, %94
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %175

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %154, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @EAN13, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i32, i32* @ERROR, align 4
  %119 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %120 = call i32 @errcode(i32 %119)
  %121 = load i32*, i32** @isn_names, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load i32*, i32** @isn_names, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %127, i32 %132, i8* %24)
  %134 = call i32 @ereport(i32 %118, i32 %133)
  br label %153

135:                                              ; preds = %113
  %136 = load i32, i32* @ERROR, align 4
  %137 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %138 = call i32 @errcode(i32 %137)
  %139 = load i32*, i32** @isn_names, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load i32*, i32** @isn_names, align 8
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %145, i32 %150, i8* %24)
  %152 = call i32 @ereport(i32 %136, i32 %151)
  br label %153

153:                                              ; preds = %135, %117
  br label %154

154:                                              ; preds = %153, %110
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %175

155:                                              ; preds = %31
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %160 = load i8*, i8** @EAN13_FORMAT, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @snprintf(i8* %159, i32 64, i8* %160, i32 %161)
  %163 = load i32, i32* @ERROR, align 4
  %164 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %165 = call i32 @errcode(i32 %164)
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %167 = load i32*, i32** @isn_names, align 8
  %168 = load i32, i32* %10, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %166, i32 %171)
  %173 = call i32 @ereport(i32 %163, i32 %172)
  br label %174

174:                                              ; preds = %158, %155
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %175

175:                                              ; preds = %174, %154, %107
  %176 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UINT64CONST(i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, i32, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
