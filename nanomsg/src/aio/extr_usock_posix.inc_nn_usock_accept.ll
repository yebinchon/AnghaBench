; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_accept.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i64, i32, i32, i32, i32, i32, %struct.nn_usock*, i32 }

@NN_USOCK_ACTION_BEING_ACCEPTED = common dso_local global i32 0, align 4
@NN_USOCK_ACTION_ACCEPT = common dso_local global i32 0, align 4
@NN_USOCK_ACTION_DONE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ECONNABORTED = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@NN_USOCK_STATE_ACCEPTING_ERROR = common dso_local global i32 0, align 4
@NN_USOCK_ACCEPT_ERROR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i64 0, align 8
@SOCK_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_accept(%struct.nn_usock* %0, %struct.nn_usock* %1) #0 {
  %3 = alloca %struct.nn_usock*, align 8
  %4 = alloca %struct.nn_usock*, align 8
  %5 = alloca i32, align 4
  store %struct.nn_usock* %0, %struct.nn_usock** %3, align 8
  store %struct.nn_usock* %1, %struct.nn_usock** %4, align 8
  %6 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %7 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %6, i32 0, i32 4
  %8 = call i64 @nn_fsm_isidle(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %12 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %11, i32 0, i32 4
  %13 = call i32 @nn_fsm_start(i32* %12)
  %14 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %15 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %14, i32 0, i32 4
  %16 = load i32, i32* @NN_USOCK_ACTION_BEING_ACCEPTED, align 4
  %17 = call i32 @nn_fsm_action(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %20 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %19, i32 0, i32 4
  %21 = load i32, i32* @NN_USOCK_ACTION_ACCEPT, align 4
  %22 = call i32 @nn_fsm_action(i32* %20, i32 %21)
  %23 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %24 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @accept(i32 %25, i32* null, i32* null)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @nn_fast(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %18
  %33 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %34 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %33, i32 0, i32 6
  store %struct.nn_usock* null, %struct.nn_usock** %34, align 8
  %35 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %36 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %35, i32 0, i32 6
  store %struct.nn_usock* null, %struct.nn_usock** %36, align 8
  %37 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @nn_usock_init_from_fd(%struct.nn_usock* %37, i32 %38)
  %40 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %41 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %40, i32 0, i32 4
  %42 = load i32, i32* @NN_USOCK_ACTION_DONE, align 4
  %43 = call i32 @nn_fsm_action(i32* %41, i32 %42)
  %44 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %45 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %44, i32 0, i32 4
  %46 = load i32, i32* @NN_USOCK_ACTION_DONE, align 4
  %47 = call i32 @nn_fsm_action(i32* %45, i32 %46)
  br label %156

48:                                               ; preds = %18
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EAGAIN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EWOULDBLOCK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ECONNABORTED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENFILE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EMFILE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @ENOBUFS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @ENOMEM, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %68, %64, %60, %56, %52, %48
  %77 = phi i1 [ true, %68 ], [ true, %64 ], [ true, %60 ], [ true, %56 ], [ true, %52 ], [ true, %48 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @errno_assert(i32 %78)
  %80 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %81 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %80, i32 0, i32 6
  %82 = load %struct.nn_usock*, %struct.nn_usock** %81, align 8
  %83 = icmp ne %struct.nn_usock* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %86 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %85, i32 0, i32 6
  %87 = load %struct.nn_usock*, %struct.nn_usock** %86, align 8
  %88 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %89 = icmp eq %struct.nn_usock* %87, %88
  br label %90

90:                                               ; preds = %84, %76
  %91 = phi i1 [ true, %76 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @nn_assert(i32 %92)
  %94 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %95 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %96 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %95, i32 0, i32 6
  store %struct.nn_usock* %94, %struct.nn_usock** %96, align 8
  %97 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %98 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %97, i32 0, i32 6
  %99 = load %struct.nn_usock*, %struct.nn_usock** %98, align 8
  %100 = icmp ne %struct.nn_usock* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %103 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %102, i32 0, i32 6
  %104 = load %struct.nn_usock*, %struct.nn_usock** %103, align 8
  %105 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %106 = icmp eq %struct.nn_usock* %104, %105
  br label %107

107:                                              ; preds = %101, %90
  %108 = phi i1 [ true, %90 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @nn_assert(i32 %109)
  %111 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %112 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %113 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %112, i32 0, i32 6
  store %struct.nn_usock* %111, %struct.nn_usock** %113, align 8
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @EAGAIN, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %107
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EWOULDBLOCK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @ECONNABORTED, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i64, i64* @errno, align 8
  %127 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %128 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br label %131

131:                                              ; preds = %125, %121, %117, %107
  %132 = phi i1 [ false, %121 ], [ false, %117 ], [ false, %107 ], [ %130, %125 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @nn_slow(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load i64, i64* @errno, align 8
  %138 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %139 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @NN_USOCK_STATE_ACCEPTING_ERROR, align 4
  %141 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %142 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %144 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %143, i32 0, i32 4
  %145 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %146 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %145, i32 0, i32 3
  %147 = load i32, i32* @NN_USOCK_ACCEPT_ERROR, align 4
  %148 = call i32 @nn_fsm_raise(i32* %144, i32* %146, i32 %147)
  br label %156

149:                                              ; preds = %131
  %150 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %151 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %154 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %153, i32 0, i32 1
  %155 = call i32 @nn_worker_execute(i32 %152, i32* %154)
  br label %156

156:                                              ; preds = %149, %136, %32
  ret void
}

declare dso_local i64 @nn_fsm_isidle(i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

declare dso_local i32 @nn_fsm_action(i32*, i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_usock_init_from_fd(%struct.nn_usock*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_fsm_raise(i32*, i32*, i32) #1

declare dso_local i32 @nn_worker_execute(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
