; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c_cgi_php_load_env_var.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c_cgi_php_load_env_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i8*, i8**, i32, i64*)* }

@http_globals = common dso_local global i32 0, align 4
@TRACK_VARS_ENV = common dso_local global i64 0, align 8
@PARSE_ENV = common dso_local global i32 0, align 4
@PARSE_SERVER = common dso_local global i32 0, align 4
@sapi_module = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i8*)* @cgi_php_load_env_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgi_php_load_env_var(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i64 @Z_ARR_P(i32* %16)
  %18 = load i32, i32* @http_globals, align 4
  %19 = call i32* @PG(i32 %18)
  %20 = load i64, i64* @TRACK_VARS_ENV, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @Z_ARR(i32 %22)
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @PARSE_ENV, align 4
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @PARSE_SERVER, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %12, align 4
  %31 = load i64 (i32, i8*, i8**, i32, i64*)*, i64 (i32, i8*, i8**, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sapi_module, i32 0, i32 0), align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i64 %31(i32 %32, i8* %33, i8** %8, i32 %35, i64* %13)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @php_register_variable_safe(i8* %39, i8* %40, i64 %41, i32* %42)
  br label %44

44:                                               ; preds = %38, %29
  ret void
}

declare dso_local i64 @Z_ARR_P(i32*) #1

declare dso_local i64 @Z_ARR(i32) #1

declare dso_local i32* @PG(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @php_register_variable_safe(i8*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
