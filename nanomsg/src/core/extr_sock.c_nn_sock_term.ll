; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { %struct.TYPE_6__**, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@NN_SOCKTYPE_FLAG_NORECV = common dso_local global i32 0, align 4
@NN_SOCKTYPE_FLAG_NOSEND = common dso_local global i32 0, align 4
@NN_MAX_TRANSPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_term(%struct.nn_sock* %0) #0 {
  %2 = alloca %struct.nn_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %2, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %7 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %6, i32 0, i32 5
  %8 = call i32 @nn_sem_wait(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EINTR, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @nn_slow(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %5

17:                                               ; preds = %5
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @errnum_assert(i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %36, %24
  %26 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %27 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %26, i32 0, i32 4
  %28 = call i32 @nn_sem_wait(i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @EINTR, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @nn_slow(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %25

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @errnum_assert(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %46 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %45, i32 0, i32 1
  %47 = call i32 @nn_ctx_enter(i32* %46)
  %48 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %49 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %48, i32 0, i32 1
  %50 = call i32 @nn_ctx_leave(i32* %49)
  %51 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %52 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %51, i32 0, i32 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NN_SOCKTYPE_FLAG_NORECV, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %44
  %60 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %61 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %60, i32 0, i32 9
  %62 = call i32 @nn_efd_term(i32* %61)
  br label %63

63:                                               ; preds = %59, %44
  %64 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %65 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %64, i32 0, i32 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %74 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %73, i32 0, i32 7
  %75 = call i32 @nn_efd_term(i32* %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %78 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %77, i32 0, i32 6
  %79 = call i32 @nn_fsm_stopped_noevent(i32* %78)
  %80 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %81 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %80, i32 0, i32 6
  %82 = call i32 @nn_fsm_term(i32* %81)
  %83 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %84 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %83, i32 0, i32 5
  %85 = call i32 @nn_sem_term(i32* %84)
  %86 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %87 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %86, i32 0, i32 4
  %88 = call i32 @nn_sem_term(i32* %87)
  %89 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %90 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %89, i32 0, i32 3
  %91 = call i32 @nn_list_term(i32* %90)
  %92 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %93 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %92, i32 0, i32 2
  %94 = call i32 @nn_list_term(i32* %93)
  %95 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %96 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %95, i32 0, i32 1
  %97 = call i32 @nn_ctx_term(i32* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %132, %76
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @NN_MAX_TRANSPORT, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %135

102:                                              ; preds = %98
  %103 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %104 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %102
  %112 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %113 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %114, i64 %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %121, align 8
  %123 = load %struct.nn_sock*, %struct.nn_sock** %2, align 8
  %124 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %125, i64 %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 %122(%struct.TYPE_6__* %129)
  br label %131

131:                                              ; preds = %111, %102
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %98

135:                                              ; preds = %98
  ret i32 0
}

declare dso_local i32 @nn_sem_wait(i32*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_ctx_enter(i32*) #1

declare dso_local i32 @nn_ctx_leave(i32*) #1

declare dso_local i32 @nn_efd_term(i32*) #1

declare dso_local i32 @nn_fsm_stopped_noevent(i32*) #1

declare dso_local i32 @nn_fsm_term(i32*) #1

declare dso_local i32 @nn_sem_term(i32*) #1

declare dso_local i32 @nn_list_term(i32*) #1

declare dso_local i32 @nn_ctx_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
