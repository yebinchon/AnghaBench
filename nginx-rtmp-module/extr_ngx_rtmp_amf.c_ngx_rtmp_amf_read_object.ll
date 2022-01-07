; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_amf.c_ngx_rtmp_amf_read_object.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_amf.c_ngx_rtmp_amf_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_RTMP_AMF_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i64)* @ngx_rtmp_amf_read_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_amf_read_object(i32* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i64], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %32, %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %18

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %135, %38
  %40 = load i64, i64* %12, align 8
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %15, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %16, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %45 = call i32 (i32*, ...) @ngx_rtmp_amf_get(i32* %43, i64* %44, i32 2)
  switch i32 %45, label %48 [
    i32 129, label %46
    i32 128, label %47
  ]

46:                                               ; preds = %39
  store i32 128, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

47:                                               ; preds = %39
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

50:                                               ; preds = %47
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %52 = call i32 @ngx_rtmp_amf_reverse_copy(i64* %9, i64* %51, i32 2)
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 5, i32* %17, align 4
  br label %132

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 (i32*, ...) @ngx_rtmp_amf_get(i32* %61, i8* %42, i64 %62)
  store i32 %63, i32* %13, align 4
  br label %78

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 (i32*, ...) @ngx_rtmp_amf_get(i32* %65, i8* %42, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 128
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @NGX_ERROR, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

72:                                               ; preds = %64
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %12, align 8
  %76 = sub i64 %74, %75
  %77 = call i32 (i32*, ...) @ngx_rtmp_amf_get(i32* %73, i32 0, i64 %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %72, %60
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 128
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @NGX_ERROR, align 4
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

83:                                               ; preds = %78
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %112, %83
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %89, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %88
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i64 @ngx_strncmp(i8* %42, i32 %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %97, %88
  %108 = phi i1 [ true, %88 ], [ %106, %97 ]
  br label %109

109:                                              ; preds = %107, %84
  %110 = phi i1 [ false, %84 ], [ %108, %107 ]
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %84

115:                                              ; preds = %109
  %116 = load i32*, i32** %5, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %7, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %122
  br label %125

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %120
  %126 = phi %struct.TYPE_6__* [ %123, %120 ], [ null, %124 ]
  %127 = call i32 @ngx_rtmp_amf_read(i32* %116, %struct.TYPE_6__* %126, i32 1)
  %128 = icmp ne i32 %127, 128
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @NGX_ERROR, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %132

131:                                              ; preds = %125
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %131, %129, %81, %70, %55, %48, %46
  %133 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %17, align 4
  switch i32 %134, label %149 [
    i32 0, label %135
    i32 1, label %147
    i32 5, label %136
  ]

135:                                              ; preds = %132
  br label %39

136:                                              ; preds = %132
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 (i32*, ...) @ngx_rtmp_amf_get(i32* %137, i64* %8, i32 1)
  %139 = icmp ne i32 %138, 128
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @NGX_RTMP_AMF_END, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140, %136
  %145 = load i32, i32* @NGX_ERROR, align 4
  store i32 %145, i32* %4, align 4
  br label %147

146:                                              ; preds = %140
  store i32 128, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %144, %132
  %148 = load i32, i32* %4, align 4
  ret i32 %148

149:                                              ; preds = %132
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_rtmp_amf_get(i32*, ...) #2

declare dso_local i32 @ngx_rtmp_amf_reverse_copy(i64*, i64*, i32) #2

declare dso_local i64 @ngx_strncmp(i8*, i32, i64) #2

declare dso_local i32 @ngx_rtmp_amf_read(i32*, %struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
