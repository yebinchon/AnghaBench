; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_test_sockets.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_test_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_test_sockets(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 -1, i32* %13, align 4
  %14 = bitcast %struct.sockaddr_in* %6 to i8*
  %15 = call i32 @memset(i8* %14, i32 0, i32 8)
  %16 = load i32, i32* @AF_INET, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @inet_addr(i8* %18)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  %30 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %31 = call i64 @bind(i32 %29, %struct.sockaddr* %30, i32 8)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %106

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %37 = call i64 @getsockname(i32 %35, %struct.sockaddr* %36, i32* %10)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %106

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @listen(i32 %41, i32 1)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %106

45:                                               ; preds = %40
  %46 = load i32, i32* @AF_INET, align 4
  %47 = load i32, i32* @SOCK_STREAM, align 4
  %48 = call i32 @socket(i32 %46, i32 %47, i32 0)
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %106

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @set_nb(i32 %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %106

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %93, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ true, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %94

70:                                               ; preds = %68
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @accept(i32 %71, i32* null, i32 0)
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EAGAIN, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %106

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %89 = call i64 @connect(i32 %87, %struct.sockaddr* %88, i32 8)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %106

92:                                               ; preds = %85, %82
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92
  br label %60

94:                                               ; preds = %68
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @set_nb(i32 %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @set_nb(i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %94
  br label %106

105:                                              ; preds = %99
  store i32 1, i32* %9, align 4
  br label %123

106:                                              ; preds = %104, %91, %81, %58, %53, %44, %39, %33
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @close(i32 %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @close(i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %105
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @close(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %27
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @set_nb(i32) #1

declare dso_local i32 @accept(i32, i32*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
