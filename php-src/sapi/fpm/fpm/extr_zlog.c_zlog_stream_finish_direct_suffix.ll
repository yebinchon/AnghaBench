; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_finish_direct_suffix.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_finish_direct_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, i8*, i32, i64, i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@zlog_limit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zlog_stream*)* @zlog_stream_finish_direct_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlog_stream_finish_direct_suffix(%struct.zlog_stream* %0) #0 {
  %2 = alloca %struct.zlog_stream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %2, align 8
  %5 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %6 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %11 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %13 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %18 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %23 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %24 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %27 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %22, i8* %25, i32 %28)
  %30 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %31 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %35 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %21, %16
  %39 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %40 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %112

43:                                               ; preds = %38
  %44 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %45 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %48 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = load i64, i64* @zlog_limit, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %43
  %54 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %55 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %3, align 8
  %57 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %58 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %61 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  %64 = add i64 %63, 1
  %65 = load i64, i64* @zlog_limit, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %4, align 8
  %67 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %68 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %69 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %72 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = sub i64 %73, %74
  %76 = call i32 @zlog_stream_direct_write_ex(%struct.zlog_stream* %67, i32* %70, i64 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %77 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %78 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %80 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %81 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %84 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @zlog_stream_prefix_ex(%struct.zlog_stream* %79, i32 %82, i32 %85)
  %87 = load i64, i64* %3, align 8
  %88 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %89 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %91 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %92 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %95 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = sub i64 %96, %97
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @zlog_stream_direct_write_ex(%struct.zlog_stream* %90, i32* %99, i64 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %111

102:                                              ; preds = %43
  %103 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %104 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %105 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %108 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @zlog_stream_direct_write_ex(%struct.zlog_stream* %103, i32* %106, i64 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %111

111:                                              ; preds = %102, %53
  br label %115

112:                                              ; preds = %38
  %113 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %114 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %115

115:                                              ; preds = %112, %111
  ret void
}

declare dso_local i32 @zlog_stream_direct_write(%struct.zlog_stream*, i8*, i32) #1

declare dso_local i32 @zlog_stream_direct_write_ex(%struct.zlog_stream*, i32*, i64, i8*, i32) #1

declare dso_local i32 @zlog_stream_prefix_ex(%struct.zlog_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
