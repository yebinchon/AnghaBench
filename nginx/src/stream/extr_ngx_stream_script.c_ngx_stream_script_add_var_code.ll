; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_script.c_ngx_stream_script_add_var_code.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_script.c_ngx_stream_script_add_var_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_stream_script_copy_var_len_code = common dso_local global i64 0, align 8
@ngx_stream_script_copy_var_code = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*)* @ngx_stream_script_add_var_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_script_add_var_code(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @ngx_stream_get_variable_index(i32 %11, i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NGX_ERROR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %3, align 8
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64* @ngx_array_push(i32 %28)
  store i64* %29, i64** %7, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %3, align 8
  br label %75

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %19
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_5__* @ngx_stream_script_add_code(i32 %41, i32 16, i32* null)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = icmp eq %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @NGX_ERROR, align 8
  store i64 %46, i64* %3, align 8
  br label %75

47:                                               ; preds = %37
  %48 = load i64, i64* @ngx_stream_script_copy_var_len_code, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call %struct.TYPE_5__* @ngx_stream_script_add_code(i32 %59, i32 16, i32* %61)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = icmp eq %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = load i64, i64* @NGX_ERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %75

67:                                               ; preds = %47
  %68 = load i32, i32* @ngx_stream_script_copy_var_code, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* @NGX_OK, align 8
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %67, %65, %45, %32, %17
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i64 @ngx_stream_get_variable_index(i32, i32*) #1

declare dso_local i64* @ngx_array_push(i32) #1

declare dso_local %struct.TYPE_5__* @ngx_stream_script_add_code(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
