; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c___system.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c___system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [108 x i8] c"Usage: =!cmd args\0A =!reset code\0A =!debugon\0A =!debugoff\0A =!runcode address\0A =!getdeviceid\0A =!getinformation\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"debugon\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"debugoff\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"runcode\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"getdeviceid\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"getinformation\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Try: '=!?'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_5__*, i8*)* @__system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__system(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %3
  store i8* null, i8** %4, align 8
  br label %115

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 63
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29, %20
  %40 = call i32 @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %115

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @r_str_startswith(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = icmp sgt i32 %47, 6
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = call i32 @strtoul(i8* %51, i32* null, i32 10)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @gprobe_reset(i32* %54, i32 %55)
  store i8* null, i8** %4, align 8
  br label %115

57:                                               ; preds = %45, %41
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @r_str_startswith(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @gprobe_debugon(i32* %63)
  store i8* null, i8** %4, align 8
  br label %115

65:                                               ; preds = %57
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @r_str_startswith(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @gprobe_debugoff(i32* %71)
  store i8* null, i8** %4, align 8
  br label %115

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @r_str_startswith(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = icmp sgt i32 %79, 8
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 8
  %84 = call i32 @strtoul(i8* %83, i32* null, i32 0)
  store i32 %84, i32* %10, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @gprobe_runcode(i32* %86, i32 %87)
  store i8* null, i8** %4, align 8
  br label %115

89:                                               ; preds = %77, %73
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @r_str_startswith(i8* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  store i64 0, i64* %11, align 8
  br label %94

94:                                               ; preds = %103, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %11, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %11, align 8
  %99 = trunc i64 %97 to i32
  %100 = call i32 @gprobe_getdeviceid(i32* %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %94

104:                                              ; preds = %94
  store i8* null, i8** %4, align 8
  br label %115

105:                                              ; preds = %89
  %106 = load i8*, i8** %7, align 8
  %107 = call i64 @r_str_startswith(i8* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @gprobe_getinformation(i32* %111)
  store i8* null, i8** %4, align 8
  br label %115

113:                                              ; preds = %105
  %114 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %115

115:                                              ; preds = %113, %109, %104, %81, %69, %61, %49, %39, %19
  %116 = load i8*, i8** %4, align 8
  ret i8* %116
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @gprobe_reset(i32*, i32) #1

declare dso_local i32 @gprobe_debugon(i32*) #1

declare dso_local i32 @gprobe_debugoff(i32*) #1

declare dso_local i32 @gprobe_runcode(i32*, i32) #1

declare dso_local i32 @gprobe_getdeviceid(i32*, i32) #1

declare dso_local i32 @gprobe_getinformation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
