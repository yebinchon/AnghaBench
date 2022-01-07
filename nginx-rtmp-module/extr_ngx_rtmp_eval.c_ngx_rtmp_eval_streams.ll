; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_eval.c_ngx_rtmp_eval_streams.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_eval.c_ngx_rtmp_eval_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_FILE_WRONLY = common dso_local global i64 0, align 8
@NGX_FILE_TRUNCATE = common dso_local global i64 0, align 8
@NGX_FILE_APPEND = common dso_local global i64 0, align 8
@NGX_FILE_CREATE_OR_OPEN = common dso_local global i64 0, align 8
@NGX_FILE_RDONLY = common dso_local global i64 0, align 8
@NGX_FILE_OPEN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_FILE_DEFAULT_ACCESS = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_rtmp_eval_streams(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 48
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 57
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %111 [
    i32 62, label %33
    i32 60, label %77
  ]

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %53

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %44 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ngx_atoi(i8* %43, i32 %51)
  br label %53

53:                                               ; preds = %40, %39
  %54 = phi i32 [ 1, %39 ], [ %52, %40 ]
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @NGX_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %2, align 8
  br label %173

61:                                               ; preds = %53
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* @NGX_FILE_WRONLY, align 8
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* @NGX_FILE_TRUNCATE, align 8
  store i64 %64, i64* %5, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 62
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i64, i64* @NGX_FILE_APPEND, align 8
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* @NGX_FILE_CREATE_OR_OPEN, align 8
  store i64 %73, i64* %5, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %71, %61
  br label %113

77:                                               ; preds = %29
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %97

84:                                               ; preds = %77
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %88 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @ngx_atoi(i8* %87, i32 %95)
  br label %97

97:                                               ; preds = %84, %83
  %98 = phi i32 [ 0, %83 ], [ %96, %84 ]
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @NGX_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i64, i64* @NGX_ERROR, align 8
  store i64 %104, i64* %2, align 8
  br label %173

105:                                              ; preds = %97
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* @NGX_FILE_RDONLY, align 8
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* @NGX_FILE_OPEN, align 8
  store i64 %108, i64* %5, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  br label %113

111:                                              ; preds = %29
  %112 = load i64, i64* @NGX_DONE, align 8
  store i64 %112, i64* %2, align 8
  br label %173

113:                                              ; preds = %105, %76
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 38
  br i1 %117, label %118, label %144

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load i8*, i8** %10, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @ngx_atoi(i8* %121, i32 %134)
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* @NGX_ERROR, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %118
  %141 = load i64, i64* @NGX_ERROR, align 8
  store i64 %141, i64* %2, align 8
  br label %173

142:                                              ; preds = %118
  %143 = load i64, i64* %6, align 8
  store i64 %143, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %156

144:                                              ; preds = %113
  %145 = load i8*, i8** %10, align 8
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load i32, i32* @NGX_FILE_DEFAULT_ACCESS, align 4
  %149 = call i64 @ngx_open_file(i8* %145, i64 %146, i64 %147, i32 %148)
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* @NGX_INVALID_FILE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i64, i64* @NGX_ERROR, align 8
  store i64 %154, i64* %2, align 8
  br label %173

155:                                              ; preds = %144
  store i64 1, i64* %7, align 8
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i64, i64* @NGX_OK, align 8
  store i64 %161, i64* %2, align 8
  br label %173

162:                                              ; preds = %156
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @dup2(i64 %163, i64 %164)
  %166 = load i64, i64* %7, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @ngx_close_file(i64 %169)
  br label %171

171:                                              ; preds = %168, %162
  %172 = load i64, i64* @NGX_OK, align 8
  store i64 %172, i64* %2, align 8
  br label %173

173:                                              ; preds = %171, %160, %153, %140, %111, %103, %59
  %174 = load i64, i64* %2, align 8
  ret i64 %174
}

declare dso_local i32 @ngx_atoi(i8*, i32) #1

declare dso_local i64 @ngx_open_file(i8*, i64, i64, i32) #1

declare dso_local i32 @dup2(i64, i64) #1

declare dso_local i32 @ngx_close_file(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
