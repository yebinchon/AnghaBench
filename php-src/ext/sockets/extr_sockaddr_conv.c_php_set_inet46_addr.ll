; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_sockaddr_conv.c_php_set_inet46_addr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_sockaddr_conv.c_php_set_inet46_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"IP address used in the context of an unexpected type of socket\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_set_inet46_addr(%struct.TYPE_9__* %0, i32* %1, i8* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = call i64 @php_set_inet_addr(%struct.sockaddr_in6* %18, i8* %19, %struct.TYPE_8__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr_in6*
  %26 = call i32 @memcpy(%struct.TYPE_9__* %24, %struct.sockaddr_in6* %25, i32 4)
  %27 = load i64, i64* @AF_INET, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32*, i32** %7, align 8
  store i32 4, i32* %30, align 4
  store i32 1, i32* %5, align 4
  br label %36

31:                                               ; preds = %16
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @E_WARNING, align 4
  %34 = call i32 @php_error_docref(i32* null, i32 %33, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %31
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @php_set_inet_addr(%struct.sockaddr_in6*, i8*, %struct.TYPE_8__*) #2

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.sockaddr_in6*, i32) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
