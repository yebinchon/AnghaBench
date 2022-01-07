; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_server_sockets.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_server_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to allocate memory for parsing server interface string\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c";,\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid IPV6 address: \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid port number: \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @server_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_sockets(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 1), align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 1), align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @server_socket(i8* %20, i32 %21, i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %116

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 1), align 8
  %28 = call i8* @strdup(i8* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %116

34:                                               ; preds = %26
  %35 = load i8*, i8** %11, align 8
  %36 = call i8* @strtok_r(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %110, %34
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %112

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 91
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 93)
  store i8* %48, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @free(i8* %55)
  store i32 1, i32* %4, align 4
  br label %116

57:                                               ; preds = %46
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %15, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %57, %40
  %64 = load i8*, i8** %12, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 58)
  store i8* %65, i8** %16, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i8*, i8** %16, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i8* @strchr(i8* %70, i8 signext 58)
  %72 = icmp eq i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73, %68
  %77 = load i8*, i8** %16, align 8
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %16, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @safe_strtol(i8* %80, i32* %13)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @free(i8* %87)
  store i32 1, i32* %4, align 4
  br label %116

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i8*, i8** %14, align 8
  store i8* %95, i8** %12, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i8*, i8** %12, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8* null, i8** %12, align 8
  br label %101

101:                                              ; preds = %100, %96
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @server_socket(i8* %102, i32 %103, i32 %104, i32* %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %101
  %111 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %111, i8** %12, align 8
  br label %37

112:                                              ; preds = %37
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %83, %51, %31, %19
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @server_socket(i8*, i32, i32, i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @safe_strtol(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
