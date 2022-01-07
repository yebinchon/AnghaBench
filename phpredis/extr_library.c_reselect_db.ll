; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_reselect_db.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_reselect_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"+OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @reselect_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reselect_db(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @redis_spprintf(%struct.TYPE_6__* %8, i32* null, i8** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @redis_sock_write(%struct.TYPE_6__* %13, i8* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @efree(i8* %19)
  store i32 -1, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @efree(i8* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i8* @redis_sock_read(%struct.TYPE_6__* %24, i32* %7)
  store i8* %25, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @efree(i8* %33)
  store i32 -1, i32* %2, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @efree(i8* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %32, %27, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @redis_spprintf(%struct.TYPE_6__*, i32*, i8**, i8*, i8*, i32) #1

declare dso_local i64 @redis_sock_write(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i8* @redis_sock_read(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
