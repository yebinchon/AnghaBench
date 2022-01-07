; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_vzlog.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_vzlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BUF_LENGTH = common dso_local global i32 0, align 4
@external_logger = common dso_local global i64 0, align 8
@ZLOG_LEVEL_MASK = common dso_local global i32 0, align 4
@zlog_level = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@zlog_fd = common dso_local global i32 0, align 4
@ZLOG_SYSLOG = common dso_local global i32 0, align 4
@ZLOG_HAVE_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c": %s (%d)\00", align 1
@zlog_limit = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@launched = common dso_local global i32 0, align 4
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@syslog_priorities = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vzlog(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* @MAX_BUF_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAX_BUF_LENGTH, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load i64, i64* @external_logger, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %13, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @zlog_external(i32 %27, i8* %21, i64 %28, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %5
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @zlog_level, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %17, align 4
  br label %145

39:                                               ; preds = %32
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* @zlog_fd, align 4
  %46 = load i32, i32* @ZLOG_SYSLOG, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @zlog_buf_prefix(i8* %41, i32 %42, i32 %43, i8* %21, i64 %44, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = sub i64 %51, 1
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 1, i32* %15, align 4
  br label %71

55:                                               ; preds = %39
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i8, i8* %21, i64 %56
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = sub i64 %58, %59
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @vsnprintf(i8* %57, i64 %60, i8* %61, i32 %62)
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  store i32 1, i32* %15, align 4
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ZLOG_HAVE_ERRNO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds i8, i8* %21, i64 %80
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = sub i64 %82, %83
  %85 = load i32, i32* %16, align 4
  %86 = call i8* @strerror(i32 %85)
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @snprintf(i8* %81, i64 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %86, i32 %87)
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @zlog_limit, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %74
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i64, i64* @zlog_limit, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @zlog_limit, align 8
  br label %108

106:                                              ; preds = %100
  %107 = load i64, i64* %13, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i64 [ %105, %104 ], [ %107, %106 ]
  %110 = call i64 @zlog_truncate_buf(i8* %21, i64 %109, i32 1)
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %108, %97
  %112 = load i64, i64* %14, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %14, align 8
  %114 = getelementptr inbounds i8, i8* %21, i64 %112
  store i8 10, i8* %114, align 1
  %115 = load i32, i32* @zlog_fd, align 4
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @zlog_fd, align 4
  br label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @STDERR_FILENO, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @zend_quiet_write(i32 %122, i8* %21, i64 %123)
  %125 = load i32, i32* @zlog_fd, align 4
  %126 = load i32, i32* @STDERR_FILENO, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %121
  %129 = load i32, i32* @zlog_fd, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load i32, i32* @launched, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @ZLOG_NOTICE, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @STDERR_FILENO, align 4
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @zend_quiet_write(i32 %141, i8* %21, i64 %142)
  br label %144

144:                                              ; preds = %140, %134, %131, %128, %121
  store i32 0, i32* %17, align 4
  br label %145

145:                                              ; preds = %144, %38
  %146 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %17, align 4
  switch i32 %147, label %149 [
    i32 0, label %148
    i32 1, label %148
  ]

148:                                              ; preds = %145, %145
  ret void

149:                                              ; preds = %145
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zlog_external(i32, i8*, i64, i8*, i32) #2

declare dso_local i64 @zlog_buf_prefix(i8*, i32, i32, i8*, i64, i32) #2

declare dso_local i64 @vsnprintf(i8*, i64, i8*, i32) #2

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @zlog_truncate_buf(i8*, i64, i32) #2

declare dso_local i32 @zend_quiet_write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
