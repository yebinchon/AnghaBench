; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_setup_sock.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_setup_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.hostent = type { i32, i32* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @setup_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sock(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.sockaddr_in* %6, i32 0, i32 16)
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %2
  %23 = load i8*, i8** @INADDR_ANY, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %58

26:                                               ; preds = %17
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @isdigit(i8 signext %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %35 = call i64 @inet_aton(i8* %33, %struct.TYPE_3__* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32, %26
  %38 = load i8*, i8** %4, align 8
  %39 = call %struct.hostent* @gethostbyname(i8* %38)
  store %struct.hostent* %39, %struct.hostent** %7, align 8
  %40 = icmp ne %struct.hostent* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %43 = load %struct.hostent*, %struct.hostent** %7, align 8
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hostent*, %struct.hostent** %7, align 8
  %49 = getelementptr inbounds %struct.hostent, %struct.hostent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(%struct.TYPE_3__* %42, i32 %47, i32 %50)
  br label %56

52:                                               ; preds = %37
  %53 = load i8*, i8** @INADDR_ANY, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %41
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* @AF_INET, align 4
  %60 = load i32, i32* @SOCK_STREAM, align 4
  %61 = call i32 @socket(i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %79

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %68 = call i64 @bind(i32 %66, %struct.sockaddr* %67, i32 16)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @listen(i32 %71, i32 5)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* %3, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %74, %63
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @inet_aton(i8*, %struct.TYPE_3__*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
