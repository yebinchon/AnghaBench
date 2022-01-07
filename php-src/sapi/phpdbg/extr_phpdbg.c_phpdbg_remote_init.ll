; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg.c_phpdbg_remote_init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg.c_phpdbg_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Initializing connection on %s:%u failed\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"accepting connections on %s:%u\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"connection established from %s\00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16, i32, i32*, i32**)* @phpdbg_remote_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phpdbg_remote_init(i8* %0, i16 zeroext %1, i32 %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca i32, align 4
  %14 = alloca [20 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i16 %1, i16* %8, align 2
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32**, i32*** %11, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @phpdbg_remote_close(i32 %16, i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fileno(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = call i32 (i32, i8*, i8*, ...) @phpdbg_rlog(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load i32, i32* @FAILURE, align 4
  store i32 %29, i32* %6, align 4
  br label %73

30:                                               ; preds = %5
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fileno(i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i32
  %36 = call i32 (i32, i8*, i8*, ...) @phpdbg_rlog(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %35)
  store i32 4, i32* %13, align 4
  %37 = bitcast [20 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 20, i1 false)
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @memset(%struct.sockaddr_storage* %12, i32 0, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %42 = call i32 @accept(i32 %40, %struct.sockaddr* %41, i32* %13)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @AF_INET, align 4
  %45 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in*
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %48 = call i32 @inet_ntop(i32 %44, i32* %46, i8* %47, i32 20)
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fileno(i32 %49)
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %52 = call i32 (i32, i8*, i8*, ...) @phpdbg_rlog(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @fileno(i32 %55)
  %57 = call i32 @dup2(i32 %54, i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @stdin, align 4
  %61 = call i32 @fileno(i32 %60)
  %62 = call i32 @dup2(i32 %59, i32 %61)
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @setbuf(i32 %63, i32* null)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @fdopen(i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32**, i32*** %11, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @phpdbg_set_async_io(i32 %70)
  %72 = load i32, i32* @SUCCESS, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %30, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @phpdbg_remote_close(i32, i32*) #1

declare dso_local i32 @phpdbg_rlog(i32, i8*, i8*, ...) #1

declare dso_local i32 @fileno(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @phpdbg_set_async_io(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
