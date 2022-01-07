; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_eval.c_ngx_rtmp_eval.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_eval.c_ngx_rtmp_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }

@NGX_RTMP_EVAL_BUFLEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_rtmp_eval(i8* %0, %struct.TYPE_8__* %1, i32** %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32** %2, i32*** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @NGX_RTMP_EVAL_BUFLEN, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call i8* @ngx_alloc(i32 %18, i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %6, align 4
  br label %165

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @NGX_RTMP_EVAL_BUFLEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8* null, i8** %36, align 8
  store i64 0, i64* %16, align 8
  br label %37

37:                                               ; preds = %124, %29
  %38 = load i64, i64* %16, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %127

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %12, align 1
  %51 = load i32, i32* %17, align 4
  switch i32 %51, label %123 [
    i32 3, label %52
    i32 2, label %69
    i32 0, label %111
    i32 1, label %120
  ]

52:                                               ; preds = %43
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 125
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %124

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32**, i32*** %9, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @ngx_rtmp_eval_append_var(i8* %65, %struct.TYPE_9__* %15, i32** %66, %struct.TYPE_8__* %14, i32* %67)
  store i32 0, i32* %17, align 4
  br label %124

69:                                               ; preds = %43
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 123
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  store i32 3, i32* %17, align 4
  br label %124

82:                                               ; preds = %73, %69
  %83 = load i8, i8* %12, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sge i32 %84, 97
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8, i8* %12, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 122
  br i1 %89, label %98, label %90

90:                                               ; preds = %86, %82
  %91 = load i8, i8* %12, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 65
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8, i8* %12, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %96, 90
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %86
  br label %124

99:                                               ; preds = %94, %90
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %100 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i64 %105, i64* %106, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32**, i32*** %9, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @ngx_rtmp_eval_append_var(i8* %107, %struct.TYPE_9__* %15, i32** %108, %struct.TYPE_8__* %14, i32* %109)
  br label %111

111:                                              ; preds = %43, %99
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  switch i32 %113, label %119 [
    i32 36, label %114
    i32 92, label %118
  ]

114:                                              ; preds = %111
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  store i32 2, i32* %17, align 4
  br label %124

118:                                              ; preds = %111
  store i32 1, i32* %17, align 4
  br label %124

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %43, %119
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @ngx_rtmp_eval_append(%struct.TYPE_9__* %15, i8* %12, i32 1, i32* %121)
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %43, %120
  br label %124

124:                                              ; preds = %123, %118, %114, %98, %78, %57, %56
  %125 = load i64, i64* %16, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %16, align 8
  br label %37

127:                                              ; preds = %37
  %128 = load i32, i32* %17, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %16, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %13, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %136 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load i32**, i32*** %9, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @ngx_rtmp_eval_append_var(i8* %143, %struct.TYPE_9__* %15, i32** %144, %struct.TYPE_8__* %14, i32* %145)
  br label %147

147:                                              ; preds = %130, %127
  store i8 0, i8* %12, align 1
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @ngx_rtmp_eval_append(%struct.TYPE_9__* %15, i8* %12, i32 1, i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %155 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sub nsw i64 %160, 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* @NGX_OK, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %147, %27
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i8* @ngx_alloc(i32, i32*) #1

declare dso_local i32 @ngx_rtmp_eval_append_var(i8*, %struct.TYPE_9__*, i32**, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ngx_rtmp_eval_append(%struct.TYPE_9__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
