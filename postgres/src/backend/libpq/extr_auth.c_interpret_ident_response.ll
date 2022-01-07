; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_interpret_ident_response.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_interpret_ident_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"USERID\00", align 1
@IDENT_USERNAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @interpret_ident_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_ident_response(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sub nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 13
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %172

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 58
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 13
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %27

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 58
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %172

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %56, %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @pg_isblank(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %51

59:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 58
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 13
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @pg_isblank(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 79
  br label %78

78:                                               ; preds = %75, %70, %65, %60
  %79 = phi i1 [ false, %70 ], [ false, %65 ], [ false, %60 ], [ %77, %75 ]
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  %83 = load i8, i8* %81, align 1
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %86
  store i8 %83, i8* %87, align 1
  br label %60

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %97, %88
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @pg_isblank(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  br label %92

100:                                              ; preds = %92
  %101 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %172

105:                                              ; preds = %100
  %106 = load i8*, i8** %6, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 58
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %172

111:                                              ; preds = %105
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %6, align 8
  br label %114

114:                                              ; preds = %126, %111
  %115 = load i8*, i8** %6, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 58
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 13
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ false, %114 ], [ %123, %119 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %6, align 8
  br label %114

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 58
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %172

135:                                              ; preds = %129
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  br label %138

138:                                              ; preds = %143, %135
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @pg_isblank(i8 signext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %6, align 8
  br label %138

146:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %158, %146
  %148 = load i8*, i8** %6, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 13
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @IDENT_USERNAME_MAX, align 4
  %155 = icmp slt i32 %153, %154
  br label %156

156:                                              ; preds = %152, %147
  %157 = phi i1 [ false, %147 ], [ %155, %152 ]
  br i1 %157, label %158, label %167

158:                                              ; preds = %156
  %159 = load i8*, i8** %6, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %6, align 8
  %161 = load i8, i8* %159, align 1
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 %161, i8* %166, align 1
  br label %147

167:                                              ; preds = %156
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 0, i8* %171, align 1
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %167, %134, %110, %104, %47, %25, %14
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pg_isblank(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
