; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_variable_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_variable_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64)* @ngx_http_variable_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_variable_header(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = bitcast i8* %11 to %struct.TYPE_6__**
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %38

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %16
  %39 = load i32, i32* @NGX_OK, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
