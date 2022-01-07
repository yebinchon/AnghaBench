; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sha1.c_nn_sha1_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sha1.c_nn_sha1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%struct.nn_sha1 = type { i8, i32*, i64, i64 }

@__const.nn_sha1_init.test = private unnamed_addr constant %union.anon { i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sha1_init(%struct.nn_sha1* %0) #0 {
  %2 = alloca %struct.nn_sha1*, align 8
  %3 = alloca %union.anon, align 4
  store %struct.nn_sha1* %0, %struct.nn_sha1** %2, align 8
  %4 = bitcast %union.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%union.anon* @__const.nn_sha1_init.test to i8*), i64 4, i1 false)
  %5 = bitcast %union.anon* %3 to [4 x i8]*
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %7 = load i8, i8* %6, align 4
  %8 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %9 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %8, i32 0, i32 0
  store i8 %7, i8* %9, align 8
  %10 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %11 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 1732584193, i32* %13, align 4
  %14 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %15 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 -271733879, i32* %17, align 4
  %18 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %19 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 -1732584194, i32* %21, align 4
  %22 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %23 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 271733878, i32* %25, align 4
  %26 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %27 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 -1009589776, i32* %29, align 4
  %30 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %31 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %33 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
