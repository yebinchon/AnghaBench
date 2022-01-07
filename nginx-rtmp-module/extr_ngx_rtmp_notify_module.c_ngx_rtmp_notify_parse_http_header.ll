; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_parse_http_header.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_parse_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64, i8* }

@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i64)* @ngx_rtmp_notify_parse_http_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_notify_parse_http_header(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %136, %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %140

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  br label %28

28:                                               ; preds = %133, %21
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %29, %32
  br i1 %33, label %34, label %136

34:                                               ; preds = %28
  %35 = load i8*, i8** %14, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %15, align 1
  %37 = load i8, i8* %15, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %133

41:                                               ; preds = %34
  %42 = load i32, i32* %17, align 4
  switch i32 %42, label %132 [
    i32 3, label %43
    i32 0, label %64
    i32 1, label %102
    i32 2, label %112
  ]

43:                                               ; preds = %41
  %44 = load i8, i8* %15, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %15, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store i32 1, i32* %17, align 4
  br label %132

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  store i64 %56, i64* %6, align 8
  br label %142

57:                                               ; preds = %52
  %58 = load i8, i8* %15, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @NGX_OK, align 8
  store i64 %62, i64* %6, align 8
  br label %142

63:                                               ; preds = %57
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %41, %63
  %65 = load i8, i8* %15, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %76 [
    i32 58, label %67
    i32 10, label %75
  ]

67:                                               ; preds = %64
  %68 = load i64, i64* %16, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i32 1, i32* %17, align 4
  br label %101

75:                                               ; preds = %64
  store i64 0, i64* %16, align 8
  br label %101

76:                                               ; preds = %64
  %77 = load i64, i64* %16, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i8, i8* %15, align 1
  %84 = call i32 @ngx_tolower(i8 signext %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @ngx_tolower(i8 signext %90)
  %92 = icmp eq i32 %84, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %101

96:                                               ; preds = %82, %76
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %16, align 8
  br label %101

101:                                              ; preds = %96, %93, %75, %67
  br label %132

102:                                              ; preds = %41
  %103 = load i8, i8* %15, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i8, i8* %15, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102
  br label %132

111:                                              ; preds = %106
  store i32 2, i32* %17, align 4
  br label %112

112:                                              ; preds = %41, %111
  %113 = load i8, i8* %15, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 3, i32* %17, align 4
  br label %132

117:                                              ; preds = %112
  %118 = load i64, i64* %13, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i64, i64* %16, align 8
  %122 = add i64 %121, 1
  %123 = load i64, i64* %11, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i8, i8* %15, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = load i64, i64* %16, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %16, align 8
  %130 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 %126, i8* %130, align 1
  br label %131

131:                                              ; preds = %125, %120, %117
  br label %132

132:                                              ; preds = %41, %131, %116, %110, %101, %51
  br label %133

133:                                              ; preds = %132, %40
  %134 = load i8*, i8** %14, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %14, align 8
  br label %28

136:                                              ; preds = %28
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %8, align 8
  br label %18

140:                                              ; preds = %18
  %141 = load i64, i64* @NGX_OK, align 8
  store i64 %141, i64* %6, align 8
  br label %142

142:                                              ; preds = %140, %61, %55
  %143 = load i64, i64* %6, align 8
  ret i64 %143
}

declare dso_local i32 @ngx_tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
