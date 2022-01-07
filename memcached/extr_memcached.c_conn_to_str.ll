; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_conn_to_str.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_conn_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@conn_closed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"<closed>\00", align 1
@conn_listening = common dso_local global i64 0, align 8
@conn_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*)* @conn_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_to_str(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in6, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @conn_closed, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %96

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = bitcast i32* %28 to i8*
  %30 = bitcast i8* %29 to %struct.sockaddr*
  store %struct.sockaddr* %30, %struct.sockaddr** %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @conn_listening, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_UDP(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @conn_read, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42, %26
  store i32 4, i32* %9, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %53 = call i64 @getsockname(i32 %51, %struct.sockaddr* %52, i32* %9)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  store %struct.sockaddr* %56, %struct.sockaddr** %8, align 8
  br label %57

57:                                               ; preds = %55, %48
  br label %58

58:                                               ; preds = %57, %42, %36
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %65 = call i32 @get_conn_text(%struct.TYPE_4__* %59, i32 %62, i8* %63, %struct.sockaddr* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @conn_listening, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %58
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_UDP(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @conn_read, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77, %71
  store i32 4, i32* %11, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %88 = call i64 @getsockname(i32 %86, %struct.sockaddr* %87, i32* %11)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %94 = call i32 @get_conn_text(%struct.TYPE_4__* %89, i32 %91, i8* %92, %struct.sockaddr* %93)
  br label %95

95:                                               ; preds = %83, %77, %58
  br label %96

96:                                               ; preds = %95, %23
  br label %97

97:                                               ; preds = %96, %14
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @IS_UDP(i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @get_conn_text(%struct.TYPE_4__*, i32, i8*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
