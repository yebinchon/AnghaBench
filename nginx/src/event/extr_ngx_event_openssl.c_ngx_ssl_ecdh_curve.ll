; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_ecdh_curve.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_ecdh_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"prime256v1\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"OBJ_sn2nid(\22%s\22) failed: unknown curve\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"EC_KEY_new_by_curve_name(\22%s\22) failed\00", align 1
@SSL_OP_SINGLE_ECDH_USE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_ssl_ecdh_curve(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @ngx_strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @OBJ_sn2nid(i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @NGX_LOG_EMERG, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @ngx_ssl_error(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = call i32* @EC_KEY_new_by_curve_name(i32 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @NGX_LOG_EMERG, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @ngx_ssl_error(i32 %40, i32 %43, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @NGX_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %34
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SSL_OP_SINGLE_ECDH_USE, align 4
  %52 = call i32 @SSL_CTX_set_options(i32 %50, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @SSL_CTX_set_tmp_ecdh(i32 %55, i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @EC_KEY_free(i32* %58)
  %60 = load i32, i32* @NGX_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %47, %39, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @ngx_ssl_error(i32, i32, i32, i8*, i8*) #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @SSL_CTX_set_options(i32, i32) #1

declare dso_local i32 @SSL_CTX_set_tmp_ecdh(i32, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
