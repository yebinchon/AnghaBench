; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_decode_qp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_decode_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @decode_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_qp(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8 0, i8* %9, align 1
  store i32 -1, i32* %14, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @STREAM_SEEK_SET, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @IStream_Seek(i32* %20, i64 %23, i32 %21, i32* null)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %3, align 4
  br label %151

30:                                               ; preds = %2
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %31, i32** %12)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %3, align 4
  br label %151

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %128
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %42 = call i32 @IStream_Read(i32* %40, i8* %41, i32 1024, i32* %13)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %39
  br label %129

50:                                               ; preds = %46
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %51, i8** %8, align 8
  store i8* %51, i8** %6, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %108, %107, %75, %74, %50
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8, i8* %61, align 1
  store i8 %63, i8* %16, align 1
  %64 = load i32, i32* %14, align 4
  switch i32 %64, label %108 [
    i32 -1, label %65
    i32 0, label %75
    i32 1, label %77
  ]

65:                                               ; preds = %60
  %66 = load i8, i8* %16, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 61
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %74

70:                                               ; preds = %65
  %71 = load i8, i8* %16, align 1
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %70, %69
  br label %56

75:                                               ; preds = %60
  %76 = load i8, i8* %16, align 1
  store i8 %76, i8* %9, align 1
  store i32 1, i32* %14, align 4
  br label %56

77:                                               ; preds = %60
  %78 = load i8, i8* %9, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 13
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8, i8* %16, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 10
  br i1 %84, label %85, label %107

85:                                               ; preds = %81, %77
  %86 = load i8, i8* %9, align 1
  %87 = call i32 @hex_digit(i8 zeroext %86)
  store i32 %87, i32* %17, align 4
  %88 = load i8, i8* %16, align 1
  %89 = call i32 @hex_digit(i8 zeroext %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* %17, align 4
  %97 = shl i32 %96, 4
  %98 = load i32, i32* %18, align 4
  %99 = or i32 %97, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 %100, i8* %101, align 1
  br label %106

103:                                              ; preds = %92, %85
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  store i8 61, i8* %104, align 1
  br label %106

106:                                              ; preds = %103, %95
  br label %107

107:                                              ; preds = %106, %81
  store i32 -1, i32* %14, align 4
  br label %56

108:                                              ; preds = %60
  br label %56

109:                                              ; preds = %56
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %112 = icmp ugt i8* %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @IStream_Write(i32* %114, i8* %115, i32 %121, i32* null)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i64 @FAILED(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %129

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %109
  br label %39

129:                                              ; preds = %126, %49
  %130 = load i32, i32* %15, align 4
  %131 = call i64 @SUCCEEDED(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* @STREAM_SEEK_SET, align 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @IStream_Seek(i32* %134, i64 %137, i32 %135, i32* null)
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %133, %129
  %140 = load i32, i32* %15, align 4
  %141 = call i64 @FAILED(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @IStream_Release(i32* %144)
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %3, align 4
  br label %151

147:                                              ; preds = %139
  %148 = load i32*, i32** %12, align 8
  %149 = load i32**, i32*** %5, align 8
  store i32* %148, i32** %149, align 8
  %150 = load i32, i32* @S_OK, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %143, %36, %28
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i32*) #1

declare dso_local i32 @hex_digit(i8 zeroext) #1

declare dso_local i32 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
