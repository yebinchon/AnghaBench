; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmenum.c_build_file_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmenum.c_build_file_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_file_mask.star = internal constant [2 x i8] c"*\00", align 1
@build_file_mask.ss_fmt = internal constant [6 x i8] c"%s\\%s\00", align 1
@build_file_mask.sss_fmt = internal constant [10 x i8] c"%s\\%s__%s\00", align 1
@build_file_mask.ssss_fmt = internal constant [12 x i8] c"%s\\%s%s__%s\00", align 1
@build_file_mask.ver_fmt = internal constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@build_file_mask.star_fmt = internal constant [5 x i8] c"%s\\*\00", align 1
@build_file_mask.star_prefix_fmt = internal constant [7 x i8] c"%s\\%s*\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@TOKEN_LENGTH = common dso_local global i32 0, align 4
@BYTES_PER_TOKEN = common dso_local global i32 0, align 4
@ASM_NAME_MAJOR_VERSION = common dso_local global i32 0, align 4
@ASM_NAME_MINOR_VERSION = common dso_local global i32 0, align 4
@ASM_NAME_BUILD_NUMBER = common dso_local global i32 0, align 4
@ASM_NAME_REVISION_NUMBER = common dso_local global i32 0, align 4
@ASM_NAME_PUBLIC_KEY_TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*, i8*)* @build_file_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_file_mask(i32* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [24 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = load i32, i32* @TOKEN_LENGTH, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %26, align 8
  %37 = load i32, i32* @BYTES_PER_TOKEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8*, i64 %38, align 16
  store i64 %38, i64* %27, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %5
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @build_file_mask.star_prefix_fmt, i64 0, i64 0), i8* %50, i8* %51)
  br label %57

53:                                               ; preds = %45, %42
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @build_file_mask.star_fmt, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %48
  store i32 1, i32* %28, align 4
  br label %143

58:                                               ; preds = %5
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load i32, i32* @MAX_PATH, align 4
  store i32 %62, i32* %17, align 4
  store i8 0, i8* %32, align 16
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @IAssemblyName_GetName(i32* %63, i32* %17, i8* %32)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i64 @SUCCEEDED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @build_file_mask.ss_fmt, i64 0, i64 0), i8* %70, i8* %32)
  br label %76

72:                                               ; preds = %61
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @build_file_mask.ss_fmt, i64 0, i64 0), i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_file_mask.star, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %68
  br label %142

77:                                               ; preds = %58
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %141

80:                                               ; preds = %77
  store i32 8, i32* %18, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @ASM_NAME_MAJOR_VERSION, align 4
  %83 = call i32 @IAssemblyName_GetProperty(i32* %81, i32 %82, i8** %22, i32* %18)
  store i32 8, i32* %19, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @ASM_NAME_MINOR_VERSION, align 4
  %86 = call i32 @IAssemblyName_GetProperty(i32* %84, i32 %85, i8** %23, i32* %19)
  store i32 8, i32* %20, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @ASM_NAME_BUILD_NUMBER, align 4
  %89 = call i32 @IAssemblyName_GetProperty(i32* %87, i32 %88, i8** %24, i32* %20)
  store i32 8, i32* %21, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @ASM_NAME_REVISION_NUMBER, align 4
  %92 = call i32 @IAssemblyName_GetProperty(i32* %90, i32 %91, i8** %25, i32* %21)
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %21, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101, %98, %95, %80
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_file_mask.star, i64 0, i64 0), i8** %14, align 8
  br label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %107 = load i8*, i8** %22, align 8
  %108 = load i8*, i8** %23, align 8
  %109 = load i8*, i8** %24, align 8
  %110 = load i8*, i8** %25, align 8
  %111 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @build_file_mask.ver_fmt, i64 0, i64 0), i8* %107, i8* %108, i8* %109, i8* %110)
  %112 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  store i8* %112, i8** %14, align 8
  br label %113

113:                                              ; preds = %105, %104
  %114 = mul nuw i64 8, %38
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %17, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* @ASM_NAME_PUBLIC_KEY_TOKEN, align 4
  %118 = call i32 @IAssemblyName_GetProperty(i32* %116, i32 %117, i8** %39, i32* %17)
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_file_mask.star, i64 0, i64 0), i8** %15, align 8
  br label %124

122:                                              ; preds = %113
  %123 = call i32 @token_to_str(i8** %39, i8* %36)
  store i8* %36, i8** %15, align 8
  br label %124

124:                                              ; preds = %122, %121
  %125 = load i8*, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @build_file_mask.ssss_fmt, i64 0, i64 0), i8* %129, i8* %130, i8* %131, i8* %132)
  br label %140

134:                                              ; preds = %124
  %135 = load i8*, i8** %10, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_file_mask.sss_fmt, i64 0, i64 0), i8* %136, i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %134, %127
  br label %141

141:                                              ; preds = %140, %77
  br label %142

142:                                              ; preds = %141, %76
  store i32 0, i32* %28, align 4
  br label %143

143:                                              ; preds = %142, %57
  %144 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %28, align 4
  switch i32 %145, label %147 [
    i32 0, label %146
    i32 1, label %146
  ]

146:                                              ; preds = %143, %143
  ret void

147:                                              ; preds = %143
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @IAssemblyName_GetName(i32*, i32*, i8*) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @IAssemblyName_GetProperty(i32*, i32, i8**, i32*) #2

declare dso_local i32 @token_to_str(i8**, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
