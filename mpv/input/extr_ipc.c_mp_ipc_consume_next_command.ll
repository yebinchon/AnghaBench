; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc.c_mp_ipc_consume_next_command.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc.c_mp_ipc_consume_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i32 }
%struct.TYPE_9__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_ipc_consume_next_command(%struct.mpv_handle* %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.mpv_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i8*, align 8
  store %struct.mpv_handle* %0, %struct.mpv_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %13 = call i8* @talloc_new(i32* null)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @bstr_getline(i8* %16, %struct.TYPE_9__* %8)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @bstrto0(i8* %19, i8* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @talloc_steal(i8* %23, i8* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @bstrdup(i32* null, i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = bitcast %struct.TYPE_9__* %28 to i8*
  %34 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = call i32 @json_skip_whitespace(i8** %10)
  store i8* null, i8** %12, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %3
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %3
  br label %65

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 123
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i8* @json_execute_command(%struct.mpv_handle* %55, i8* %56, i8* %57)
  store i8* %58, i8** %12, align 8
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @text_execute_command(%struct.mpv_handle* %60, i8* %61, i8* %62)
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @talloc_steal(i8* %66, i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @talloc_free(i8* %69)
  %71 = load i8*, i8** %12, align 8
  ret i8* %71
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @bstr_getline(i8*, %struct.TYPE_9__*) #1

declare dso_local i8* @bstrto0(i8*, i8*) #1

declare dso_local i32 @talloc_steal(i8*, i8*) #1

declare dso_local i8* @bstrdup(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @json_skip_whitespace(i8**) #1

declare dso_local i8* @json_execute_command(%struct.mpv_handle*, i8*, i8*) #1

declare dso_local i8* @text_execute_command(%struct.mpv_handle*, i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
