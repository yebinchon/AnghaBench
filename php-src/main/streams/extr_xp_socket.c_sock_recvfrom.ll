; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_sock_recvfrom.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_sock_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_CONN_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64, i32, i32**, %struct.sockaddr**, i32*)* @sock_recvfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_recvfrom(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 %3, i32** %4, %struct.sockaddr** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.sockaddr**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store %struct.sockaddr** %5, %struct.sockaddr*** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32**, i32*** %12, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load %struct.sockaddr**, %struct.sockaddr*** %13, align 8
  %23 = icmp ne %struct.sockaddr** %22, null
  br label %24

24:                                               ; preds = %21, %7
  %25 = phi i1 [ true, %7 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  store i32 4, i32* %18, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @XP_SOCK_BUF_SIZE(i64 %34)
  %36 = load i32, i32* %11, align 4
  %37 = bitcast i32* %17 to %struct.sockaddr*
  %38 = call i32 @recvfrom(i32 %32, i8* %33, i32 %35, i32 %36, %struct.sockaddr* %37, i32* %18)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @SOCK_CONN_ERR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %15, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ -1, %42 ], [ %44, %43 ]
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = bitcast i32* %17 to %struct.sockaddr*
  %51 = load i32, i32* %18, align 4
  %52 = load i32**, i32*** %12, align 8
  %53 = load %struct.sockaddr**, %struct.sockaddr*** %13, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @php_network_populate_name_from_sockaddr(%struct.sockaddr* %50, i32 %51, i32** %52, %struct.sockaddr** %53, i32* %54)
  br label %69

56:                                               ; preds = %45
  %57 = load i32**, i32*** %12, align 8
  %58 = icmp ne i32** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call i32* (...) @ZSTR_EMPTY_ALLOC()
  %61 = load i32**, i32*** %12, align 8
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.sockaddr**, %struct.sockaddr*** %13, align 8
  %64 = icmp ne %struct.sockaddr** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.sockaddr**, %struct.sockaddr*** %13, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %66, align 8
  %67 = load i32*, i32** %14, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %49
  br label %87

70:                                               ; preds = %24
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @XP_SOCK_BUF_SIZE(i64 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @recv(i32 %73, i8* %74, i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @SOCK_CONN_ERR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %15, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ -1, %82 ], [ %84, %83 ]
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %85, %69
  %88 = load i32, i32* %15, align 4
  ret i32 %88
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @XP_SOCK_BUF_SIZE(i64) #1

declare dso_local i32 @php_network_populate_name_from_sockaddr(%struct.sockaddr*, i32, i32**, %struct.sockaddr**, i32*) #1

declare dso_local i32* @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
