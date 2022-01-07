; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/extr_esil.c_exprmatchreg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/extr_esil.c_exprmatchreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CURVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @exprmatchreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprmatchreg(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %177

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %173

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @r_debug_reg_get_err(%struct.TYPE_6__* %25, i8* %26, i32* null, i32* null)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @exprtoken(%struct.TYPE_6__* %28, i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @r_str_trim_head_tail(i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @r_num_math(i32 %43, i8* %44)
  %46 = icmp sge i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %39, %32
  br label %172

49:                                               ; preds = %24
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i64 @exprtoken(%struct.TYPE_6__* %50, i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @r_str_trim_head_tail(i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strcmp(i8* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @r_num_math(i32 %65, i8* %66)
  %68 = icmp sle i64 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %61, %54
  br label %171

71:                                               ; preds = %49
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @exprtoken(%struct.TYPE_6__* %72, i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @r_str_trim_head_tail(i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strcmp(i8* %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @r_num_math(i32 %87, i8* %88)
  %90 = icmp sle i64 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %83, %76
  br label %170

93:                                               ; preds = %71
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @exprtoken(%struct.TYPE_6__* %94, i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @r_str_trim_head_tail(i8* %99)
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @strcmp(i8* %101, i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %98
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i64 @r_num_math(i32 %109, i8* %110)
  %112 = icmp slt i64 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %105, %98
  br label %169

115:                                              ; preds = %93
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i64 @exprtoken(%struct.TYPE_6__* %116, i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @r_str_trim_head_tail(i8* %121)
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @strcmp(i8* %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %120
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = call i64 @r_num_math(i32 %131, i8* %132)
  %134 = icmp sgt i64 %128, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 1, i32* %8, align 4
  br label %136

136:                                              ; preds = %135, %127, %120
  br label %168

137:                                              ; preds = %115
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = call i64 @exprtoken(%struct.TYPE_6__* %138, i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %9)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %137
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @r_str_trim_head_tail(i8* %143)
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @strcmp(i8* %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = call i64 @r_num_math(i32 %152, i8* %153)
  store i64 %154, i64* %12, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @exprmatch(%struct.TYPE_6__* %155, i64 %156, i8* %157)
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %149, %142
  br label %167

160:                                              ; preds = %137
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 @strcmp(i8* %161, i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  store i32 1, i32* %8, align 4
  br label %166

166:                                              ; preds = %165, %160
  br label %167

167:                                              ; preds = %166, %159
  br label %168

168:                                              ; preds = %167, %136
  br label %169

169:                                              ; preds = %168, %114
  br label %170

170:                                              ; preds = %169, %92
  br label %171

171:                                              ; preds = %170, %70
  br label %172

172:                                              ; preds = %171, %48
  br label %173

173:                                              ; preds = %172, %23
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %17
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @r_debug_reg_get_err(%struct.TYPE_6__*, i8*, i32*, i32*) #1

declare dso_local i64 @exprtoken(%struct.TYPE_6__*, i8*, i8*, i8**) #1

declare dso_local i32 @r_str_trim_head_tail(i8*) #1

declare dso_local i64 @r_num_math(i32, i8*) #1

declare dso_local i32 @exprmatch(%struct.TYPE_6__*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
