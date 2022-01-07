; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps_ui.c_password_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps_ui.c_password_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ui_method = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pass phrase\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@UI_INPUT_FLAG_DEFAULT_PWD = common dso_local global i32 0, align 4
@UI_CTRL_PRINT_ERRORS = common dso_local global i32 0, align 4
@PW_MIN_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"password buffer\00", align 1
@UI_CTRL_IS_REDOABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"User interface error\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"aborted!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @password_callback(i8* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %17 = load i32, i32* @ui_method, align 4
  %18 = call i32* @UI_new_method(i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  br label %33

33:                                               ; preds = %29, %24, %21
  %34 = load i32*, i32** %11, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i8* @UI_construct_prompt(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i8* %36, i8** %16, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @bio_err, align 4
  %41 = call i32 @BIO_printf(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @UI_free(i32* %42)
  store i32 0, i32* %5, align 4
  br label %132

44:                                               ; preds = %33
  %45 = load i32, i32* @UI_INPUT_FLAG_DEFAULT_PWD, align 4
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @UI_CTRL_PRINT_ERRORS, align 4
  %50 = call i64 @UI_ctrl(i32* %48, i32 %49, i32 1, i32 0, i32 0)
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = call i32 @UI_add_user_data(i32* %51, %struct.TYPE_4__* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @PW_MIN_LENGTH, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @UI_add_input_string(i32* %54, i8* %55, i32 %56, i8* %57, i32 %58, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %44
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @ui_malloc(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %69, i8** %13, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* @PW_MIN_LENGTH, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @UI_add_verify_string(i32* %70, i8* %71, i32 %72, i8* %73, i32 %74, i32 %76, i8* %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %67, %64, %44
  %80 = load i32, i32* %12, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @UI_process(i32* %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* @UI_CTRL_IS_REDOABLE, align 4
  %92 = call i64 @UI_ctrl(i32* %90, i32 %91, i32 0, i32 0, i32 0)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i1 [ false, %86 ], [ %93, %89 ]
  br i1 %95, label %83, label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @OPENSSL_clear_free(i8* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @strlen(i8* %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32, i32* @bio_err, align 4
  %111 = call i32 @BIO_printf(i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* @bio_err, align 4
  %113 = call i32 @ERR_print_errors(i32 %112)
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @OPENSSL_cleanse(i8* %114, i32 %115)
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %109, %106
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, -2
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* @bio_err, align 4
  %122 = call i32 @BIO_printf(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @OPENSSL_cleanse(i8* %123, i32 %124)
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %120, %117
  %127 = load i32*, i32** %11, align 8
  %128 = call i32 @UI_free(i32* %127)
  %129 = load i8*, i8** %16, align 8
  %130 = call i32 @OPENSSL_free(i8* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %126, %39, %20
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32* @UI_new_method(i32) #1

declare dso_local i8* @UI_construct_prompt(i32*, i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @UI_free(i32*) #1

declare dso_local i64 @UI_ctrl(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UI_add_user_data(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @UI_add_input_string(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @ui_malloc(i32, i8*) #1

declare dso_local i32 @UI_add_verify_string(i32*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @UI_process(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
