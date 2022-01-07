; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_vCont.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_vCont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"vCont;c;s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"action: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)*, i8*)* @_server_handle_vCont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_vCont(%struct.TYPE_7__* %0, i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)* %1, i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = call i64 @send_ack(%struct.TYPE_7__* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %79

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 5
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 63
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i32 @send_msg(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %79

31:                                               ; preds = %13
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strtok(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32 @send_msg(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @eprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %75 [
    i32 115, label %51
    i32 99, label %63
  ]

51:                                               ; preds = %44
  %52 = load i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)*, i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 %52(%struct.TYPE_7__* %53, i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = call i32 @send_msg(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %79

60:                                               ; preds = %51
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = call i32 @send_msg(%struct.TYPE_7__* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %62, i32* %4, align 4
  br label %79

63:                                               ; preds = %44
  %64 = load i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)*, i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 %64(%struct.TYPE_7__* %65, i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = call i32 @send_msg(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = call i32 @send_msg(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %44
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = call i32 @send_msg(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %75, %72, %69, %60, %57, %37, %28, %12
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @send_ack(%struct.TYPE_7__*) #1

declare dso_local i32 @send_msg(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
