; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_parse_multipart.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_parse_multipart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i64 }

@mg_parse_multipart.cd = internal constant [22 x i8] c"Content-Disposition: \00", align 16
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mg_parse_multipart(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8** %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.mg_str, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8** %6, i8*** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64 21, i64* %23, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ule i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %8
  store i64 0, i64* %9, align 8
  br label %176

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @mg_http_get_request_len(i8* %35, i64 %36)
  store i32 %37, i32* %24, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i64 0, i64* %9, align 8
  br label %176

40:                                               ; preds = %34
  %41 = load i32, i32* %24, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %18, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 45
  br i1 %47, label %60, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 45
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48, %40
  store i64 0, i64* %9, align 8
  br label %176

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @mg_get_line_len(i8* %62, i64 %63)
  store i64 %64, i64* %19, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 0, i8* %68, align 1
  %69 = load i64, i64* %19, align 8
  store i64 %69, i64* %20, align 8
  br label %70

70:                                               ; preds = %123, %61
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %20, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %20, align 8
  %76 = sub i64 %74, %75
  %77 = call i64 @mg_get_line_len(i8* %73, i64 %76)
  store i64 %77, i64* %21, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %79, label %127

79:                                               ; preds = %70
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %20, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %23, align 8
  %84 = call i64 @mg_ncasecmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @mg_parse_multipart.cd, i64 0, i64 0), i8* %82, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %79
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %20, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i64, i64* %23, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %25, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %23, align 8
  %95 = add i64 %94, 2
  %96 = sub i64 %93, %95
  %97 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %25, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %26, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @mg_http_parse_header2(%struct.mg_str* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %26, i64 %99)
  %101 = load i8*, i8** %26, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %86
  %105 = load i8*, i8** %26, align 8
  %106 = call i32 @MG_FREE(i8* %105)
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %104, %86
  %110 = load i8*, i8** %14, align 8
  store i8* %110, i8** %27, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @mg_http_parse_header2(%struct.mg_str* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %27, i64 %111)
  %113 = load i8*, i8** %27, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i8*, i8** %27, align 8
  %118 = call i32 @MG_FREE(i8* %117)
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %116, %109
  br label %122

122:                                              ; preds = %121, %79
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %20, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %20, align 8
  br label %70

127:                                              ; preds = %70
  %128 = load i64, i64* %18, align 8
  store i64 %128, i64* %22, align 8
  br label %129

129:                                              ; preds = %172, %127
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %19, align 8
  %132 = sub i64 %131, 2
  %133 = add i64 %130, %132
  %134 = load i64, i64* %11, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %175

136:                                              ; preds = %129
  %137 = load i8*, i8** %10, align 8
  %138 = load i64, i64* %22, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 45
  br i1 %142, label %143, label %171

143:                                              ; preds = %136
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = load i64, i64* %22, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i64, i64* %19, align 8
  %149 = sub i64 %148, 2
  %150 = call i32 @strncmp(i8* %144, i8* %147, i64 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %143
  %153 = load i64*, i64** %17, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i64, i64* %22, align 8
  %157 = sub i64 %156, 2
  %158 = load i64, i64* %18, align 8
  %159 = sub i64 %157, %158
  %160 = load i64*, i64** %17, align 8
  store i64 %159, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %152
  %162 = load i8**, i8*** %16, align 8
  %163 = icmp ne i8** %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i8*, i8** %10, align 8
  %166 = load i64, i64* %18, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8**, i8*** %16, align 8
  store i8* %167, i8** %168, align 8
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i64, i64* %22, align 8
  store i64 %170, i64* %9, align 8
  br label %176

171:                                              ; preds = %143, %136
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %22, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %22, align 8
  br label %129

175:                                              ; preds = %129
  store i64 0, i64* %9, align 8
  br label %176

176:                                              ; preds = %175, %169, %60, %39, %33
  %177 = load i64, i64* %9, align 8
  ret i64 %177
}

declare dso_local i32 @mg_http_get_request_len(i8*, i64) #1

declare dso_local i64 @mg_get_line_len(i8*, i64) #1

declare dso_local i64 @mg_ncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @mg_http_parse_header2(%struct.mg_str*, i8*, i8**, i64) #1

declare dso_local i32 @MG_FREE(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
