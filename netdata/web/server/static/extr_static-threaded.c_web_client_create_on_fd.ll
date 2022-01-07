; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_client_create_on_fd.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_client_create_on_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.web_client* (%struct.TYPE_3__*)* @web_client_create_on_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.web_client* @web_client_create_on_fd(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.web_client*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call %struct.web_client* (...) @web_client_get_from_cache_or_allocate()
  store %struct.web_client* %4, %struct.web_client** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.web_client*, %struct.web_client** %3, align 8
  %9 = getelementptr inbounds %struct.web_client, %struct.web_client* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load %struct.web_client*, %struct.web_client** %3, align 8
  %11 = getelementptr inbounds %struct.web_client, %struct.web_client* %10, i32 0, i32 6
  store i32 %7, i32* %11, align 4
  %12 = load %struct.web_client*, %struct.web_client** %3, align 8
  %13 = getelementptr inbounds %struct.web_client, %struct.web_client* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strncpyz(i32* %14, i32 %17, i32 7)
  %19 = load %struct.web_client*, %struct.web_client** %3, align 8
  %20 = getelementptr inbounds %struct.web_client, %struct.web_client* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncpyz(i32* %21, i32 %24, i32 7)
  %26 = load %struct.web_client*, %struct.web_client** %3, align 8
  %27 = getelementptr inbounds %struct.web_client, %struct.web_client* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strncpyz(i32* %28, i32 %31, i32 7)
  %33 = load %struct.web_client*, %struct.web_client** %3, align 8
  %34 = getelementptr inbounds %struct.web_client, %struct.web_client* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.web_client*, %struct.web_client** %3, align 8
  %44 = getelementptr inbounds %struct.web_client, %struct.web_client* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @strcpy(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.web_client*, %struct.web_client** %3, align 8
  %49 = getelementptr inbounds %struct.web_client, %struct.web_client* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.web_client*, %struct.web_client** %3, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @strcpy(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %47
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.web_client*, %struct.web_client** %3, align 8
  %67 = getelementptr inbounds %struct.web_client, %struct.web_client* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.web_client*, %struct.web_client** %3, align 8
  %69 = call i32 @web_client_initialize_connection(%struct.web_client* %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.web_client*, %struct.web_client** %3, align 8
  %74 = getelementptr inbounds %struct.web_client, %struct.web_client* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.web_client*, %struct.web_client** %3, align 8
  ret %struct.web_client* %75
}

declare dso_local %struct.web_client* @web_client_get_from_cache_or_allocate(...) #1

declare dso_local i32 @strncpyz(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @web_client_initialize_connection(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
