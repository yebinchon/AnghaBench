; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_hexdump_connection.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_hexdump_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"<A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"C>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"XX\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = common dso_local global i32* null, align 8
@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_REMOTE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"%lu %p %s %s %s %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_hexdump_connection(%struct.mg_connection* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [60 x i8], align 16
  %13 = alloca [60 x i8], align 16
  %14 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %21 [
    i32 129, label %16
    i32 128, label %17
    i32 132, label %18
    i32 130, label %19
    i32 131, label %20
  ]

16:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %21

17:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %21

18:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %21

19:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %21

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %21

21:                                               ; preds = %5, %20, %19, %18, %17, %16
  %22 = load i8*, i8** %14, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %84

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32*, i32** @stdout, align 8
  store i32* %30, i32** %11, align 8
  br label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32*, i32** @stderr, align 8
  store i32* %36, i32** %11, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %84

42:                                               ; preds = %38
  %43 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %44 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %45 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %46 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @mg_conn_addr_to_str(%struct.mg_connection* %43, i8* %44, i32 60, i32 %47)
  %49 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %50 = getelementptr inbounds [60 x i8], [60 x i8]* %13, i64 0, i64 0
  %51 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %52 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MG_SOCK_STRINGIFY_REMOTE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @mg_conn_addr_to_str(%struct.mg_connection* %49, i8* %50, i32 60, i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 (...) @mg_time()
  %59 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %60 = bitcast %struct.mg_connection* %59 to i8*
  %61 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds [60 x i8], [60 x i8]* %13, i64 0, i64 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @fprintf(i32* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %58, i8* %60, i8* %61, i8* %62, i8* %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %42
  %69 = load i32*, i32** %11, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @mg_hexdumpf(i32* %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %42
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** @stdout, align 8
  %76 = icmp ne i32* %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** @stderr, align 8
  %80 = icmp ne i32* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @fclose(i32* %82)
  br label %84

84:                                               ; preds = %24, %41, %81, %77, %73
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mg_conn_addr_to_str(%struct.mg_connection*, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @mg_time(...) #1

declare dso_local i32 @mg_hexdumpf(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
