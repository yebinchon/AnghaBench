; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_adjust_array.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_adjust_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"multidimensional arrays are not supported\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"multilevel pointers (more than 2 levels) are not supported; found %d level\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"multilevel pointers (more than 2 levels) are not supported; found %d levels\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"pointer to pointer is not supported for this data type\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"multidimensional arrays for structures are not supported\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"multidimensional arrays for simple data types are not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_array(i32 %0, i8** %1, i8** %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i8*, i8** %12, align 8
  %16 = call i64 @atoi(i8* %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = load i8**, i8*** %10, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @atoi(i8* %20)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @PARSE_ERROR, align 4
  %25 = call i32 (i32, i8*, ...) @mmfatal(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** %12, align 8
  %28 = load i8**, i8*** %10, align 8
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %26, %7
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @atoi(i8* %30)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i8**, i8*** %9, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @atoi(i8* %35)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @atoi(i8* %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @PARSE_ERROR, align 4
  %45 = call i32 (i32, i8*, ...) @mmfatal(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38, %33
  %47 = load i8**, i8*** %9, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @atoi(i8* %48)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8**, i8*** %9, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %10, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i8*, i8** %11, align 8
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %55, %29
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* @PARSE_ERROR, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ngettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (i32, i8*, ...) @mmfatal(i32 %62, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 133
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 129
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 132
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @PARSE_ERROR, align 4
  %83 = call i32 (i32, i8*, ...) @mmfatal(i32 %82, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78, %75, %72, %69
  %85 = load i32, i32* %13, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i8**, i8*** %10, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @atoi(i8* %89)
  %91 = icmp sge i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i8**, i8*** %9, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @atoi(i8* %94)
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @PARSE_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @mmfatal(i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92, %84
  %101 = load i8**, i8*** %10, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @atoi(i8* %102)
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i8**, i8*** %9, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @atoi(i8* %107)
  %109 = icmp sge i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @PARSE_ERROR, align 4
  %115 = call i32 (i32, i8*, ...) @mmfatal(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110, %105, %100
  %117 = load i32, i32* %8, align 4
  switch i32 %117, label %200 [
    i32 131, label %118
    i32 130, label %118
    i32 128, label %136
    i32 134, label %136
    i32 133, label %154
    i32 129, label %154
    i32 132, label %154
  ]

118:                                              ; preds = %116, %116
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i8**, i8*** %9, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %10, align 8
  store i8* %123, i8** %124, align 8
  %125 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i8**, i8*** %9, align 8
  store i8* %125, i8** %126, align 8
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i8**, i8*** %10, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @atoi(i8* %129)
  %131 = icmp sge i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @PARSE_ERROR, align 4
  %134 = call i32 (i32, i8*, ...) @mmfatal(i32 %133, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %127
  br label %218

136:                                              ; preds = %116, %116
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i8**, i8*** %9, align 8
  store i8* %140, i8** %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i8**, i8*** %10, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @atoi(i8* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i8**, i8*** %9, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = load i8**, i8*** %10, align 8
  store i8* %149, i8** %150, align 8
  %151 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i8**, i8*** %9, align 8
  store i8* %151, i8** %152, align 8
  br label %153

153:                                              ; preds = %147, %142
  br label %218

154:                                              ; preds = %116, %116, %116
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i8**, i8*** %9, align 8
  store i8* %158, i8** %159, align 8
  %160 = load i8**, i8*** %10, align 8
  store i8* %158, i8** %160, align 8
  br label %218

161:                                              ; preds = %154
  %162 = load i32, i32* %13, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i8**, i8*** %10, align 8
  store i8* %165, i8** %166, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i8**, i8*** %10, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @atoi(i8* %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %167
  %173 = load i8**, i8*** %9, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @atoi(i8* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i8**, i8*** %10, align 8
  store i8* %181, i8** %182, align 8
  br label %196

183:                                              ; preds = %177, %172
  %184 = load i8**, i8*** %9, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %190 = load i8**, i8*** %10, align 8
  store i8* %189, i8** %190, align 8
  br label %195

191:                                              ; preds = %183
  %192 = load i8**, i8*** %9, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %10, align 8
  store i8* %193, i8** %194, align 8
  br label %195

195:                                              ; preds = %191, %188
  br label %196

196:                                              ; preds = %195, %180
  %197 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %198 = load i8**, i8*** %9, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %196, %167
  br label %218

200:                                              ; preds = %116
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i8**, i8*** %9, align 8
  %205 = load i8*, i8** %204, align 8
  %206 = load i8**, i8*** %10, align 8
  store i8* %205, i8** %206, align 8
  %207 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %208 = load i8**, i8*** %9, align 8
  store i8* %207, i8** %208, align 8
  br label %209

209:                                              ; preds = %203, %200
  %210 = load i8**, i8*** %10, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @atoi(i8* %211)
  %213 = icmp sge i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @PARSE_ERROR, align 4
  %216 = call i32 (i32, i8*, ...) @mmfatal(i32 %215, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %199, %157, %153, %135
  ret void
}

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @mmfatal(i32, i8*, ...) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

declare dso_local i8* @mm_strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
