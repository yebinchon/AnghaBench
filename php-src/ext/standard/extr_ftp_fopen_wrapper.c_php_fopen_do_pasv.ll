; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_fopen_do_pasv.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_fopen_do_pasv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"PASV\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32*, i8*, i64, i8**)* @php_fopen_do_pasv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @php_fopen_do_pasv(i32* %0, i8* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @php_stream_write_string(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @GET_FTP_RESULT(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 227
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i16 0, i16* %5, align 2
  br label %130

24:                                               ; preds = %4
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %27, i8** %14, align 8
  br label %28

28:                                               ; preds = %43, %24
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i8*, i8** %14, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i64 @isdigit(i32 %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %33, %28
  %41 = phi i1 [ false, %28 ], [ %39, %33 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %14, align 8
  br label %28

46:                                               ; preds = %40
  %47 = load i8*, i8** %14, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i16 0, i16* %5, align 2
  br label %130

51:                                               ; preds = %46
  %52 = load i8*, i8** %14, align 8
  store i8* %52, i8** %16, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %77, %51
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = call i64 @isdigit(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  br label %57

67:                                               ; preds = %57
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 44
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i16 0, i16* %5, align 2
  br label %130

73:                                               ; preds = %67
  %74 = load i8*, i8** %14, align 8
  store i8 46, i8* %74, align 1
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %14, align 8
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %53

80:                                               ; preds = %53
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @memcpy(i8* %83, i8* %84, i64 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %7, align 8
  store i8* %91, i8** %16, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i64 @strtoul(i8* %92, i8** %15, i32 10)
  %94 = trunc i64 %93 to i16
  %95 = zext i16 %94 to i32
  %96 = mul nsw i32 %95, 256
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %13, align 2
  %98 = load i8*, i8** %15, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %80
  store i16 0, i16* %5, align 2
  br label %130

101:                                              ; preds = %80
  %102 = load i8*, i8** %15, align 8
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 44
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i16 0, i16* %5, align 2
  br label %130

108:                                              ; preds = %101
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = call i64 @strtoul(i8* %111, i8** %15, i32 10)
  %113 = trunc i64 %112 to i16
  %114 = zext i16 %113 to i32
  %115 = load i16, i16* %13, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %116, %114
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %13, align 2
  %119 = load i8*, i8** %15, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  store i16 0, i16* %5, align 2
  br label %130

122:                                              ; preds = %108
  %123 = load i8**, i8*** %9, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i8*, i8** %16, align 8
  %127 = load i8**, i8*** %9, align 8
  store i8* %126, i8** %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i16, i16* %13, align 2
  store i16 %129, i16* %5, align 2
  br label %130

130:                                              ; preds = %128, %121, %107, %100, %72, %50, %23
  %131 = load i16, i16* %5, align 2
  ret i16 %131
}

declare dso_local i32 @php_stream_write_string(i32*, i8*) #1

declare dso_local i32 @GET_FTP_RESULT(i32*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
