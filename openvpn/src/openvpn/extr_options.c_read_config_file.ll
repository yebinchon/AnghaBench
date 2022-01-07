; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_read_config_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_read_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.env_set = type { i32 }

@OPTION_LINE_SIZE = common dso_local global i32 0, align 4
@MAX_PARMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"In %s:%d: Maximum option line length (%d) exceeded, line starts with %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"In %s:%d: Error opening configuration file: %s\00", align 1
@.str.5 = private unnamed_addr constant [154 x i8] c"In %s:%d: Maximum recursive include levels exceeded in include attempt of file %s -- probably you have a configuration file that tries to include itself.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, i8*, i32, i8*, i32, i32, i32, i32*, %struct.env_set*)* @read_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_config_file(%struct.options* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32* %7, %struct.env_set* %8) #0 {
  %10 = alloca %struct.options*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.env_set*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store %struct.env_set* %8, %struct.env_set** %18, align 8
  store i32 10, i32* %19, align 4
  %26 = load i32, i32* @OPTION_LINE_SIZE, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %22, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  %31 = load i32, i32* @MAX_PARMS, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i8*, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sle i32 %37, 10
  br i1 %38, label %39, label %122

39:                                               ; preds = %9
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @streq(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** @stdin, align 8
  store i32* %44, i32** %20, align 8
  br label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = call i32* @platform_fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %47, i32** %20, align 8
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32*, i32** %20, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %115

51:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %106, %51
  %53 = trunc i64 %28 to i32
  %54 = load i32*, i32** %20, align 8
  %55 = call i64 @fgets(i8* %30, i32 %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %52
  store i32 0, i32* %25, align 4
  %58 = call i32 @CLEAR(i8** %34)
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %21, align 4
  %61 = call i32 @strlen(i8* %30)
  %62 = load i32, i32* @OPTION_LINE_SIZE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* %15, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @OPTION_LINE_SIZE, align 4
  %69 = call i32 (i32, i8*, i8*, i32, ...) @msg(i32 %65, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %67, i32 %68, i8* %30)
  br label %70

70:                                               ; preds = %64, %57
  %71 = load i32, i32* %21, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 3, i32* %25, align 4
  br label %77

77:                                               ; preds = %76, %73, %70
  %78 = load i32, i32* %25, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %30, i64 %79
  %81 = call i64 @SIZE(i8** %34)
  %82 = sub nsw i64 %81, 1
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.options*, %struct.options** %10, align 8
  %87 = getelementptr inbounds %struct.options, %struct.options* %86, i32 0, i32 0
  %88 = call i64 @parse_line(i8* %80, i8** %34, i64 %82, i8* %83, i32 %84, i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %77
  %91 = getelementptr inbounds i8*, i8** %34, i64 0
  %92 = call i32 @bypass_doubledash(i8** %91)
  %93 = load i32*, i32** %20, align 8
  %94 = load %struct.options*, %struct.options** %10, align 8
  %95 = getelementptr inbounds %struct.options, %struct.options* %94, i32 0, i32 0
  %96 = call i32 @check_inline_file_via_fp(i32* %93, i8** %34, i32* %95)
  %97 = load %struct.options*, %struct.options** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load %struct.env_set*, %struct.env_set** %18, align 8
  %105 = call i32 @add_option(%struct.options* %97, i8** %34, i8* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32* %103, %struct.env_set* %104)
  br label %106

106:                                              ; preds = %90, %77
  br label %52

107:                                              ; preds = %52
  %108 = load i32*, i32** %20, align 8
  %109 = load i32*, i32** @stdin, align 8
  %110 = icmp ne i32* %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @fclose(i32* %112)
  br label %114

114:                                              ; preds = %111, %107
  br label %121

115:                                              ; preds = %48
  %116 = load i32, i32* %15, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 (i32, i8*, i8*, i32, ...) @msg(i32 %116, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %117, i32 %118, i8* %119)
  br label %121

121:                                              ; preds = %115, %114
  br label %128

122:                                              ; preds = %9
  %123 = load i32, i32* %15, align 4
  %124 = load i8*, i8** %13, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 (i32, i8*, i8*, i32, ...) @msg(i32 %123, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.5, i64 0, i64 0), i8* %124, i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %122, %121
  %129 = trunc i64 %28 to i32
  %130 = call i32 @secure_memzero(i8* %30, i32 %129)
  %131 = call i32 @CLEAR(i8** %34)
  %132 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @streq(i8*, i8*) #2

declare dso_local i32* @platform_fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @CLEAR(i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @msg(i32, i8*, i8*, i32, ...) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @parse_line(i8*, i8**, i64, i8*, i32, i32, i32*) #2

declare dso_local i64 @SIZE(i8**) #2

declare dso_local i32 @bypass_doubledash(i8**) #2

declare dso_local i32 @check_inline_file_via_fp(i32*, i8**, i32*) #2

declare dso_local i32 @add_option(%struct.options*, i8**, i8*, i32, i32, i32, i32, i32*, %struct.env_set*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @secure_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
