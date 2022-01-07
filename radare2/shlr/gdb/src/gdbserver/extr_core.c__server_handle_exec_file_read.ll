; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_exec_file_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_exec_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"qXfer:exec-file:read:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"E00\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"if%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)*, i8*)* @_server_handle_exec_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_exec_file_read(%struct.TYPE_7__* %0, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)* %1, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast [64 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 64, i1 false)
  store i64 512, i64* %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = call i64 @send_ack(%struct.TYPE_7__* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 58
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strtol(i8* %31, i32* null, i32 16)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %30
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = call i32 @send_msg(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  br label %85

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 58)
  store i8* %47, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i32 @send_msg(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  br label %85

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @snprintf(i8* %55, i32 63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i64, i64* %11, align 8
  %59 = call i8* @malloc(i64 %58)
  store i8* %59, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = call i32 @send_msg(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %85

64:                                               ; preds = %52
  %65 = load i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)*, i64 (%struct.TYPE_7__*, i8*, i8*, i8*, i64)** %6, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 %65(%struct.TYPE_7__* %66, i8* %67, i8* %68, i8* %69, i64 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = call i32 @send_msg(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  br label %85

78:                                               ; preds = %64
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @send_msg(%struct.TYPE_7__* %79, i8* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %73, %61, %49, %41, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @send_ack(%struct.TYPE_7__*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @send_msg(%struct.TYPE_7__*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
