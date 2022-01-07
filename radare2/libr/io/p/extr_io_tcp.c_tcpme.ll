; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_tcp.c_tcpme.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_tcp.c_tcpme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Cannot listen\0A\00", align 1
@R_SOCKET_PROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Missing port.\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*)* @tcpme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tcpme(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 6
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %6, align 8
  store i32 404, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 58
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = call i32* @r_socket_new(i32 0)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @r_socket_listen(i32* %24, i8* %26, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = call i32 @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @r_socket_free(i32* %31)
  store i32* null, i32** %4, align 8
  br label %97

33:                                               ; preds = %22
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @r_socket_accept(i32* %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @r_socket_slurp(i32* %36, i32* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @r_socket_free(i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @r_socket_free(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32*, i32** %6, align 8
  store i32 200, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  store i32* %47, i32** %4, align 8
  br label %97

48:                                               ; preds = %33
  br label %96

49:                                               ; preds = %3
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32* null, i32** %4, align 8
  br label %97

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 58)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  store i8 0, i8* %61, align 1
  %63 = call i32* @r_socket_new(i32 0)
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* @R_SOCKET_PROTO_TCP, align 4
  %68 = call i64 @r_socket_connect(i32* %64, i8* %65, i8* %66, i32 %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %60
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @r_socket_slurp(i32* %71, i32* %72)
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @R_FREE(i32* %78)
  br label %82

80:                                               ; preds = %70
  %81 = load i32*, i32** %6, align 8
  store i32 200, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @r_socket_free(i32* %83)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32*, i32** %14, align 8
  store i32* %87, i32** %4, align 8
  br label %97

88:                                               ; preds = %60
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @r_socket_free(i32* %89)
  br label %93

91:                                               ; preds = %55
  %92 = call i32 @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @free(i8* %94)
  br label %96

96:                                               ; preds = %93, %48
  store i32* null, i32** %4, align 8
  br label %97

97:                                               ; preds = %96, %82, %54, %45, %29
  %98 = load i32*, i32** %4, align 8
  ret i32* %98
}

declare dso_local i32* @r_socket_new(i32) #1

declare dso_local i32 @r_socket_listen(i32*, i8*, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_socket_free(i32*) #1

declare dso_local i32* @r_socket_accept(i32*) #1

declare dso_local i32* @r_socket_slurp(i32*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @r_socket_connect(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @R_FREE(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
