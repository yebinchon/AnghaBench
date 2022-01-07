; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_conf_file.c_ngx_conf_set_keyval_slot.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_conf_file.c_ngx_conf_set_keyval_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { i8*, i8* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_conf_set_keyval_slot(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = bitcast i8* %19 to i32**
  store i32** %20, i32*** %10, align 8
  %21 = load i32**, i32*** %10, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @ngx_array_create(i32 %27, i32 4, i32 16)
  %29 = load i32**, i32*** %10, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32**, i32*** %10, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %34, i8** %4, align 8
  br label %77

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32**, i32*** %10, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = call %struct.TYPE_13__* @ngx_array_push(i32* %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %11, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = icmp eq %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %43, i8** %4, align 8
  br label %77

44:                                               ; preds = %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %9, align 8
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %44
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %12, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i8* (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*)*, i8* (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*)** %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %74 = call i8* %70(%struct.TYPE_14__* %71, %struct.TYPE_15__* %72, %struct.TYPE_13__* %73)
  store i8* %74, i8** %4, align 8
  br label %77

75:                                               ; preds = %44
  %76 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %76, i8** %4, align 8
  br label %77

77:                                               ; preds = %75, %64, %42, %33
  %78 = load i8*, i8** %4, align 8
  ret i8* %78
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
