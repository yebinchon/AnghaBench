; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-redirect.c_redirect_handle_request.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-redirect.c_redirect_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lwan_response = type { %struct.lwan_key_value* }
%struct.lwan_key_value = type { i8*, i32* }
%struct.redirect_priv = type { i32, i32* }

@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, %struct.lwan_response*, i8*)* @redirect_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redirect_handle_request(%struct.lwan_request* %0, %struct.lwan_response* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lwan_request*, align 8
  %6 = alloca %struct.lwan_response*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.redirect_priv*, align 8
  %9 = alloca %struct.lwan_key_value*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %5, align 8
  store %struct.lwan_response* %1, %struct.lwan_response** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.redirect_priv*
  store %struct.redirect_priv* %11, %struct.redirect_priv** %8, align 8
  %12 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %13 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.lwan_key_value* @coro_malloc(i32 %16, i32 32)
  store %struct.lwan_key_value* %17, %struct.lwan_key_value** %9, align 8
  %18 = load %struct.lwan_key_value*, %struct.lwan_key_value** %9, align 8
  %19 = icmp ne %struct.lwan_key_value* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @UNLIKELY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %48

26:                                               ; preds = %3
  %27 = load %struct.lwan_key_value*, %struct.lwan_key_value** %9, align 8
  %28 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %27, i64 0
  %29 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = load %struct.redirect_priv*, %struct.redirect_priv** %8, align 8
  %31 = getelementptr inbounds %struct.redirect_priv, %struct.redirect_priv* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.lwan_key_value*, %struct.lwan_key_value** %9, align 8
  %34 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %33, i64 0
  %35 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %34, i32 0, i32 1
  store i32* %32, i32** %35, align 8
  %36 = load %struct.lwan_key_value*, %struct.lwan_key_value** %9, align 8
  %37 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %36, i64 1
  %38 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %37, i32 0, i32 0
  store i8* null, i8** %38, align 8
  %39 = load %struct.lwan_key_value*, %struct.lwan_key_value** %9, align 8
  %40 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %39, i64 1
  %41 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.lwan_key_value*, %struct.lwan_key_value** %9, align 8
  %43 = load %struct.lwan_response*, %struct.lwan_response** %6, align 8
  %44 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %43, i32 0, i32 0
  store %struct.lwan_key_value* %42, %struct.lwan_key_value** %44, align 8
  %45 = load %struct.redirect_priv*, %struct.redirect_priv** %8, align 8
  %46 = getelementptr inbounds %struct.redirect_priv, %struct.redirect_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %26, %24
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.lwan_key_value* @coro_malloc(i32, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
