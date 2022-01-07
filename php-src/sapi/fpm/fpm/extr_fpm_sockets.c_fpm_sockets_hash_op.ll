; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_hash_op.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_hash_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.listening_socket_s* }
%struct.listening_socket_s = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i8* }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@sockets_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, i8*, i32, i32)* @fpm_sockets_hash_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_sockets_hash_op(i32 %0, %struct.sockaddr* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_un*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.listening_socket_s*, align 8
  %15 = alloca %struct.listening_socket_s*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %54 [
    i32 132, label %20
    i32 131, label %40
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %22 = add nsw i32 %21, 10
  %23 = call i8* @alloca(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = call i32 @fpm_get_in_addr(%struct.sockaddr* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %31 = call i32 @inet_ntop(i32 %26, i32 %28, i8* %29, i32 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = call i32 @fpm_get_in_port(%struct.sockaddr* %37)
  %39 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %55

40:                                               ; preds = %18
  %41 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %42 = bitcast %struct.sockaddr* %41 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %42, %struct.sockaddr_un** %12, align 8
  %43 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %44 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = call i8* @alloca(i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %51 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcpy(i8* %49, i8* %52)
  br label %55

54:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %112

55:                                               ; preds = %40, %20
  br label %56

56:                                               ; preds = %55, %5
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %111 [
    i32 130, label %58
    i32 129, label %86
    i32 128, label %86
  ]

58:                                               ; preds = %56
  %59 = load %struct.listening_socket_s*, %struct.listening_socket_s** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sockets_list, i32 0, i32 1), align 8
  store %struct.listening_socket_s* %59, %struct.listening_socket_s** %14, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %80, %58
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sockets_list, i32 0, i32 0), align 8
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load %struct.listening_socket_s*, %struct.listening_socket_s** %14, align 8
  %66 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @strcmp(i32 %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = load %struct.listening_socket_s*, %struct.listening_socket_s** %14, align 8
  %73 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.listening_socket_s*, %struct.listening_socket_s** %14, align 8
  %77 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  br label %112

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = load %struct.listening_socket_s*, %struct.listening_socket_s** %14, align 8
  %84 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %83, i32 1
  store %struct.listening_socket_s* %84, %struct.listening_socket_s** %14, align 8
  br label %60

85:                                               ; preds = %60
  br label %111

86:                                               ; preds = %56, %56
  %87 = call %struct.listening_socket_s* @fpm_array_push(%struct.TYPE_3__* @sockets_list)
  store %struct.listening_socket_s* %87, %struct.listening_socket_s** %15, align 8
  %88 = load %struct.listening_socket_s*, %struct.listening_socket_s** %15, align 8
  %89 = icmp ne %struct.listening_socket_s* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %111

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 129
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.listening_socket_s*, %struct.listening_socket_s** %15, align 8
  %96 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  br label %100

97:                                               ; preds = %91
  %98 = load %struct.listening_socket_s*, %struct.listening_socket_s** %15, align 8
  %99 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.listening_socket_s*, %struct.listening_socket_s** %15, align 8
  %103 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.listening_socket_s*, %struct.listening_socket_s** %15, align 8
  %106 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strdup(i8* %107)
  %109 = load %struct.listening_socket_s*, %struct.listening_socket_s** %15, align 8
  %110 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %6, align 4
  br label %112

111:                                              ; preds = %56, %90, %85
  store i32 -1, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %100, %71, %54
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @fpm_get_in_addr(%struct.sockaddr*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fpm_get_in_port(%struct.sockaddr*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.listening_socket_s* @fpm_array_push(%struct.TYPE_3__*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
