; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_var_retype.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_var_retype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"int32_t\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i8*, i32, i32, i32)* @var_retype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @var_retype(i32* %0, %struct.TYPE_3__* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %7
  br label %206

28:                                               ; preds = %24
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @r_str_trim(i8* %30)
  %32 = load i8*, i8** %15, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %206

36:                                               ; preds = %28
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %15, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %44
  br label %206

59:                                               ; preds = %54, %51
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %17, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %85

69:                                               ; preds = %59
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %84

76:                                               ; preds = %69
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i8*, i8** %17, align 8
  %87 = call i8* @strstr(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %87, i8** %18, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = icmp ne i8* %88, null
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %85
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strncmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %206

101:                                              ; preds = %94, %85
  %102 = call i32* @r_strbuf_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i32* %102, i32** %20, align 8
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32*, i32** %20, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 (i32*, i8*, i8*, ...) @r_strbuf_setf(i32* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %116, i8* %117)
  br label %122

119:                                              ; preds = %108, %105
  %120 = load i32*, i32** %20, align 8
  %121 = call i32 @r_strbuf_free(i32* %120)
  br label %206

122:                                              ; preds = %114
  br label %127

123:                                              ; preds = %101
  %124 = load i32*, i32** %20, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @r_strbuf_set(i32* %124, i8* %125)
  br label %127

127:                                              ; preds = %123, %122
  %128 = load i32*, i32** %20, align 8
  %129 = call i8* @r_strbuf_get(i32* %128)
  %130 = call i64 @strncmp(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %20, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 6
  %136 = call i32 (i32*, i8*, i8*, ...) @r_strbuf_setf(i32* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 @r_strbuf_append(i32* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = load i32*, i32** %20, align 8
  %148 = call i8* @r_strbuf_get(i32* %147)
  %149 = call i64 @r_str_endswith(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32*, i32** %20, align 8
  %153 = call i32 @r_strbuf_append(i32* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %157

154:                                              ; preds = %146
  %155 = load i32*, i32** %20, align 8
  %156 = call i32 @r_strbuf_append(i32* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %143
  %159 = load i32*, i32** %20, align 8
  %160 = call i8* @r_strbuf_get(i32* %159)
  store i8* %160, i8** %21, align 8
  %161 = load i8*, i8** %21, align 8
  %162 = call i64 @r_str_startswith(i8* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32*, i32** %20, align 8
  %166 = call i32 @r_strbuf_set(i32* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %183

167:                                              ; preds = %158
  %168 = load i8*, i8** %21, align 8
  %169 = call i64 @r_str_startswith(i8* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32*, i32** %20, align 8
  %173 = call i32 @r_strbuf_set(i32* %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %182

174:                                              ; preds = %167
  %175 = load i8*, i8** %21, align 8
  %176 = call i64 @r_str_startswith(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @r_strbuf_set(i32* %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %174
  br label %182

182:                                              ; preds = %181, %171
  br label %183

183:                                              ; preds = %182, %164
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %20, align 8
  %193 = call i8* @r_strbuf_get(i32* %192)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @r_anal_var_retype(i32* %184, i32 %185, i32 1, i32 %188, i32 %191, i8* %193, i32 %196, i32 %199, i32 %202)
  %204 = load i32*, i32** %20, align 8
  %205 = call i32 @r_strbuf_free(i32* %204)
  br label %206

206:                                              ; preds = %183, %119, %100, %58, %35, %27
  ret void
}

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @r_strbuf_new(i8*) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

declare dso_local i8* @r_strbuf_get(i32*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i64 @r_str_endswith(i8*, i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @r_anal_var_retype(i32*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
