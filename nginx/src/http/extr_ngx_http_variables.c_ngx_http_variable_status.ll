; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_variable_status.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_variable_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32*, i32* }

@NGX_INT_T_LEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_VERSION_9 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%03ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i64)* @ngx_http_variable_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_variable_status(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NGX_INT_T_LEN, align 4
  %13 = call i32* @ngx_pnalloc(i32 %11, i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %4, align 4
  br label %75

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  br label %51

42:                                               ; preds = %31
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NGX_HTTP_VERSION_9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 9, i32* %8, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32* @ngx_sprintf(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = ptrtoint i32* %57 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @NGX_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %52, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
