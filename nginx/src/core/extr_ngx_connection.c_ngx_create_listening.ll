; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_create_listening.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_create_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_10__, %struct.sockaddr* }
%struct.TYPE_10__ = type { i64, %struct.sockaddr* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr = type { i32 }

@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@ngx_udp_rbtree_insert_value = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@NGX_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@NGX_INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@NGX_UNIX_ADDRSTRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @ngx_create_listening(%struct.TYPE_12__* %0, %struct.sockaddr* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca %struct.sockaddr, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call %struct.TYPE_11__* @ngx_array_push(i32* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %9, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = icmp eq %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = call i32 @ngx_memzero(%struct.TYPE_11__* %27, i32 80)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call %struct.sockaddr* @ngx_palloc(i32 %31, i64 %32)
  store %struct.sockaddr* %33, %struct.sockaddr** %10, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %35 = icmp eq %struct.sockaddr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %110

37:                                               ; preds = %26
  %38 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ngx_memcpy(%struct.sockaddr* %38, %struct.sockaddr* %39, i64 %40)
  %42 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 12
  store %struct.sockaddr* %42, %struct.sockaddr** %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %51 = call i64 @ngx_sock_ntop(%struct.sockaddr* %48, i64 %49, %struct.sockaddr* %17, i32 %50, i32 1)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 12
  %58 = load %struct.sockaddr*, %struct.sockaddr** %57, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %65 [
    i32 130, label %61
  ]

61:                                               ; preds = %37
  %62 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %37
  %66 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call %struct.sockaddr* @ngx_pnalloc(i32 %72, i64 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store %struct.sockaddr* %74, %struct.sockaddr** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.sockaddr*, %struct.sockaddr** %80, align 8
  %82 = icmp eq %struct.sockaddr* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %110

84:                                               ; preds = %69
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.sockaddr*, %struct.sockaddr** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @ngx_memcpy(%struct.sockaddr* %88, %struct.sockaddr* %17, i64 %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 10
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 9
  %95 = load i32, i32* @ngx_udp_rbtree_insert_value, align 4
  %96 = call i32 @ngx_rbtree_init(i32* %92, i32* %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 8
  store i64 -1, i64* %98, align 8
  %99 = load i32, i32* @SOCK_STREAM, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @NGX_LISTEN_BACKLOG, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  store i32 -1, i32* %106, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  store i32 -1, i32* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %110

110:                                              ; preds = %84, %83, %36, %25
  %111 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @ngx_array_push(i32*) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_11__*, i32) #2

declare dso_local %struct.sockaddr* @ngx_palloc(i32, i64) #2

declare dso_local i32 @ngx_memcpy(%struct.sockaddr*, %struct.sockaddr*, i64) #2

declare dso_local i64 @ngx_sock_ntop(%struct.sockaddr*, i64, %struct.sockaddr*, i32, i32) #2

declare dso_local %struct.sockaddr* @ngx_pnalloc(i32, i64) #2

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
