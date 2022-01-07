; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_get_http_headers.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_get_http_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_http_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_http_headers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca [8192 x i8], align 16
  store i32* %0, i32** %3, align 8
  %6 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %10 = call i64 @php_stream_gets(i32* %8, i8* %9, i32 8192)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %14 = load i8, i8* %13, align 16
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %17
  %28 = call i32 @smart_str_0(%struct.TYPE_5__* %4)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %2, align 8
  br label %36

31:                                               ; preds = %22
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %33 = call i32 @smart_str_appends(%struct.TYPE_5__* %4, i8* %32)
  br label %7

34:                                               ; preds = %7
  %35 = call i32 @smart_str_free(%struct.TYPE_5__* %4)
  store i32* null, i32** %2, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @php_stream_gets(i32*, i8*, i32) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_5__*) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
