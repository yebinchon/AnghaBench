; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_finish_buffer_suffix.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_finish_buffer_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, i64, i64, i32*, i64, i32, i32, i32* }

@zlog_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zlog_stream*)* @zlog_stream_finish_buffer_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlog_stream_finish_buffer_suffix(%struct.zlog_stream* %0) #0 {
  %2 = alloca %struct.zlog_stream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %2, align 8
  %5 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %6 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %11 = call i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %10, i8 signext 34)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %14 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %19 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %20 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %23 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %18, i32* %21, i64 %24)
  br label %26

26:                                               ; preds = %17, %12
  %27 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %28 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %106

31:                                               ; preds = %26
  %32 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %33 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %36 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = load i64, i64* @zlog_limit, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %31
  %42 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %43 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %3, align 8
  %45 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %46 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %49 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = add i64 %51, 1
  %53 = load i64, i64* @zlog_limit, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %4, align 8
  %55 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %56 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %57 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %60 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = sub i64 %61, %62
  %64 = call i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %55, i32* %58, i64 %63)
  %65 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %66 = call i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %65, i8 signext 10)
  %67 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %68 = call i32 @zlog_stream_buf_flush(%struct.zlog_stream* %67)
  %69 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %70 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %72 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %73 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %76 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @zlog_stream_prefix_ex(%struct.zlog_stream* %71, i32 %74, i32 %77)
  %79 = load i64, i64* %3, align 8
  %80 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %81 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %83 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %84 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %87 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %82, i32* %91, i64 %92)
  %94 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %95 = call i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %94, i8 signext 10)
  br label %105

96:                                               ; preds = %31
  %97 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %98 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %99 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %102 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %97, i32* %100, i64 %103)
  br label %105

105:                                              ; preds = %96, %41
  br label %106

106:                                              ; preds = %105, %26
  ret void
}

declare dso_local i32 @zlog_stream_buf_copy_char(%struct.zlog_stream*, i8 signext) #1

declare dso_local i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream*, i32*, i64) #1

declare dso_local i32 @zlog_stream_buf_flush(%struct.zlog_stream*) #1

declare dso_local i32 @zlog_stream_prefix_ex(%struct.zlog_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
