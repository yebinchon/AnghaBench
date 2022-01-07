; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_optset.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_optset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_optset = type { i32 }
%struct.nn_sock = type { %struct.nn_optset** }
%struct.nn_transport = type { %struct.nn_optset* (...)* }

@NN_MAX_TRANSPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nn_optset* (%struct.nn_sock*, i32)* @nn_sock_optset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nn_optset* @nn_sock_optset(%struct.nn_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_optset*, align 8
  %4 = alloca %struct.nn_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_transport*, align 8
  store %struct.nn_sock* %0, %struct.nn_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 0, %8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NN_MAX_TRANSPORT, align 4
  %16 = icmp sge i32 %14, %15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @nn_slow(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.nn_optset* null, %struct.nn_optset** %3, align 8
  br label %81

23:                                               ; preds = %17
  %24 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %25 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %24, i32 0, i32 0
  %26 = load %struct.nn_optset**, %struct.nn_optset*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nn_optset*, %struct.nn_optset** %26, i64 %28
  %30 = load %struct.nn_optset*, %struct.nn_optset** %29, align 8
  %31 = icmp ne %struct.nn_optset* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @nn_fast(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %37 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %36, i32 0, i32 0
  %38 = load %struct.nn_optset**, %struct.nn_optset*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nn_optset*, %struct.nn_optset** %38, i64 %40
  %42 = load %struct.nn_optset*, %struct.nn_optset** %41, align 8
  store %struct.nn_optset* %42, %struct.nn_optset** %3, align 8
  br label %81

43:                                               ; preds = %23
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.nn_transport* @nn_global_transport(i32 %44)
  store %struct.nn_transport* %45, %struct.nn_transport** %7, align 8
  %46 = load %struct.nn_transport*, %struct.nn_transport** %7, align 8
  %47 = icmp ne %struct.nn_transport* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @nn_slow(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store %struct.nn_optset* null, %struct.nn_optset** %3, align 8
  br label %81

53:                                               ; preds = %43
  %54 = load %struct.nn_transport*, %struct.nn_transport** %7, align 8
  %55 = getelementptr inbounds %struct.nn_transport, %struct.nn_transport* %54, i32 0, i32 0
  %56 = load %struct.nn_optset* (...)*, %struct.nn_optset* (...)** %55, align 8
  %57 = icmp ne %struct.nn_optset* (...)* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @nn_slow(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store %struct.nn_optset* null, %struct.nn_optset** %3, align 8
  br label %81

63:                                               ; preds = %53
  %64 = load %struct.nn_transport*, %struct.nn_transport** %7, align 8
  %65 = getelementptr inbounds %struct.nn_transport, %struct.nn_transport* %64, i32 0, i32 0
  %66 = load %struct.nn_optset* (...)*, %struct.nn_optset* (...)** %65, align 8
  %67 = call %struct.nn_optset* (...) %66()
  %68 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %69 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %68, i32 0, i32 0
  %70 = load %struct.nn_optset**, %struct.nn_optset*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.nn_optset*, %struct.nn_optset** %70, i64 %72
  store %struct.nn_optset* %67, %struct.nn_optset** %73, align 8
  %74 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %75 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %74, i32 0, i32 0
  %76 = load %struct.nn_optset**, %struct.nn_optset*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nn_optset*, %struct.nn_optset** %76, i64 %78
  %80 = load %struct.nn_optset*, %struct.nn_optset** %79, align 8
  store %struct.nn_optset* %80, %struct.nn_optset** %3, align 8
  br label %81

81:                                               ; preds = %63, %62, %52, %35, %22
  %82 = load %struct.nn_optset*, %struct.nn_optset** %3, align 8
  ret %struct.nn_optset* %82
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local %struct.nn_transport* @nn_global_transport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
