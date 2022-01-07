; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_read_from_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_read_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_read_from_file(i8* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.buffer, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gc_arena*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %5, align 8
  %11 = bitcast %struct.buffer* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @platform_stat(i8* %13, %struct.TYPE_3__* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @platform_fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %50

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %29 = call i32 @alloc_buf_gc(i64 %27, %struct.gc_arena* %28)
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.buffer* %3 to i8*
  %32 = bitcast %struct.buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = call i32 @BPTR(%struct.buffer* %3)
  %34 = load i64, i64* %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @fread(i32 %33, i32 1, i64 %34, i32* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %41 = call i32 @free_buf_gc(%struct.buffer* %3, %struct.gc_arena* %40)
  br label %47

42:                                               ; preds = %23
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @buf_inc_len(%struct.buffer* %3, i64 %43)
  %45 = call i32 @ASSERT(i32 %44)
  %46 = call i32 @buf_null_terminate(%struct.buffer* %3)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @fclose(i32* %48)
  br label %50

50:                                               ; preds = %47, %22, %16
  %51 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @platform_stat(i8*, %struct.TYPE_3__*) #2

declare dso_local i32* @platform_fopen(i8*, i8*) #2

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @fread(i32, i32, i64, i32*) #2

declare dso_local i32 @BPTR(%struct.buffer*) #2

declare dso_local i32 @free_buf_gc(%struct.buffer*, %struct.gc_arena*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @buf_inc_len(%struct.buffer*, i64) #2

declare dso_local i32 @buf_null_terminate(%struct.buffer*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
