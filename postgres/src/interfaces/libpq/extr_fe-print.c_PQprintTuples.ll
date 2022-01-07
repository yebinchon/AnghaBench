; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-print.c_PQprintTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-print.c_PQprintTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%%s %%-%ds\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%%s %%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"|\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PQprintTuples(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [80 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %16, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @PQnfields(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @PQntuples(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %32

29:                                               ; preds = %5
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %159

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 14
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i64 @malloc(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @stderr, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = call i8* @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* %51)
  %53 = call i32 (...) @abort() #3
  unreachable

54:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 45, i8* %63, align 1
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %67, %35
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %95, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @PQfname(i32* %90, i32 %91)
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* %85, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %83, %80
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %111

107:                                              ; preds = %101
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %98
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %155, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %141, %117
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %118
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i8* @PQgetvalue(i32* %123, i32 %124, i32 %125)
  store i8* %126, i8** %18, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %133 = load i8*, i8** %18, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i8*, i8** %18, align 8
  br label %138

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i8* [ %136, %135 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %137 ]
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* %128, i8* %132, i8* %139)
  br label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %118

144:                                              ; preds = %118
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %154

150:                                              ; preds = %144
  %151 = load i32*, i32** %7, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %150, %147
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %113

158:                                              ; preds = %113
  br label %159

159:                                              ; preds = %158, %32
  %160 = load i8*, i8** %16, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %16, align 8
  %164 = call i32 @free(i8* %163)
  br label %165

165:                                              ; preds = %162, %159
  ret void
}

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @libpq_gettext(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @PQfname(i32*, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
