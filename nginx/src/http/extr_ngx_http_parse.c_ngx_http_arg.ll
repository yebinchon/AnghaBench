; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_parse.c_ngx_http_arg.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_parse.c_ngx_http_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_7__ = type { i8*, i32 }

@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_arg(%struct.TYPE_8__* %0, i8* %1, i64 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %18, i32* %5, align 4
  br label %106

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %101, %19
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 1
  %41 = call i8* @ngx_strlcasestrn(i8* %35, i8* %37, i8* %38, i64 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %45, i32* %5, align 4
  br label %106

46:                                               ; preds = %34
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %47, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 38
  br i1 %58, label %59, label %100

59:                                               ; preds = %53, %46
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 61
  br i1 %65, label %66, label %100

66:                                               ; preds = %59
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i8* @ngx_strlchr(i8* %73, i8* %74, i8 signext 38)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %78, %66
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %89 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @NGX_OK, align 4
  store i32 %99, i32* %5, align 4
  br label %106

100:                                              ; preds = %59, %53
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  br label %30

104:                                              ; preds = %30
  %105 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %88, %44, %17
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i8* @ngx_strlcasestrn(i8*, i8*, i8*, i64) #1

declare dso_local i8* @ngx_strlchr(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
