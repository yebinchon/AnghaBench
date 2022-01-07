; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_nginx.c_ngx_save_argv.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_nginx.c_ngx_save_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_os_argv = common dso_local global i8** null, align 8
@ngx_argc = common dso_local global i32 0, align 4
@ngx_argv = common dso_local global i8** null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@environ = common dso_local global i32 0, align 4
@ngx_os_environ = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8**)* @ngx_save_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_save_argv(%struct.TYPE_3__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  store i8** %10, i8*** @ngx_os_argv, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* @ngx_argc, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @ngx_alloc(i64 %15, i32 %18)
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** @ngx_argv, align 8
  %21 = load i8**, i8*** @ngx_argv, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NGX_ERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %71, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ngx_strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ngx_alloc(i64 %39, i32 %42)
  %44 = load i8**, i8*** @ngx_argv, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %43, i8** %47, align 8
  %48 = load i8**, i8*** @ngx_argv, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %30
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %30
  %57 = load i8**, i8*** @ngx_argv, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @ngx_cpystrn(i32* %62, i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load i8**, i8*** @ngx_argv, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* null, i8** %78, align 8
  %79 = load i32, i32* @environ, align 4
  store i32 %79, i32* @ngx_os_environ, align 4
  %80 = load i32, i32* @NGX_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %54, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @ngx_alloc(i64, i32) #1

declare dso_local i32 @ngx_strlen(i8*) #1

declare dso_local i32 @ngx_cpystrn(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
