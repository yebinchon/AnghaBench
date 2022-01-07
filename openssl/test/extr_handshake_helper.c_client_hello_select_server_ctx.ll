; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_client_hello_select_server_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_client_hello_select_server_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@ex_data_idx = common dso_local global i32 0, align 4
@TLSEXT_TYPE_server_name = common dso_local global i32 0, align 4
@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"server2\00", align 1
@SSL_TEST_SERVERNAME_SERVER2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"server1\00", align 1
@SSL_TEST_SERVERNAME_SERVER1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @client_hello_select_server_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_hello_select_server_ctx(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @ex_data_idx, align 4
  %16 = call i64 @SSL_get_ex_data(i32* %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %12, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @TLSEXT_TYPE_server_name, align 4
  %20 = call i32 @SSL_client_hello_get0_ext(i32* %18, i32 %19, i8** %9, i64* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* %11, align 8
  %24 = icmp ule i64 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %129

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %9, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i64
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 2
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %129

44:                                               ; preds = %26
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %44
  store i32 0, i32* %4, align 4
  br label %129

56:                                               ; preds = %48
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ule i64 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %129

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i8, i8* %69, align 1
  %72 = zext i8 %71 to i64
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 2
  %77 = load i64, i64* %11, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %129

80:                                               ; preds = %62
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %11, align 8
  %82 = load i8*, i8** %9, align 8
  store i8* %82, i8** %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** %13, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @SSL_set_SSL_CTX(i32* %94, i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @SSL_clear_options(i32* %97, i32 -1)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @SSL_CTX_get_options(i32* %100)
  %102 = call i32 @SSL_set_options(i32* %99, i32 %101)
  %103 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER2, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  store i32 1, i32* %4, align 4
  br label %129

106:                                              ; preds = %86, %80
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i8*, i8** %8, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER1, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  store i32 1, i32* %4, align 4
  br label %129

119:                                              ; preds = %110, %106
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER1, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  store i32 1, i32* %4, align 4
  br label %129

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %122, %115, %91, %79, %61, %55, %43, %25
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @SSL_get_ex_data(i32*, i32) #1

declare dso_local i32 @SSL_client_hello_get0_ext(i32*, i32, i8**, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @SSL_set_SSL_CTX(i32*, i32*) #1

declare dso_local i32 @SSL_clear_options(i32*, i32) #1

declare dso_local i32 @SSL_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_get_options(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
