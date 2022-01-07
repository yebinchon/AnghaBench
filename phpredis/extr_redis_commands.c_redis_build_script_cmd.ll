; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_redis_build_script_cmd.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_redis_build_script_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @redis_build_script_cmd(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @Z_TYPE(i32 %12)
  %14 = load i64, i64* @IS_STRING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %129

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @Z_STRVAL(i32 %20)
  %22 = call i32 @strcasecmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @Z_STRVAL(i32 %27)
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24, %17
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @REDIS_CMD_INIT_SSTR_STATIC(i32* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @Z_STRVAL(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @Z_STRLEN(i32 %42)
  %44 = call i32 @redis_cmd_append_sstr(i32* %35, i8* %39, i32 %43)
  br label %127

45:                                               ; preds = %24
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @Z_STRVAL(i32 %48)
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @Z_TYPE(i32 %58)
  %60 = load i64, i64* @IS_STRING, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Z_STRLEN(i32 %65)
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %55, %52
  store i32* null, i32** %4, align 8
  br label %129

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @REDIS_CMD_INIT_SSTR_STATIC(i32* %70, i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @redis_cmd_append_sstr(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @Z_STRVAL(i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @Z_STRLEN(i32 %82)
  %84 = call i32 @redis_cmd_append_sstr(i32* %75, i8* %79, i32 %83)
  br label %126

85:                                               ; preds = %45
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @Z_STRVAL(i32 %88)
  %90 = call i32 @strcasecmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32* null, i32** %4, align 8
  br label %129

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @REDIS_CMD_INIT_SSTR_STATIC(i32* %97, i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @redis_cmd_append_sstr(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %120, %96
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32* @zval_get_string(i32* %110)
  store i32* %111, i32** %9, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i8* @ZSTR_VAL(i32* %113)
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @ZSTR_LEN(i32* %115)
  %117 = call i32 @redis_cmd_append_sstr(i32* %112, i8* %114, i32 %116)
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @zend_string_release(i32* %118)
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %102

123:                                              ; preds = %102
  br label %125

124:                                              ; preds = %85
  store i32* null, i32** %4, align 8
  br label %129

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %69
  br label %127

127:                                              ; preds = %126, %31
  %128 = load i32*, i32** %5, align 8
  store i32* %128, i32** %4, align 8
  br label %129

129:                                              ; preds = %127, %124, %95, %68, %16
  %130 = load i32*, i32** %4, align 8
  ret i32* %130
}

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @Z_STRVAL(i32) #1

declare dso_local i32 @REDIS_CMD_INIT_SSTR_STATIC(i32*, i32, i8*) #1

declare dso_local i32 @redis_cmd_append_sstr(i32*, i8*, i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

declare dso_local i32* @zval_get_string(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
