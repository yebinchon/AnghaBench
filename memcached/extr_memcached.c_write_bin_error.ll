; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_write_bin_error.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_write_bin_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Unknown command\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Not found\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid arguments\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Data exists for key.\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Too large.\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Non-numeric server-side value for incr or decr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Not stored.\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Auth failure.\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"UNHANDLED ERROR\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c">%d UNHANDLED ERROR: %d\0A\00", align 1
@settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c">%d Writing an error: %s\0A\00", align 1
@conn_mwrite = common dso_local global i32 0, align 4
@conn_swallow = common dso_local global i32 0, align 4
@conn_new_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i8*, i32)* @write_bin_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bin_error(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %23 [
    i32 132, label %14
    i32 128, label %15
    i32 130, label %16
    i32 133, label %17
    i32 131, label %18
    i32 134, label %19
    i32 135, label %20
    i32 129, label %21
    i32 136, label %22
  ]

14:                                               ; preds = %12
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %31

15:                                               ; preds = %12
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %31

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %31

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %31

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %31

19:                                               ; preds = %12
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %31

20:                                               ; preds = %12
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %31

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %31

22:                                               ; preds = %12
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %31

23:                                               ; preds = %12
  %24 = call i32 @assert(i32 0)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  %25 = load i32, i32* @stderr, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strlen(i8* %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @add_bin_header(%struct.TYPE_7__* %45, i32 %46, i32 0, i32 0, i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @add_iov(%struct.TYPE_7__* %52, i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = load i32, i32* @conn_mwrite, align 4
  %59 = call i32 @conn_set_state(%struct.TYPE_7__* %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @conn_swallow, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @conn_new_cmd, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %62
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @add_bin_header(%struct.TYPE_7__*, i32, i32, i32, i64) #1

declare dso_local i32 @add_iov(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
