; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_pipe-posix.c_os_process_pipe_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_pipe-posix.c_os_process_pipe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_process_pipe = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.os_process_pipe* @os_process_pipe_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.os_process_pipe*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.os_process_pipe, align 8
  %7 = alloca %struct.os_process_pipe*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.os_process_pipe* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  store %struct.os_process_pipe* null, %struct.os_process_pipe** %3, align 8
  br label %40

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @popen(i8* %16, i8* %17)
  %19 = getelementptr inbounds %struct.os_process_pipe, %struct.os_process_pipe* %6, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 114
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.os_process_pipe, %struct.os_process_pipe* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.os_process_pipe, %struct.os_process_pipe* %6, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, inttoptr (i64 -1 to i32*)
  br i1 %28, label %33, label %29

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.os_process_pipe, %struct.os_process_pipe* %6, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %15
  store %struct.os_process_pipe* null, %struct.os_process_pipe** %3, align 8
  br label %40

34:                                               ; preds = %29
  %35 = call %struct.os_process_pipe* @bmalloc(i32 24)
  store %struct.os_process_pipe* %35, %struct.os_process_pipe** %7, align 8
  %36 = load %struct.os_process_pipe*, %struct.os_process_pipe** %7, align 8
  %37 = bitcast %struct.os_process_pipe* %36 to i8*
  %38 = bitcast %struct.os_process_pipe* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  %39 = load %struct.os_process_pipe*, %struct.os_process_pipe** %7, align 8
  store %struct.os_process_pipe* %39, %struct.os_process_pipe** %3, align 8
  br label %40

40:                                               ; preds = %34, %33, %14
  %41 = load %struct.os_process_pipe*, %struct.os_process_pipe** %3, align 8
  ret %struct.os_process_pipe* %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local %struct.os_process_pipe* @bmalloc(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
