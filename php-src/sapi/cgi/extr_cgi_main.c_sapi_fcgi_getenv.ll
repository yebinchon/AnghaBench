; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c_sapi_fcgi_getenv.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c_sapi_fcgi_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @sapi_fcgi_getenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sapi_fcgi_getenv(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @server_context, align 4
  %9 = call i64 @SG(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i8* @fcgi_getenv(i32* %11, i8* %12, i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %3, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @getenv(i8* %21)
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i64 @SG(i32) #1

declare dso_local i8* @fcgi_getenv(i32*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
