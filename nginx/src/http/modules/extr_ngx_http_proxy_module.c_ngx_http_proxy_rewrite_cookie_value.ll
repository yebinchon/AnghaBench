; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_rewrite_cookie_value.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_rewrite_cookie_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (i32*, %struct.TYPE_10__*, i64, i64, %struct.TYPE_11__*)* }

@NGX_DECLINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_12__*)* @ngx_http_proxy_rewrite_cookie_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_rewrite_cookie_value(i32* %0, %struct.TYPE_10__* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = ptrtoint i32* %16 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  store i64 %24, i64* %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @ngx_strchr(i32* %25, i8 signext 59)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  br label %44

37:                                               ; preds = %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub i64 %41, %42
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i64 [ %36, %30 ], [ %43, %37 ]
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %15, align 8
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %75, %44
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64 (i32*, %struct.TYPE_10__*, i64, i64, %struct.TYPE_11__*)*, i64 (i32*, %struct.TYPE_10__*, i64, i64, %struct.TYPE_11__*)** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = call i64 %60(i32* %61, %struct.TYPE_10__* %62, i64 %63, i64 %64, %struct.TYPE_11__* %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @NGX_DECLINED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i64, i64* %13, align 8
  store i64 %73, i64* %5, align 8
  br label %80

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %14, align 8
  br label %49

78:                                               ; preds = %49
  %79 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %78, %72
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local i64 @ngx_strchr(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
