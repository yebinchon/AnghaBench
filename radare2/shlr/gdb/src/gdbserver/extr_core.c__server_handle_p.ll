; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_p.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dr %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)*, i8*)* @_server_handle_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_p(%struct.TYPE_9__* %0, i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)* %1, i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast [128 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 128, i1 false)
  %13 = bitcast [128 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 128, i1 false)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i64 @send_ack(%struct.TYPE_9__* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %87

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @isxdigit(i32 %23) #4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 @send_msg(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %87

29:                                               ; preds = %18
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i32 @strtol(i32* %33, i32* null, i32 16)
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %54, %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @send_msg(%struct.TYPE_9__* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %4, align 4
  br label %87

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %35

57:                                               ; preds = %35
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @snprintf(i8* %58, i32 127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = call i32 @send_msg(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %87

72:                                               ; preds = %57
  %73 = load i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)*, i64 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %78 = call i64 %73(%struct.TYPE_9__* %74, i8* %75, i8* %76, i8* %77, i32 128)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = call i32 @send_msg(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %87

83:                                               ; preds = %72
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %86 = call i32 @send_msg(%struct.TYPE_9__* %84, i8* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %80, %69, %50, %26, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @send_ack(%struct.TYPE_9__*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #3

declare dso_local i32 @send_msg(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @strtol(i32*, i32*, i32) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
