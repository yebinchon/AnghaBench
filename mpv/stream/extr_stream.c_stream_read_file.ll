; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_read_file.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }
%struct.bstr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_read_file(i8* %0, i8* %1, %struct.mpv_global* %2, i32 %3) #0 {
  %5 = alloca %struct.bstr, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mpv_global*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bstr, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.mpv_global* %2, %struct.mpv_global** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.bstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.mpv_global*, %struct.mpv_global** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @mp_get_user_path(i32* null, %struct.mpv_global* %14, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.mpv_global*, %struct.mpv_global** %8, align 8
  %19 = call i32* @stream_open(i8* %17, %struct.mpv_global* %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32*, i32** %11, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @stream_read_complete(i32* %23, i8* %24, i32 %25)
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = bitcast %struct.bstr* %5 to i8*
  %29 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @free_stream(i32* %30)
  br label %32

32:                                               ; preds = %22, %4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @talloc_free(i8* %33)
  %35 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @mp_get_user_path(i32*, %struct.mpv_global*, i8*) #2

declare dso_local i32* @stream_open(i8*, %struct.mpv_global*) #2

declare dso_local i32 @stream_read_complete(i32*, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @free_stream(i32*) #2

declare dso_local i32 @talloc_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
