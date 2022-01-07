; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_run_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_run_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i32, i32, i32, i32, i64 }
%struct.sockaddr = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ipv%d tx:%d gso:%d %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"(fail)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfg_do_setsockopt = common dso_local global i64 0, align 8
@SOL_UDP = common dso_local global i32 0, align 4
@UDP_SEGMENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"setsockopt udp segment\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"send succeeded while expecting failure\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"send failed while expecting success\00", align 1
@CONST_MSS_V4 = common dso_local global i32 0, align 4
@CONST_MSS_V6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"recv.%d: %d != %d\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"recv.%d: %d != %d (last)\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"recv: unexpected datagram\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.testcase*, i32, i32, %struct.sockaddr*, i32)* @run_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_one(%struct.testcase* %0, i32 %1, i32 %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca %struct.testcase*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.testcase* %0, %struct.testcase** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 6
  %24 = load %struct.testcase*, %struct.testcase** %6, align 8
  %25 = getelementptr inbounds %struct.testcase, %struct.testcase* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.testcase*, %struct.testcase** %6, align 8
  %28 = getelementptr inbounds %struct.testcase, %struct.testcase* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.testcase*, %struct.testcase** %6, align 8
  %31 = getelementptr inbounds %struct.testcase, %struct.testcase* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i8* %35)
  %37 = load %struct.testcase*, %struct.testcase** %6, align 8
  %38 = getelementptr inbounds %struct.testcase, %struct.testcase* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i64, i64* @cfg_do_setsockopt, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %5
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SOL_UDP, align 4
  %45 = load i32, i32* @UDP_SEGMENT, align 4
  %46 = call i64 @setsockopt(i32 %43, i32 %44, i32 %45, i32* %13, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %5
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.testcase*, %struct.testcase** %6, align 8
  %55 = getelementptr inbounds %struct.testcase, %struct.testcase* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.testcase*, %struct.testcase** %6, align 8
  %58 = getelementptr inbounds %struct.testcase, %struct.testcase* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @send_one(i32 %53, i32 %56, i32 %59, %struct.sockaddr* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load %struct.testcase*, %struct.testcase** %6, align 8
  %67 = getelementptr inbounds %struct.testcase, %struct.testcase* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65, %52
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load %struct.testcase*, %struct.testcase** %6, align 8
  %77 = getelementptr inbounds %struct.testcase, %struct.testcase* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75, %72
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %158

86:                                               ; preds = %82
  %87 = load %struct.testcase*, %struct.testcase** %6, align 8
  %88 = getelementptr inbounds %struct.testcase, %struct.testcase* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.testcase*, %struct.testcase** %6, align 8
  %93 = getelementptr inbounds %struct.testcase, %struct.testcase* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  br label %107

95:                                               ; preds = %86
  %96 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %97 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AF_INET, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @CONST_MSS_V4, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @CONST_MSS_V6, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %105, %91
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %126, %107
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.testcase*, %struct.testcase** %6, align 8
  %111 = getelementptr inbounds %struct.testcase, %struct.testcase* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @recv_one(i32 %115, i32 0)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %108

129:                                              ; preds = %108
  %130 = load %struct.testcase*, %struct.testcase** %6, align 8
  %131 = getelementptr inbounds %struct.testcase, %struct.testcase* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @recv_one(i32 %135, i32 0)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.testcase*, %struct.testcase** %6, align 8
  %139 = getelementptr inbounds %struct.testcase, %struct.testcase* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.testcase*, %struct.testcase** %6, align 8
  %146 = getelementptr inbounds %struct.testcase, %struct.testcase* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %142, %134
  br label %150

150:                                              ; preds = %149, %129
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @MSG_DONTWAIT, align 4
  %153 = call i32 @recv_one(i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %85, %156, %150
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @send_one(i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @recv_one(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
