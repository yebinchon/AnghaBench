; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_output.c_open_rotate.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_output.c_open_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.Output*, i32*)* }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@Output_Redis = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"redis: socket() failed to create socket\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"redis: connect() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"out: could not open file for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"appending\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@is_tx_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.Output*, i8*)* @open_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_rotate(%struct.Output* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Output*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  store %struct.Output* %0, %struct.Output** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.Output*, %struct.Output** %4, align 8
  %12 = getelementptr inbounds %struct.Output, %struct.Output* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.Output*, %struct.Output** %4, align 8
  %15 = getelementptr inbounds %struct.Output, %struct.Output* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @Output_Redis, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %2
  %20 = load %struct.Output*, %struct.Output** %4, align 8
  %21 = getelementptr inbounds %struct.Output, %struct.Output* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %67

26:                                               ; preds = %19
  %27 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 16, i1 false)
  %28 = load i32, i32* @AF_INET, align 4
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = call i64 @socket(i32 %28, i32 %29, i32 0)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #4
  unreachable

37:                                               ; preds = %26
  %38 = load %struct.Output*, %struct.Output** %4, align 8
  %39 = getelementptr inbounds %struct.Output, %struct.Output* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @htonl(i32 %41)
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.Output*, %struct.Output** %4, align 8
  %46 = getelementptr inbounds %struct.Output, %struct.Output* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i16
  %50 = call i32 @htons(i16 zeroext %49)
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @AF_INET, align 4
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %56 = call i32 @connect(i32 %54, %struct.sockaddr* %55, i32 16)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %37
  %60 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %37
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.Output*, %struct.Output** %4, align 8
  %65 = getelementptr inbounds %struct.Output, %struct.Output* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %19
  %68 = load %struct.Output*, %struct.Output** %4, align 8
  %69 = getelementptr inbounds %struct.Output, %struct.Output* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.Output*, i32*)*, i32 (%struct.Output*, i32*)** %71, align 8
  %73 = load %struct.Output*, %struct.Output** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 %72(%struct.Output* %73, i32* %76)
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %3, align 8
  br label %121

81:                                               ; preds = %2
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 45
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32*, i32** @stdout, align 8
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %93, %87, %81
  %96 = load i32*, i32** %6, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @pixie_fopen_shareable(i32** %6, i8* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32*, i32** %6, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104, %98
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %113 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @perror(i8* %114)
  store i32 1, i32* @is_tx_done, align 4
  store i32* null, i32** %3, align 8
  br label %121

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %95
  %118 = load %struct.Output*, %struct.Output** %4, align 8
  %119 = getelementptr inbounds %struct.Output, %struct.Output* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load i32*, i32** %6, align 8
  store i32* %120, i32** %3, align 8
  br label %121

121:                                              ; preds = %117, %107, %67
  %122 = load i32*, i32** %3, align 8
  ret i32* %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i32 @LOG(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @htons(i16 zeroext) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @pixie_fopen_shareable(i32**, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
