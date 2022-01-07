; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_decode_base64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_decode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@base64_decode_table = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @decode_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_base64(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @STREAM_SEEK_SET, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @IStream_Seek(i32* %17, i64 %20, i32 %18, i32* null)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %3, align 4
  br label %182

27:                                               ; preds = %2
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %28, i32** %12)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %3, align 4
  br label %182

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %159
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %39 = call i32 @IStream_Read(i32* %37, i8* %38, i32 1024, i32* %13)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %36
  br label %160

47:                                               ; preds = %43
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %48, i8** %10, align 8
  store i8* %48, i8** %6, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %47, %100, %113, %139
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32*, i32** @base64_decode_table, align 8
  %63 = call zeroext i8 @ARRAY_SIZE(i32* %62)
  %64 = zext i8 %63 to i32
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** @base64_decode_table, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br label %74

74:                                               ; preds = %66, %58
  %75 = phi i1 [ true, %58 ], [ %73, %66 ]
  br label %76

76:                                               ; preds = %74, %54
  %77 = phi i1 [ false, %54 ], [ %75, %74 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  br label %54

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %140

86:                                               ; preds = %81
  %87 = load i32*, i32** @base64_decode_table, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %97
  store i8 %94, i8* %98, align 1
  %99 = load i32, i32* %14, align 4
  switch i32 %99, label %139 [
    i32 2, label %100
    i32 3, label %113
    i32 4, label %126
  ]

100:                                              ; preds = %86
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 2
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = ashr i32 %107, 4
  %109 = or i32 %104, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  store i8 %110, i8* %111, align 1
  br label %53

113:                                              ; preds = %86
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 4
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = ashr i32 %120, 2
  %122 = or i32 %117, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  store i8 %123, i8* %124, align 1
  br label %53

126:                                              ; preds = %86
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 6
  %131 = and i32 %130, 192
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %131, %134
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %10, align 8
  store i8 %136, i8* %137, align 1
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %126, %86
  br label %53

140:                                              ; preds = %85
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %143 = icmp ugt i8* %141, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %140
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @IStream_Write(i32* %145, i8* %146, i32 %152, i32* null)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i64 @FAILED(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %160

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158, %140
  br label %36

160:                                              ; preds = %157, %46
  %161 = load i32, i32* %15, align 4
  %162 = call i64 @SUCCEEDED(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* @STREAM_SEEK_SET, align 4
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @IStream_Seek(i32* %165, i64 %168, i32 %166, i32* null)
  store i32 %169, i32* %15, align 4
  br label %170

170:                                              ; preds = %164, %160
  %171 = load i32, i32* %15, align 4
  %172 = call i64 @FAILED(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @IStream_Release(i32* %175)
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %3, align 4
  br label %182

178:                                              ; preds = %170
  %179 = load i32*, i32** %12, align 8
  %180 = load i32**, i32*** %5, align 8
  store i32* %179, i32** %180, align 8
  %181 = load i32, i32* @S_OK, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %174, %33, %25
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i32*) #1

declare dso_local zeroext i8 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
