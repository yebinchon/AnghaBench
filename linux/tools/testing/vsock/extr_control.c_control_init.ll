; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_control.c_control_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_control.c_control_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@control_fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Control socket connected to %s:%s.\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Control socket listening on %s:%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Control socket connection accepted...\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Control socket initialization failed.  Invalid address %s:%s?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @control_init(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast %struct.addrinfo* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 3
  %15 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %15, i32* %14, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @getaddrinfo(i8* %16, i8* %17, %struct.addrinfo* %7, %struct.addrinfo** %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @gai_strerror(i32 %23)
  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #4
  unreachable

28:                                               ; preds = %3
  %29 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %29, %struct.addrinfo** %9, align 8
  br label %30

30:                                               ; preds = %114, %28
  %31 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %32 = icmp ne %struct.addrinfo* %31, null
  br i1 %32, label %33, label %118

33:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  %34 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @socket(i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %114

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @connect(i32 %51, i32 %54, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %111

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* @control_fd, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %65)
  br label %118

67:                                               ; preds = %47
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SOL_SOCKET, align 4
  %70 = load i32, i32* @SO_REUSEADDR, align 4
  %71 = call i64 @setsockopt(i32 %68, i32 %69, i32 %70, i32* %12, i32 4)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = call i32 @exit(i32 %75) #4
  unreachable

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @bind(i32 %78, i32 %81, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %111

88:                                               ; preds = %77
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @listen(i32 %89, i32 1)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %111

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i32, i32* @stdout, align 4
  %98 = call i32 @fflush(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @accept(i32 %99, i32* null, i32 0)
  store i64 %100, i64* @control_fd, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i64, i64* @control_fd, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @EXIT_FAILURE, align 4
  %108 = call i32 @exit(i32 %107) #4
  unreachable

109:                                              ; preds = %93
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %118

111:                                              ; preds = %92, %87, %60
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @close(i32 %112)
  br label %114

114:                                              ; preds = %111, %46
  %115 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %115, i32 0, i32 5
  %117 = load %struct.addrinfo*, %struct.addrinfo** %116, align 8
  store %struct.addrinfo* %117, %struct.addrinfo** %9, align 8
  br label %30

118:                                              ; preds = %109, %61, %30
  %119 = load i64, i64* @control_fd, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = load i8*, i8** %4, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i8* %123, i8* %124)
  %126 = load i32, i32* @EXIT_FAILURE, align 4
  %127 = call i32 @exit(i32 %126) #4
  unreachable

128:                                              ; preds = %118
  %129 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %130 = call i32 @freeaddrinfo(%struct.addrinfo* %129)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @connect(i32, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @bind(i32, i32, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @accept(i32, i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
