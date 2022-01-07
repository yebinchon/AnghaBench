; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_sin_addr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_sin_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"could not resolve address '%s' to get an AF_INET address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_4__*)* @from_zval_write_sin_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @from_zval_write_sin_addr(i32* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %11 = bitcast %struct.sockaddr_in* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @zval_get_tmp_string(i32* %12, i32** %10)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @ZSTR_VAL(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @php_set_inet_addr(%struct.sockaddr_in* %8, i32 %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %25 = call i32 @memcpy(i8* %23, i32* %24, i32 4)
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ZSTR_VAL(i32* %28)
  %30 = call i32 @do_from_zval_err(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @zend_tmp_string_release(i32* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #2

declare dso_local i32 @php_set_inet_addr(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @ZSTR_VAL(i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @do_from_zval_err(%struct.TYPE_4__*, i8*, i32) #2

declare dso_local i32 @zend_tmp_string_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
