; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_module_redirect_to.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_module_redirect_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.lwan_key_value* }
%struct.lwan_key_value = type { i8*, i32* }
%struct.TYPE_4__ = type { i32 }

@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@HTTP_MOVED_PERMANENTLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, i8*)* @module_redirect_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_redirect_to(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_key_value*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %8 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.lwan_key_value* @coro_malloc(i32 %11, i32 32)
  store %struct.lwan_key_value* %12, %struct.lwan_key_value** %6, align 8
  %13 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %14 = icmp ne %struct.lwan_key_value* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @UNLIKELY(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %23 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %22, i64 0
  %24 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %26 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32* @coro_strdup(i32 %29, i8* %30)
  %32 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %33 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %32, i64 0
  %34 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  %35 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %36 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %35, i64 0
  %37 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @UNLIKELY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %21
  %47 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %48 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %47, i64 1
  %49 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  %50 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %51 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %50, i64 1
  %52 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %54 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %55 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.lwan_key_value* %53, %struct.lwan_key_value** %56, align 8
  %57 = load i32, i32* @HTTP_MOVED_PERMANENTLY, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %46, %44, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.lwan_key_value* @coro_malloc(i32, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32* @coro_strdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
