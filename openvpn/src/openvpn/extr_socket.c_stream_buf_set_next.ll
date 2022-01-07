; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_stream_buf_set_next.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_stream_buf_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_buf = type { i64, i64, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@D_STREAM_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"STREAM: SET NEXT, buf=[%d,%d] next=[%d,%d] len=%d maxlen=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_buf*)* @stream_buf_set_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_buf_set_next(%struct.stream_buf* %0) #0 {
  %2 = alloca %struct.stream_buf*, align 8
  store %struct.stream_buf* %0, %struct.stream_buf** %2, align 8
  %3 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %4 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %3, i32 0, i32 2
  %5 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %6 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %5, i32 0, i32 3
  %7 = bitcast %struct.TYPE_2__* %4 to i8*
  %8 = bitcast %struct.TYPE_2__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %10 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %14 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %12, %16
  %18 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %19 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %22 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %27 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %31 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  %35 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %36 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  %40 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %41 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load i32, i32* @D_STREAM_DEBUG, align 4
  %44 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %45 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %49 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %53 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %57 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %61 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %64 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dmsg(i32 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %51, i64 %55, i64 %59, i64 %62, i64 %65)
  %67 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %68 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %75 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %74, i32 0, i32 3
  %76 = load %struct.stream_buf*, %struct.stream_buf** %2, align 8
  %77 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @buf_safe(%struct.TYPE_2__* %75, i64 %79)
  %81 = call i32 @ASSERT(i32 %80)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dmsg(i32, i8*, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @buf_safe(%struct.TYPE_2__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
