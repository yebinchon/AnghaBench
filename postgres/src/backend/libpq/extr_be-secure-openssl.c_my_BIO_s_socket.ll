; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_my_BIO_s_socket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_my_BIO_s_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }

@my_bio_methods = common dso_local global %struct.TYPE_23__* null, align 8
@my_sock_read = common dso_local global i32 0, align 4
@my_sock_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* ()* @my_BIO_s_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @my_BIO_s_socket() #0 {
  %1 = alloca %struct.TYPE_23__*, align 8
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = load %struct.TYPE_23__*, %struct.TYPE_23__** @my_bio_methods, align 8
  %4 = icmp ne %struct.TYPE_23__* %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %0
  %6 = call i64 (...) @BIO_s_socket()
  %7 = inttoptr i64 %6 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %2, align 8
  %8 = call %struct.TYPE_23__* @malloc(i32 8)
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** @my_bio_methods, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** @my_bio_methods, align 8
  %10 = icmp ne %struct.TYPE_23__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %1, align 8
  br label %24

12:                                               ; preds = %5
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** @my_bio_methods, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %15 = call i32 @memcpy(%struct.TYPE_23__* %13, %struct.TYPE_23__* %14, i32 8)
  %16 = load i32, i32* @my_sock_read, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** @my_bio_methods, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @my_sock_write, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** @my_bio_methods, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %12, %0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** @my_bio_methods, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %1, align 8
  br label %24

24:                                               ; preds = %22, %11
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  ret %struct.TYPE_23__* %25
}

declare dso_local i64 @BIO_s_socket(...) #1

declare dso_local %struct.TYPE_23__* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
