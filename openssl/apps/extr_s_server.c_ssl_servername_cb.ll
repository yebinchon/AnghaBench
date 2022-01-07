; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_server.c_ssl_servername_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_server.c_ssl_servername_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Hostname in TLS extension: \22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@ctx2 = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Switching server context.\0A\00", align 1
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @ssl_servername_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_servername_cb(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %16 = call i8* @SSL_get_servername(i32* %14, i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %10, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %48, %24
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8, i8* %31, align 1
  store i8 %33, i8* %11, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, -128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8, i8* %11, align 1
  %46 = call i64 @isprint(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %36
  %49 = phi i1 [ false, %36 ], [ %47, %44 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %39, i8* %51, i32 %53)
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %19, %3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %66, i32* %4, align 4
  br label %95

67:                                               ; preds = %60
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @strcasecmp(i8* %71, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %4, align 4
  br label %95

81:                                               ; preds = %70
  %82 = load i32*, i32** @ctx2, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** @ctx2, align 8
  %91 = call i32 @SSL_set_SSL_CTX(i32* %89, i32* %90)
  br label %92

92:                                               ; preds = %84, %81
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %77, %65
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i8* @SSL_get_servername(i32*, i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i64 @strcasecmp(i8*, i32*) #1

declare dso_local i32 @SSL_set_SSL_CTX(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
