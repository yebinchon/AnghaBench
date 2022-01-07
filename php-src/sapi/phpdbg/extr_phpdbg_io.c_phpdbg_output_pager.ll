; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_io.c_phpdbg_output_pager.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_io.c_phpdbg_output_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lines = common dso_local global i32 0, align 4
@PHPDBG_MAX_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"\0D---Type <return> to continue or q <return> to quit---\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @phpdbg_output_pager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phpdbg_output_pager(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %92, %3
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @memchr(i8* %20, i8 signext 10, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %93

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @lines, align 4
  %36 = call i32 @PHPDBG_G(i32 %35)
  %37 = srem i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @write(i32 %40, i8* %44, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i8* @memchr(i8* %59, i8 signext 10, i32 %65)
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %39
  %69 = load i32, i32* @PHPDBG_MAX_CMD, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %11, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %12, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (i32, i8*, ...) @zend_quiet_write(i32 %73, i8* %76)
  %78 = call i32 @phpdbg_consume_stdin_line(i8* %72)
  %79 = load i8, i8* %72, align 16
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 113
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  store i32 3, i32* %13, align 4
  br label %86

83:                                               ; preds = %68
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32, i8*, ...) @zend_quiet_write(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %13, align 4
  switch i32 %88, label %131 [
    i32 0, label %89
    i32 3, label %93
  ]

89:                                               ; preds = %86
  br label %91

90:                                               ; preds = %39
  br label %93

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91, %29
  br label %19

93:                                               ; preds = %90, %86, %19
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @lines, align 4
  %99 = call i32 @PHPDBG_G(i32 %98)
  %100 = srem i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i64 @write(i32 %103, i8* %107, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %8, align 4
  br label %129

116:                                              ; preds = %96, %93
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i64 @write(i32 %120, i8* %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %119, %116
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i32, i32* %8, align 4
  ret i32 %130

131:                                              ; preds = %86
  unreachable
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @PHPDBG_G(i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @zend_quiet_write(i32, i8*, ...) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

declare dso_local i32 @phpdbg_consume_stdin_line(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
