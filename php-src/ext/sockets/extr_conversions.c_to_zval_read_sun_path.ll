; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_to_zval_read_sun_path.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_to_zval_read_sun_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"could not find a NUL in the path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @to_zval_read_sun_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_zval_read_sun_path(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_un*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %10, %struct.sockaddr_un** %7, align 8
  %11 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %12 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %13 = call i8* @memchr(i32* %12, i8 signext 0, i32 4)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @do_to_zval_err(i32* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %33

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i8*
  %28 = ptrtoint i8* %24 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ZVAL_STRINGL(i32* %20, i32 %23, i32 %31)
  br label %33

33:                                               ; preds = %19, %16
  ret void
}

declare dso_local i8* @memchr(i32*, i8 signext, i32) #1

declare dso_local i32 @do_to_zval_err(i32*, i8*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
