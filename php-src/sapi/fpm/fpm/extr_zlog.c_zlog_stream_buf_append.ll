; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_append.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, i64, i64, i8*, i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@zlog_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlog_stream*, i8*, i64)* @zlog_stream_buf_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlog_stream_buf_append(%struct.zlog_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %13 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %18 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %19 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %22 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @zlog_stream_prefix_ex(%struct.zlog_stream* %17, i32 %20, i32 %23)
  %25 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %26 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %29 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %32 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %36 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @zlog_limit, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  %46 = load i64, i64* @zlog_limit, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 %46, %47
  %49 = sub i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %52

50:                                               ; preds = %27
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %53, i8* %54, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %130

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %130

65:                                               ; preds = %59
  %66 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %67 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %72 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %77 = call i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %76, i8 signext 34)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %80 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %85 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %86 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %89 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %84, i8* %87, i64 %90)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %94 = call i32 @zlog_stream_buf_flush(%struct.zlog_stream* %93)
  %95 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %96 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %97 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %100 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @zlog_stream_prefix_ex(%struct.zlog_stream* %95, i32 %98, i32 %101)
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %108, %109
  %111 = call i32 @zlog_stream_buf_append(%struct.zlog_stream* %104, i8* %107, i64 %110)
  %112 = sext i32 %111 to i64
  %113 = add i64 %103, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %130

115:                                              ; preds = %65
  %116 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %117 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %121 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @zlog_truncate_buf(i32 %119, i64 %122, i32 0)
  %124 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %125 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %127 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %126, i32 0, i32 4
  store i32 1, i32* %127, align 8
  %128 = load i64, i64* %9, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %115, %92, %62, %58
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @zlog_stream_prefix_ex(%struct.zlog_stream*, i32, i32) #1

declare dso_local i64 @zlog_stream_buf_copy_cstr(%struct.zlog_stream*, i8*, i64) #1

declare dso_local i32 @zlog_stream_buf_copy_char(%struct.zlog_stream*, i8 signext) #1

declare dso_local i32 @zlog_stream_buf_flush(%struct.zlog_stream*) #1

declare dso_local i64 @zlog_truncate_buf(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
