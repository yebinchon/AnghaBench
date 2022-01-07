; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_prefix_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_prefix_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i8*, i32, i64, i64, i8*, i32, i64, i32, i32, %struct.TYPE_2__, i64, i64, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlog_stream_prefix_ex(%struct.zlog_stream* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %12 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

16:                                               ; preds = %3
  %17 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %18 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %23 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %29 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %32 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %21, %16
  %34 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %35 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %34, i32 0, i32 10
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %40 = call i32 @zlog_stream_buf_alloc(%struct.zlog_stream* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %135

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %47 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %50 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %54 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %58 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @zlog_buf_prefix(i8* %44, i32 %45, i32 %48, i8* %52, i32 %56, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %63 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %65 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %64, i32 0, i32 2
  store i64 %61, i64* %65, align 8
  %66 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %67 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %43
  %71 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %72 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %73 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %76 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %71, i8* %74, i32 %77)
  br label %79

79:                                               ; preds = %70, %43
  %80 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %81 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %86 = call i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %85, i8 signext 34)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %89 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %135

92:                                               ; preds = %33
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %96 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %99 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %100 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @zlog_buf_prefix(i8* %93, i32 %94, i32 %97, i8* %98, i32 1024, i32 %101)
  store i64 %102, i64* %8, align 8
  %103 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %105 = load i64, i64* %8, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %103, i8* %104, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %109 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %92
  %113 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %114 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %115 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %118 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %113, i8* %116, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %112, %92
  %124 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %125 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %130 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %87, %42, %15
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @zlog_stream_buf_alloc(%struct.zlog_stream*) #1

declare dso_local i64 @zlog_buf_prefix(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream*, i8*, i32) #1

declare dso_local i32 @zlog_stream_buf_copy_char(%struct.zlog_stream*, i8 signext) #1

declare dso_local i32 @zlog_stream_direct_write(%struct.zlog_stream*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
