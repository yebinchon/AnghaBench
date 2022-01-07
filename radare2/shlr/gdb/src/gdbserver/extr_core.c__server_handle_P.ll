; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_P.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbserver/extr_core.c__server_handle_P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dr %s=0x%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)*, i8*)* @_server_handle_P to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_server_handle_P(%struct.TYPE_9__* %0, i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)* %1, i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = call i64 @send_ack(%struct.TYPE_9__* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %122

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @isxdigit(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 61)
  store i8* %29, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = call i32 @send_msg(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  br label %122

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @isxdigit(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = call i32 @send_msg(%struct.TYPE_9__* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  br label %122

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @strtol(i8* %48, i32* null, i32 16)
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %69, %44
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = call i32 @send_msg(%struct.TYPE_9__* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %4, align 4
  br label %122

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %81, %83
  %85 = add nsw i32 %84, 10
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i8* @calloc(i32 %86, i32 1)
  store i8* %87, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %72
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = call i32 @send_msg(%struct.TYPE_9__* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %91, i32* %4, align 4
  br label %122

92:                                               ; preds = %72
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @snprintf(i8* %93, i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %103, i8* %104)
  %106 = load i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)*, i64 (%struct.TYPE_9__*, i8*, i8*, i32*, i32)** %6, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 %106(%struct.TYPE_9__* %107, i8* %108, i8* %109, i32* null, i32 0)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %92
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = call i32 @send_msg(%struct.TYPE_9__* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %122

117:                                              ; preds = %92
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = call i32 @send_msg(%struct.TYPE_9__* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %112, %89, %65, %41, %31, %16
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @send_ack(%struct.TYPE_9__*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @send_msg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
