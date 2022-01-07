; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_run_one_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_run_one_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@rcv_fds = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to create epoll\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@N_LISTEN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register sock epoll\00", align 1
@do_rotate = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"epoll_wait failed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"failed to accept\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"failed epoll add\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"failed recv data\00", align 1
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"failed epoll del\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run_one_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_one_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.epoll_event, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i8], align 1
  store i32 %0, i32* %2, align 4
  store i32 10000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 50, i32* %8, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = load i32*, i32** @rcv_fds, align 8
  %15 = call i32 @build_rcv_fd(i32 %12, i32 %13, i32* %14)
  %16 = call i32 @epoll_create(i32 1)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @error(i32 1, i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @EPOLLIN, align 4
  %24 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %50, %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @N_LISTEN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i32*, i32** @rcv_fds, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %39 = load i32*, i32** @rcv_fds, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @epoll_ctl(i32 %37, i32 %38, i32 %43, %struct.epoll_event* %3)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @error(i32 1, i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %25

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %147, %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %150

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @SOCK_STREAM, align 4
  %61 = call i32 @connect_and_send(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i64, i64* @do_rotate, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = srem i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i32*, i32** @rcv_fds, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rotate_key(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @N_LISTEN, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81, %64, %58
  br label %83

83:                                               ; preds = %82, %119
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @epoll_wait(i32 %84, %struct.epoll_event* %3, i32 1, i32 -1)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 @error(i32 1, i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @is_listen_fd(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @accept(i32 %100, i32* null, i32* null)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @error(i32 1, i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @epoll_ctl(i32 %111, i32 %112, i32 %113, %struct.epoll_event* %3)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @errno, align 4
  %118 = call i32 @error(i32 1, i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %107
  br label %83

120:                                              ; preds = %91
  %121 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %125 = call i32 @recv(i32 %123, i8* %124, i32 1, i32 0)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @error(i32 1, i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %120
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %134 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @epoll_ctl(i32 %132, i32 %133, i32 %136, %struct.epoll_event* null)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @error(i32 1, i32 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %131
  %143 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %3, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @close(i32 %145)
  br label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @close(i32 %148)
  br label %54

150:                                              ; preds = %54
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %162, %150
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @N_LISTEN, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load i32*, i32** @rcv_fds, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @close(i32 %160)
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %151

165:                                              ; preds = %151
  ret void
}

declare dso_local i32 @build_rcv_fd(i32, i32, i32*) #1

declare dso_local i32 @epoll_create(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @connect_and_send(i32, i32) #1

declare dso_local i32 @rotate_key(i32) #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i64 @is_listen_fd(i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
