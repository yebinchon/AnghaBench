; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_fire_event.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_fire_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (i32*, i32*, i32*)*, i64 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_rtmp_fire_event(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64 (i32*, i32*, i32*)**, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ngx_rtmp_core_module, align 4
  %16 = call %struct.TYPE_4__* @ngx_rtmp_get_module_main_conf(i32* %14, i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %23, align 8
  %25 = bitcast i64 (i32*, i32*, i32*)* %24 to i64 (i32*, i32*, i32*)**
  store i64 (i32*, i32*, i32*)** %25, i64 (i32*, i32*, i32*)*** %12, align 8
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %48, %4
  %27 = load i64, i64* %13, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load i64 (i32*, i32*, i32*)**, i64 (i32*, i32*, i32*)*** %12, align 8
  %34 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %33, align 8
  %35 = icmp ne i64 (i32*, i32*, i32*)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i64 (i32*, i32*, i32*)**, i64 (i32*, i32*, i32*)*** %12, align 8
  %38 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 %38(i32* %39, i32* %40, i32* %41)
  %43 = load i64, i64* @NGX_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* @NGX_ERROR, align 8
  store i64 %46, i64* %5, align 8
  br label %55

47:                                               ; preds = %36, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %13, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %13, align 8
  %51 = load i64 (i32*, i32*, i32*)**, i64 (i32*, i32*, i32*)*** %12, align 8
  %52 = getelementptr inbounds i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %51, i32 1
  store i64 (i32*, i32*, i32*)** %52, i64 (i32*, i32*, i32*)*** %12, align 8
  br label %26

53:                                               ; preds = %26
  %54 = load i64, i64* @NGX_OK, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.TYPE_4__* @ngx_rtmp_get_module_main_conf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
